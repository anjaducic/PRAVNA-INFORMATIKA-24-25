from datetime import datetime
import os
import xml.etree.ElementTree as ET
from html import escape


def format_date(date_str):
    try:
        
        date_str = date_str.strip()
        
        date_obj = datetime.strptime(date_str, "%Y-%m-%d")
        
        formatted_date = date_obj.strftime("%d. %B %Y")
        
        months = {
            "January": "Januar", "February": "Februar", "March": "Mart", "April": "April", 
            "May": "Maj", "June": "Jun", "July": "Jul", "August": "Avgust", 
            "September": "Septembar", "October": "Oktobar", "November": "Novembar", "December": "Decembar"
        }
        month_name = date_obj.strftime("%B")
        return formatted_date.replace(month_name, months.get(month_name, month_name))
    except ValueError as e:
        print(f"Greška u formatu datuma: {date_str}")  
        print(f"Detalj greške: {e}")
        return date_str


def xml_to_html(xml_file, output_html):

    namespaces = {'akn': 'http://docs.oasis-open.org/legaldocml/ns/akn/3.0/WD17'}

  
    tree = ET.parse(xml_file)
    root = tree.getroot()

    # frbr elem
    frbr_author = root.find(".//akn:FRBRauthor", namespaces).text if root.find(".//akn:FRBRauthor", namespaces) is not None else "Nepoznat autor"
    frbr_title = root.find(".//akn:FRBRtitle", namespaces).text if root.find(".//akn:FRBRtitle", namespaces) is not None else "Naslov nije dostupan"
    frbr_date = root.find(".//akn:FRBRdate", namespaces).text if root.find(".//akn:FRBRdate", namespaces) is not None else "Datum nije dostupan"

    frbr_date = format_date(frbr_date)
    # zaglavlje
    html_content = f"""
    <!DOCTYPE html>
    <html lang='en'>
    <head>
        <meta charset='UTF-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1.0'>
        <title>{escape(frbr_title)}</title>
        <style>
            body {{ font-family: Arial, sans-serif; line-height: 1.6; margin: 20px; }}
            h1, h4 {{ text-align: center; margin: 0; }}
            h4 {{ color: gray; }}
            h2 {{ color: navy; text-align: left; margin-top: 20px; }}
            p {{ text-align: justify; }}
            .centered {{ text-align: center; }}
        </style>
    </head>
    <body>
        <h4>{escape(frbr_author)}</h4>
        <h1>{escape(frbr_title)}</h1>
        <h4>{escape(frbr_date)}</h4>
        <br><br>
    """

    isJudgmentBody = False

   
    for child in root.findall(".//*", namespaces):
        tag_name = child.tag.split("}")[-1]  # uklanjanje namespacea
        text = child.text.strip() if child.text else ""

        if tag_name == "judgmentBody":
            isJudgmentBody = True

        if isJudgmentBody:
        # obrada tagova
            if tag_name in {"introduction", "background", "decision", "arguments"}:
                if text:
                    html_content += f"<p>{escape(text)}</p>"
            if tag_name == "conclusion":
                if text:
                    html_content += f"<p>{escape(text)}</p>"
            elif tag_name == "p":
                if text:
                    if child.attrib.get("class") == "subtitle":
                        html_content += f"<p class='centered'>{escape(text)}</p>"
                    else:
                        html_content += f"<br><br> {escape(text)}"
            elif tag_name in {"party", "organization"}:
                if text:
                    if child.attrib.get("class") == "subtitle":
                        html_content += f"<br><br><p class='centered'>{escape(text)}</p>"
                    else:
                        html_content += f" {escape(text)}"
            elif tag_name == "ref":
                href = child.attrib.get("href", "#")
                link_text = escape(child.text.strip()) if child.text else ""
                if href.startswith("/krivicni#"):
                    section_id = href.split("#")[-1]
                    html_content += f' <a href="krivicni.html#{section_id}" target="_blank">{link_text}</a> '
                else:
                    html_content += f' <a href="{escape(href)}" target="_blank">{link_text}</a> '
            else:
                #ako nema child, samo dodati text
                if len(child) == 0 and text:
                    html_content += f" {escape(text)}"
            
            # obrada tail teksta nakon tagova
            if child.tail:
                tail_text = child.tail.strip()
                if tail_text:
                    html_content += f" {escape(tail_text)}"

            

    
    html_content += """
    </body>
    </html>
    """

    
    with open(output_html, "w", encoding="utf-8") as f:
        f.write(html_content)


input_folder = "Verdicts/akoma-ntoso"
output_folder = "Verdicts/html"

if not os.path.exists(output_folder):
    os.makedirs(output_folder)

for filename in os.listdir(input_folder):
    if filename.endswith(".xml"):
        input_path = os.path.join(input_folder, filename)
        output_path = os.path.join(output_folder, filename.replace(".xml", ".html"))
        print(f"Obrada fajla: {filename}")
        try:
            xml_to_html(input_path, output_path)
            print(f"Generisan HTML: {output_path}")
        except Exception as e:
            print(f"Greska pri obradi fajla {filename}: {e}")