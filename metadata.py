import os
import xml.etree.ElementTree as ET
import pandas as pd
from openai import OpenAI

folder_path = "akomaNtoso"

metadata = []
columns = ["Presuda","Sud","Sudija","Zapisničar","Okrivljeni",
           "Zastupnik optužbe","Zastupnik okrivljene","Oštećeni",
           "Zakonski zastupnik","Ekspert","Učesnici","Organizacije","Datum"]

client = OpenAI(api_key="key")

prompt = """*<TEXT>*
            This is the text in akomaNtoso format. 'Presuda' means unique number of verdict. Return only extracted data, no label or metadata name, no "". Please return the following metadata as a line in csv file: 
            Presuda,Sud,Sudija,Zapisničar,Okrivljeni,Zastupnik optužbe,Zastupnik okrivljene,Oštećeni,Zakonski zastupnik,Ekspert,Učesnici,Organizacije,Datum
"""

def ask_gpt(prompt, model="gpt-4o-mini"):

    response = client.chat.completions.create(
        model=model,
        messages=[
            {"role": "system", "content": "Your job is to extract data from verdict in akomaNtoso format."},
            {"role": "user", "content": prompt}
        ],
    )

    return response.choices[0].message.content

def read_xml(file_path):
    with open(file_path, "r", encoding="utf-8") as f:
        xml_text = f.read()
        return xml_text

for filename in os.listdir(folder_path):
    if filename.endswith(".xml"):
        file_path = os.path.join(folder_path, filename)

        row_data = ask_gpt(prompt.replace('<TEXT>', read_xml(file_path)))
        row_values = [v.strip() for v in row_data.split(",")]

        row_dict = dict(zip(columns, row_values))
        metadata.append(row_dict)



df = pd.DataFrame(metadata, columns=columns)
df.to_csv("verdicts_metadata.csv", index=False, encoding="utf-8-sig")

print("Metadata saved")
