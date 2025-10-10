package com.example.pravnaInformatika.backend.Verdict.Service;

import com.example.pravnaInformatika.backend.Verdict.CBR.VerdictCBRService;
import com.example.pravnaInformatika.backend.Verdict.DTO.VerdictCreateDTO;
import com.example.pravnaInformatika.backend.Verdict.DTO.VerdictDTO;
import com.example.pravnaInformatika.backend.Verdict.DTO.VerdictMetadataDTO;
import com.example.pravnaInformatika.backend.Verdict.Model.Verdict;
import com.example.pravnaInformatika.backend.Verdict.Repository.VerdictRepository;
import es.ucm.fdi.gaia.jcolibri.exception.ExecutionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;
import java.io.BufferedWriter;
import java.io.FileWriter;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import com.openai.models.ChatModel;
import com.openai.models.chat.completions.ChatCompletion;
import com.openai.models.chat.completions.ChatCompletionCreateParams;
import com.openai.client.OpenAIClient;
import com.openai.client.okhttp.OpenAIOkHttpClient;

import java.io.IOException;

@Service
public class VerdictService {

    @Autowired
    private VerdictRepository verdictRepository;

    @Value("${api_key}")
    private String api_Key;

    @Autowired
    private VerdictCBRService verdictCBRService;
    private final ChatModel gpt_model = ChatModel.GPT_5_NANO;

    public List<Verdict> getAll() {

        return verdictRepository.findAll();

    }

    // Nova metoda za ucitavanje metapodataka iz CSV
    public List<VerdictMetadataDTO> getAllMetadata() throws IOException {
        ClassPathResource csvFile = new ClassPathResource("static/Verdicts/metadata/verdicts_metadata.csv");

        List<VerdictMetadataDTO> metadataList = new ArrayList<>();

        try (BufferedReader br = new BufferedReader(new InputStreamReader(csvFile.getInputStream()))) {
            String headerLine = br.readLine(); // header
            if (headerLine == null) return metadataList;

            String[] headers = headerLine.split(",", -1);

            String line;
            while ((line = br.readLine()) != null) {
                String[] values = line.split(",", -1);
                VerdictMetadataDTO dto = new VerdictMetadataDTO();
                dto.setCaseName(values[0]);
                dto.setCourt(values.length > 1 ? values[1] : "");
                dto.setJudge(values.length > 2 ? values[2] : "");
                dto.setClerk(values.length > 3 ? values[3] : "");
                dto.setDefendant(values.length > 4 ? values[4] : "");
                dto.setProsecutorAttorney(values.length > 5 ? values[5] : "");
                dto.setDefenseAttorney(values.length > 6 ? values[6] : "");
                dto.setInjuredParty(values.length > 7 ? values[7] : "");
                dto.setLegalRepresentative(values.length > 8 ? values[8] : "");
                dto.setExpert(values.length > 9 ? values[9] : "");
                dto.setParticipants(values.length > 10 ? values[10] : "");
                dto.setOrganizations(values.length > 11 ? values[11] : "");
                dto.setDate(values.length > 12 ? values[12] : "");

                metadataList.add(dto);
            }
        }
        return metadataList;
    }


    public VerdictDTO getAttributesByCaseName(String caseName) throws IOException {
        ClassPathResource csvFile = new ClassPathResource("static/Verdicts/Atributes.csv");

        try (BufferedReader br = new BufferedReader(new InputStreamReader(csvFile.getInputStream()))) {
            String headerLine = br.readLine(); // прва линија са именима колона
            if (headerLine == null) return null;

            String line;
            while ((line = br.readLine()) != null) {
                String[] values = line.split(",", -1);
                if (values.length > 0 && values[0].equalsIgnoreCase(caseName)) {
                    VerdictDTO dto = new VerdictDTO();
                    dto.setCaseName(values[0]);
                    dto.setAcknowledged(parseBoolean(values[1]));
                    dto.setConvicted(parseBoolean(values[2]));
                    dto.setFinancialStatus(values[3]);
                    dto.setMaintenance(parseBoolean(values[4]));
                    dto.setRepentance(parseBoolean(values[5]));
                    dto.setPreviousFamilyIssues(parseBoolean(values[6]));
                    dto.setInjuryType(values[7]);
                    dto.setCorrectBehavior(parseBoolean(values[8]));
                    dto.setInjuredCriminalProsecution(parseBoolean(values[9]));
                    dto.setPropertyClaim(parseBoolean(values[10]));
                    dto.setAccountability(values[11]);
                    dto.setIntentional(parseBoolean(values[12]));


                    return dto;
                }
            }
        }
        return null;
    }

    private Boolean parseBoolean(String value) {
        if (value == null || value.isEmpty()) return null;
        return value.equalsIgnoreCase("TRUE");
    }

    public String createVerdict(VerdictCreateDTO verdict) throws ExecutionException {
        //generate verdict text and save to xml and html file
        //return verdict html name
        if (verdict.getFoundGuilty())
            return generateVerdictText(verdict);
        else
            return generateReleaseVerdictText(verdict);
    }

    private String generateVerdictText(VerdictCreateDTO verdict) throws ExecutionException {
        OpenAIClient client = OpenAIOkHttpClient.builder()
                .apiKey(api_Key)
                .build();

        ChatCompletionCreateParams params = ChatCompletionCreateParams.builder()
                .addDeveloperMessage("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" +
                        "<akomaNtoso xmlns=\"http://docs.oasis-open.org/legaldocml/ns/akn/3.0/WD17\" \n" +
                        "             xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" \n" +
                        "             xsi:schemaLocation=\"http://docs.oasis-open.org/legaldocml/ns/akn/3.0/WD17 ../../schemas/akomantoso30.xsd\">\n" +
                        "  <judgment>\n" +
                        "    <meta>\n" +
                        "      <identification source=\"#court\">\n" +
                        "        <FRBRWork>\n" +
                        "          <FRBRauthor>Osnovni Sud u Bijelom Polju</FRBRauthor>\n" +
                        "          <FRBRdate date=\"2018-05-18\">2018-05-18</FRBRdate>\n" +
                        "          <FRBRtitle>K 85/2018</FRBRtitle>\n" +
                        "          <FRBRcountry>CG</FRBRcountry>\n" +
                        "        </FRBRWork>\n" +
                        "      </identification>\n" +
                        "      <references>\n" +
                        "        <TLCOrganization eId=\"os\" href=\"/ontology/organization/OsnovniSud.BijeloPolje\" showAs=\"Osnovni sud u Bijelom Polju\"/>\n" +
                        "        <TLCOrganization eId=\"odt\" href=\"/ontology/organization/OsnovnoDrzavnoTuzilastvo.BijeloPolje\" showAs=\"Osnovno državno tužilaštvo u Bijelom Polju\"/>\n" +
                        "        <TLCPerson eId=\"dmrdak\" href=\"/ontology/person/dmrdak\" showAs=\"Dragan Mrdak\"/>\n" +
                        "        <TLCPerson eId=\"kljesnjak\" href=\"/ontology/person/kljesnjak\" showAs=\"Koviljka Lješnjak\"/>\n" +
                        "        <TLCPerson eId=\"ms\" href=\"/ontology/person/ms\" showAs=\"M.S.\"/>\n" +
                        "        <TLCPerson eId=\"knezevic\" href=\"/ontology/person/knezevic\" showAs=\"Knežević Banka\"/>\n" +
                        "        <TLCPerson eId=\"alha\" href=\"/ontology/person/alha\" showAs=\"A.L.H.\"/>\n" +
                        "        <TLCPerson eId=\"ms_victim\" href=\"/ontology/person/ms_victim\" showAs=\"M.Š.\"/>\n" +
                        "        <TLCRole eId=\"defendant\" href=\"/ontology/role/defendant\" showAs=\"Defendant\"/>\n" +
                        "        <TLCRole eId=\"judge\" href=\"/ontology/role/judge\" showAs=\"Judge\"/>\n" +
                        "        <TLCRole eId=\"clerk\" href=\"/ontology/role/clerk\" showAs=\"Clerk\"/>\n" +
                        "        <TLCRole eId=\"lawyer\" href=\"/ontology/role/lawyer\" showAs=\"Lawyer\"/>\n" +
                        "        <TLCRole eId=\"victim\" href=\"/ontology/role/victim\" showAs=\"Victim\"/>\n" +
                        "        <TLCRole eId=\"plaintiff\" href=\"/ontology/role/plaintiff\" showAs=\"Plaintiff\"/>\n" +
                        "      </references>\n" +
                        "    </meta>\n" +
                        "    <judgmentBody>\n" +
                        "      <introduction>\n" +
                        "        <p>\n" +
                        "          <organization id=\"os\" refersTo=\"#os\">OSNOVNI SUD U BIJELOM POLJU</organization>, sudija pojedinac \n" +
                        "          <party id=\"dmrdak\" refersTo=\"#dmrdak\" as=\"#judge\">Dragan Mrdak</party>, uz učešće samostalnog referenta zapisničara \n" +
                        "          <party id=\"kljesnjak\" refersTo=\"#kljesnjak\" as=\"#clerk\">Koviljka Lješnjak</party>, rješavajući po optužnom predlogu \n" +
                        "          <organization id=\"odt\" refersTo=\"#odt\">Osnovno državno tužilaštvo u Bijelom Polju</organization>, Kt. br. 151/18 od 26.04.2018. godine, podnijetom protiv okrivljenog \n" +
                        "          <party id=\"ms\" refersTo=\"#ms\" as=\"#defendant\">M.S.a</party> iz B.P., zbog krivičnog djela nasilje u porodici ili porodičnoj zajednici iz \n" +
                        "          <ref href=\"/krivicni#art_220_para_3_veza_2_1\">čl. 220 stav 3. u vezi st.2 i 1 Krivičnog zakonika Crne Gore</ref>, nakon održanog glavnog i javnog pretresa, u prisustvu \n" +
                        "          <party id=\"knezevic\" refersTo=\"#knezevic\" as=\"#plaintiff\">Savjetnika u ODT-u u Bijelom Polju Knežević Banka</party>, okrivljenog \n" +
                        "          <party id=\"ms\" refersTo=\"#ms\" as=\"#defendant\">M.S.a</party>, njegovog branioca po službenoj dužnosti \n" +
                        "          <party id=\"alha\" refersTo=\"#alha\" as=\"#lawyer\">A.L.H.a</party> i oštećene \n" +
                        "          <party id=\"ms_victim\" refersTo=\"#ms_victim\" as=\"#victim\">M.Š.</party>, dana 18.05.2018. godine, donio je i objavio\n" +
                        "        </p>\n" +
                        "      </introduction>\n" +
                        "      <background>\n" +
                        "        <p class=\"subtitle\">P R E S U D U</p>\n" +
                        "        <p>\n" +
                        "          Okrivljeni <party id=\"ms\" refersTo=\"#ms\" as=\"#defendant\">M.S.</party> JMB …, od oca Š. i majke Š., rođene H., rođen … godine, u B.P., sa prebivalištem u mjestu rođenja, ul. N.M., opština B.P., državljanin Crne Gore, nezaposlen, neoženjen, pismen, sa završenom osnovnom školom, lošeg imovnog stanja, osuđivan presudom \n" +
                        "          <organization id=\"os\" refersTo=\"#os\">Osnovnog suda u Bijelom Polju</organization> K. br. 741/09 od 19.11.2009, zbog krivičnog djela iz \n" +
                        "          <ref href=\"/krivicni#art_220_para_1\">čl. 220.st.1 KZ CG</ref> na kaznu zatvora od tri mjeseca i presudom \n" +
                        "          <organization id=\"os\" refersTo=\"#os\">Osnovnog suda u Bijelom Polju</organization> K. br. 49/08 od 21.02.2008, zbog krivičnog djela iz \n" +
                        "          <ref href=\"/krivicni#art_220_para_2\">čl. 220 st.2 u vezi st.1 KZ CG</ref>, na kaznu zatvora od 3 (tri) mjeseca uslovno na jednu godinu.\n" +
                        "        </p>\n" +
                        "      </background>\n" +
                        "      <decision>\n" +
                        "        <p class=\"subtitle\">K r i v j e</p>\n" +
                        "        <p>\n" +
                        "          \"Dana 18.04.2018. godine oko 01:00 h, u ul. N.M., u Bijelom Polju, u porodičnom stanu, primjenom grubog nasilja narušio je tjelesni i duševni integritet člana svoje porodice, majci – oštećenoj \n" +
                        "          <party id=\"ms_victim\" refersTo=\"#ms_victim\" as=\"#victim\">M.Š.</party>, na način što je nogom udario u predjelu desne noge – stopala, a zatim je drvenom cjepanicom, sredstvom podobnim da tijelo teško povrijedi ili zdravlje teško naruši, udario u predjelu glave – nosa, nakon čega je ponovno udario nogom u predjelu desne noge – stopala, da bi istog dana oko 08:00 h, kada je oštećena ušla u stan, uputio joj riječi prijetnje \"ubiću te\", kojom prilikom joj je nanio tešku tjelesnu povredu u vidu krvnog podliva desnog stopala praćenog prelomom donjeg članka petog prsta desnog stopala, otoka i razderine u predjelu nosa, pri čemu je bio svjestan svog djela, njegove zabranjenosti i htio njegovo izvršenje.\"\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          – čime je izvršio krivično djelo nasilje u porodici ili u porodičnoj zajednici iz \n" +
                        "          <ref href=\"/krivicni#art_220_para_3_veza_2_1\">čl. 220 stav 3. u vezi st.2 i 1</ref> Krivičnog zakonika Crne Gore,\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          – za koje ga sud primjenom citiranog zakonskog propisa te čl. 2, 4, 5, 13, 15, 32, 36, 42, 45, 46 i čl. 51 Krivičnog zakonika te čl. 226, 229, i 374 Zakonika o krivičnom postupku,\n" +
                        "        </p>\n" +
                        "        <p class=\"subtitle\">O S U Đ U J E</p>\n" +
                        "        <p>\n" +
                        "          Na kaznu zatvora od 7 (sedam) mjeseci, u koju kaznu mu se kao izdržano uračunava vrijeme provedeno u pritvoru od 18.04.2018. do 18.05.2018. godine.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Okrivljeni se obavezuje da u roku od 15 dana od dana pravosnažnosti presude na ime paušala plati iznos od 30,00 €, kao i da plati iznos od 60,50 €, na ime troškova vještačenja, te troškove za branioca po službenoj dužnosti, o kojima će sudija odlučiti posebnim rješenjem, a koje će biti uplaćene na žiro račun br. 832-151-35 Depozita novčanih kazni, troškova postupka i paušala ovog suda, s tim što će dokaz o izvršenoj uplati biti dostavljen krivičnoj pisarnici ovog suda.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Imovinsko pravnog zahtjeva nije bilo.\n" +
                        "        </p>\n" +
                        "      </decision>\n" +
                        "      <arguments>\n" +
                        "        <p class=\"subtitle\">O b r a z l o ž e nj e</p>\n" +
                        "        <p>\n" +
                        "          Optužnim predlogom \n" +
                        "          <organization id=\"odt\" refersTo=\"#odt\">Osnovno državno tužilaštvo u Bijelom Polju</organization>, Kt. br.151/18 od 26.04.2018. godine, optužen je \n" +
                        "          <party id=\"ms\" refersTo=\"#ms\" as=\"#defendant\">M.S.</party> iz B.P., da je izvršio krivično djelo nasilje u porodici ili porodičnoj zajednici iz \n" +
                        "          <ref href=\"/krivicni#art_220_para_3_veza_2_1\">čl. 220 stav 3. u vezi st.2 i 1 Krivičnog zakonika Crne Gore</ref>.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Glavni pretres je održan i zaključen u prisustvu \n" +
                        "          <party id=\"knezevic\" refersTo=\"#knezevic\" as=\"#plaintiff\">Savjetnika u ODT-u u Bijelom Polju Knežević Banka</party>, okrivljenog \n" +
                        "          <party id=\"ms\" refersTo=\"#ms\" as=\"#defendant\">M.S.a</party>, njegovog branioca po službenoj dužnosti \n" +
                        "          <party id=\"alha\" refersTo=\"#alha\" as=\"#lawyer\">A.L.H.a</party> i oštećene \n" +
                        "          <party id=\"ms_victim\" refersTo=\"#ms_victim\" as=\"#victim\">M.Š.</party>.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Savjetnik u ODT-u u završnoj riječi ostao je pri podnijetom optužnom predlogu, predlažući da se okrivljeni oglasi krivim i osudi na kaznu po zakonu.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Oštećena M.Š. u završnoj riječi nije pristupila krivičnom gonjenju, već je istakla da joj je kao majci oprostila i tražila blaže kažnjavanje.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Okrivljeni M.S. u svojoj odbrani istakao je da je sa majkom i ostalim članovima porodice živeo u porodičnom stanu u ul. N.M. u B.P. i da je, kritičnog dana, u periodu od 12 do 20 h, sjedio kod komšije Z.D.a, gdje su konzumirali pivo. Kasnije je došao u porodični stan gdje je došlo do prepirke i svađe sa majkom – pri čemu je, navodno, bacio lonac s hranom na pod, a potom započeo nasilje prema majci. Okrivljeni je priznao djelo, izrazio iskreno kajanje, obećao da će se izviniti i da više neće vršiti nasilje, te je molio sud da mu izrekne blažu kaznu.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Branilac okrivljenog naglasio je da je okrivljeni priznao djelo i iskreno se kaje, te da je njegova majka prihvatila izvinjenje i zatražila blaže kažnjavanje, te da bi blaža kazna bila dovoljna za postizanje svrhe kažnjavanja.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          U završnoj riječi, okrivljeni je dodao da se kaje, obećava da će prestati s konzumacijom alkohola i nasiljem, te da će pomagati porodici, te je molio sud da ga što blaže kazni.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Radi utvrđivanja odlučnih činjenica i donošenja pravilne i zakonite odluke, sud je na glavnom pretresu izveo dokaze: saslušao svjedokinje – oštećenu M.Š. i maloljetnu A.A.; pročitao zapisnik o kontroli prisustva alkohola u organizmu Uprave policije – CB Bijelo Polje od 18.04.2018. godine, medicinsku dokumentaciju izdatu na ime oštećene M.Š. (nalaz i mišljenje vještaka dr. N.R. od 24.04.2018. godine) te izvršio uvid u izvod registra kaznene evidencije Ministarstva pravde (KE br. 176/2018 od 03.05.2018. godine). Predloga za izvođenje drugih dokaza nije bilo.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Cijeneći odbranu okrivljenog i dokaze pojedinačno i u međusobnoj vezi, a shodno čl. 370 Zakonika o krivičnom postupku Crne Gore, sud je utvrdio činjenično stanje i zaključio da je okrivljeni izvršio krivično djelo nasilje u porodici ili porodičnoj zajednici iz \n" +
                        "          <ref href=\"/krivicni#art_220_para_3_veza_2_1\">čl. 220 st.3 u vezi st.2 i 1 Krivičnog zakonika CG</ref> te da je za isto kriv.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Odbranu okrivljenog sud je cijenio kao jasno, potpuno i nedvosmisleno priznanje djela i krivice, potvrđeno svim izvedenim dokazima.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Iz iskaza oštećene M.Š. i svjedokinje A.A., kao i iz nalaza vještaka sudske medicine, sud je zaključio da su zadobijene povrede teške tjelesne povrede i da je izvršeno krivično djelo u punom smislu.\n" +
                        "        </p>\n" +
                        "      </arguments>\n" +
                        "    </judgmentBody>\n" +
                        "    <conclusions>\n" +
                        "      <organization class=\"subtitle\" id=\"os\" refersTo=\"#os\">OSNOVNI SUD U BIJELOM POLJU</organization>\n" +
                        "      <p class=\"subtitle\">Dana, 18.05.2018. godine</p>\n" +
                        "      <p>ZAPISNIČAR, S U D I J A,</p>\n" +
                        "      <p>\n" +
                        "        <party id=\"kljesnjak\" refersTo=\"#kljesnjak\" as=\"#clerk\">Koviljka Lješnjak</party>\n" +
                        "        <party id=\"dmrdak\" refersTo=\"#dmrdak\" as=\"#judge\">Dragan Mrdak</party>\n" +
                        "      </p>\n" +
                        "    </conclusions>\n" +
                        "  </judgment>\n" +
                        "</akomaNtoso>\n")
                .addDeveloperMessage("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" +
                        "<akomaNtoso xmlns=\"http://docs.oasis-open.org/legaldocml/ns/akn/3.0/WD17\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://docs.oasis-open.org/legaldocml/ns/akn/3.0/WD17 ../../schemas/akomantoso30.xsd \">\n" +
                        "    <judgment>\n" +
                        "        <meta>\n" +
                        "            <identification source=\"#court\">\n" +
                        "                <FRBRWork>\n" +
                        "                    <FRBRauthor>\n" +
                        "                        Osnovni Sud u Bijelom Polju \n" +
                        "                    </FRBRauthor>\n" +
                        "                    <FRBRdate date=\"2013-10-10\"> \n" +
                        "                        2013-10-10\n" +
                        "                    </FRBRdate>\n" +
                        "                    <FRBRtitle>                      \n" +
                        "                        K 200/2013\n" +
                        "                    </FRBRtitle>\n" +
                        "                    <FRBRcountry>\n" +
                        "                        CG\n" +
                        "                    </FRBRcountry>\n" +
                        "                </FRBRWork>\n" +
                        "            </identification>\n" +
                        "            <references>                   \n" +
                        "                <TLCOrganization eId=\"os\" href=\"/ontology/organization/OsnovniSud.BijeloPolje\" showAs=\"Osnovni sud u Bijelom Polju\" />\n" +
                        "                <TLCOrganization eId=\"odt\" href=\"/ontology/organization/OsnovnoDrzavnoTuzilastvo.BijeloPolje\" showAs=\"Osnovno državno tužilaštvo u Bijelom Polju\" />\n" +
                        "                <TLCPerson eId=\"iadamovic\" href=\"/ontology/person/iadamovic\" showAs=\"Ivan Adamović\" />\n" +
                        "                <TLCPerson eId=\"dboskovic\" href=\"/ontology/person/dboskovic\" showAs=\"Draginje Bošković\" />\n" +
                        "                <TLCPerson eId=\"gf\" href=\"/ontology/person/gf\" showAs=\"G.F.\" />\n" +
                        "                <TLCPerson eId=\"gm\" href=\"/ontology/person/gm\" showAs=\"G.M.\" />\n" +
                        "                <TLCPerson eId=\"dm\" href=\"/ontology/person/dm\" showAs=\"D.M.\" />\n" +
                        "                <TLCPerson eId=\"gk\" href=\"/ontology/person/gk\" showAs=\"G.K.\" />\n" +
                        "                <TLCPerson eId=\"sd\" href=\"/ontology/person/sd\" showAs=\"Š.D.\" />\n" +
                        "                <TLCRole eId=\"plaintiff\" href=\"/ontology/role/plaintiff\" showAs=\"Plaintiff\" />\n" +
                        "\t\t\t\t<TLCRole eId=\"defendant\" href=\"/ontology/role/defendant\" showAs=\"Defendant\" />\n" +
                        "\t\t\t\t<TLCRole eId=\"judge\" href=\"/ontology/role/judge\" showAs=\"Judge\" />\n" +
                        "\t\t\t\t<TLCRole eId=\"lawyer\" href=\"/ontology/role/lawyer\" showAs=\"Lawyer\" />\n" +
                        "\t\t\t\t<TLCRole eId=\"clerk\" href=\"/ontology/role/clerk\" showAs=\"Clerk\" />\n" +
                        "                <TLCRole eId=\"advisor\" href=\"/ontology/role/advisor\" showAs=\"Advisor\" />\n" +
                        "\t\t\t\t<TLCRole eId=\"victim\" href=\"/ontology/role/victim\" showAs=\"Victim\" />\n" +
                        "                <TLCRole eId=\"expertMedical\" href=\"/ontology/role/expertMedical\" showAs=\"Expert - medical\" />\n" +
                        "                </references> \n" +
                        "        </meta>\n" +
                        "        <judgmentBody>\n" +
                        "            <introduction>\n" +
                        "                <p id=\"subtitle\">\n" +
                        "                    U IME CRNE GORE\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    <organization id=\"os\" refersTo=\"#os\">\n" +
                        "                        OSNOVNI SUD U BIJELOM POLJU\n" +
                        "                    </organization>\n" +
                        "                    , sudija pojedinac\n" +
                        "                    <party id=\"iadamovic\" refersTo=\"#iadamovic\" as=\"#judge\">\n" +
                        "                        Ivan Adamović\n" +
                        "                    </party>\n" +
                        "                    , uz učešće zapisničara\n" +
                        "                    <party id=\"dboskovic\" refersTo=\"#dboskovic\" as=\"#clerk\">\n" +
                        "                        Draginje Bošković\n" +
                        "                    </party>\n" +
                        "                    , u krivičnom predmetu okrivljenog\n" +
                        "                    <party id=\"gf\" refersTo=\"#gf\" as=\"#defendant\">   \n" +
                        "                        G.F.a\n" +
                        "                    </party>\n" +
                        "                    , iz Bijelog Polja, zbog krivičnog djela nasilje u porodici ili u porodičnoj zajednici iz\n" +
                        "                    <ref href=\"/krivicni#art_220_para_1\"> \n" +
                        "                        čl. 220 st. 1 Krivičnog zakonika\n" +
                        "                    </ref> \n" +
                        "                    , po optužnom predlogu\n" +
                        "                    <organization id=\"odt\" refersTo=\"#odt\">\n" +
                        "                        Osnovnog državnog tužilaštva u Bijelom Polju\n" +
                        "                    </organization>\n" +
                        "                    , nakon održanog usmenog, glavnog i javnog pretresa, u prisustvu, savjetnika u\n" +
                        "                    <organization id=\"odt\" refersTo=\"#odt\">\n" +
                        "                        ODT-u u Bijelom Polju\n" +
                        "                    </organization>\n" +
                        "                    <party id=\"sd\" refersTo=\"#sd\" as=\"#advisor\">   \n" +
                        "                       Š.D.e\n" +
                        "                    </party>\n" +
                        "                    i okrivljenog\n" +
                        "                    <party id=\"gf\" refersTo=\"#gf\" as=\"#defendant\">   \n" +
                        "                        G.F.a\n" +
                        "                    </party>\n" +
                        "                    , 10. 10. 2013. godine, donio je i objavio,\n" +
                        "                </p>\n" +
                        "            </introduction>\n" +
                        "            <background>\n" +
                        "                <p id=\"subtitle\">\n" +
                        "                    P R E S U D U\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Okrivljeni\n" +
                        "                    <party id=\"gf\" refersTo=\"#gf\" as=\"#defendant\">   \n" +
                        "                        G.F.\n" +
                        "                    </party>\n" +
                        "                    , JMBG ..., od oca ... majke ..., rođene ..., rođen 09. 05. 1992 godine u Bijelom Polju, sa \n" +
                        "                    prebivalištem u Bijelom Polju, Loznice bb, drž. CG, završio SSS, oženjen, otac jednog djeteta, lošeg imovnog \n" +
                        "                    stanja, neosuđivan,\n" +
                        "                </p>\n" +
                        "            </background>\n" +
                        "            <decision>\n" +
                        "                <p id=\"subtitle\">\n" +
                        "                    K R I V J E\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    -Zato što je:\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Dana 23. 07. 2013 godine, oko 22:30h, u mjestu Loznice opština Bijelo Polje, u porodičnoj kući, vlasništvo G.\n" +
                        "                    H.e, primjenom grubog nasilja narušio tjelesni i duševni integritet, članu svoje porodice, supruzi oštećenoj\n" +
                        "                    <party id=\"gm\" refersTo=\"#gm\" as=\"#victim\">   \n" +
                        "                        G.M.i\n" +
                        "                    </party>\n" +
                        "                    , na način što je pesnicama izudarao u predjelu glave, da bi je kada je oštećena pokušala da pobjegne,\n" +
                        "                    sustigao na stepenicama i izudarao nogama u predjelu tijela-nogu, kojom prilikom joj je nanio lake tjelesne\n" +
                        "                    povrede, u vidu, nagnječno razderne rane u obliku slova »Y« dimenzija 1,5*1,5 cm, u predjelu čela, više\n" +
                        "                    oteklina na poglavini i dva crvenila sa otocima dimenzija 10*10cm, na spoljnim stranama obije butine,\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    -čime je izvršio krivično djelo nasilje u porodici ili u porodičnoj zajednici iz\n" +
                        "                    <ref href=\"/krivicni#art_220_para_1\">\n" +
                        "                        čl. 220 st. 1 Krivičnog zakonika\n" +
                        "                    </ref>\n" +
                        "                    , \n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    -pa mu sud, primjenom citiranih zakonskih propisa, te\n" +
                        "                     <ref href=\"/krivicni#art_2\">\n" +
                        "                        čl. 2,\n" +
                        "                    </ref>\n" +
                        "                    <ref href=\"/krivicni#art_4\">\n" +
                        "                        4,\n" +
                        "                    </ref>\n" +
                        "                    <ref href=\"/krivicni#art_5\">\n" +
                        "                        5,\n" +
                        "                    </ref>\n" +
                        "                    <ref href=\"/krivicni#art_13\">\n" +
                        "                        13,\n" +
                        "                    </ref>\n" +
                        "                    <ref href=\"/krivicni#art_15\">\n" +
                        "                        15,\n" +
                        "                    </ref>\n" +
                        "                    <ref href=\"/krivicni#art_32\">\n" +
                        "                        32,\n" +
                        "                    </ref>\n" +
                        "                    <ref href=\"/krivicni#art_36\">\n" +
                        "                        36,\n" +
                        "                    </ref>\n" +
                        "                    <ref href=\"/krivicni#art_52\">\n" +
                        "                        52,\n" +
                        "                    </ref>\n" +
                        "                    <ref href=\"/krivicni#art_53\">\n" +
                        "                        53,\n" +
                        "                    </ref>\n" +
                        "                    <ref href=\"/krivicni#art_54\">\n" +
                        "                        54 Krivičnog zakonika (Kz-a),\n" +
                        "                    </ref>\n" +
                        "                    i\n" +
                        "                    <ref href=\"/zkp#art_226\">\n" +
                        "                        čl. 226,\n" +
                        "                    </ref>\n" +
                        "                    <ref href=\"/zkp#art_229\">\n" +
                        "                        229,\n" +
                        "                    </ref><ref href=\"/zkp#art_374\">\n" +
                        "                        374 Zakonika o krivičnom postupku, (Zkp-a),\n" +
                        "                    </ref>\n" +
                        "                    i z r i č e,\n" +
                        "                </p>\n" +
                        "                <p id=\"subtitle\">\n" +
                        "                    USLOVNU OSUDU\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Kojom mu utvrđuje kaznu zatvora od 60 (šezdeset) dana, i istovremeno određuje da se ista neće izvršiti ako\n" +
                        "                    okrivljeni u roku od 1 (jedne) godine ne učini novo krivično djelo.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Okrivljeni se obavezuje da sudu plati na ime paušala iznos od 30,00 €, kao i na ime ostalih troškova krivičnog\n" +
                        "                    postupka iznos od 110,00€, koje iznose će uplatiti na račun Budžeta Crne Gore br: 832-151-35, u roku od 15\n" +
                        "                    dana, po pravosnažnosti presude, pod prijetnjom prinudnog izvršenja, s tim što je dokaz o uplati isih dužan\n" +
                        "                    dostaviti krivičnoj pisarnici ovog suda.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Imovinsko-pravnog zahtjeva nije bilo.\n" +
                        "                </p>\n" +
                        "            </decision>\n" +
                        "            <arguments>\n" +
                        "                <p id=\"subtitle\">\n" +
                        "                    O b r a z l o ž e nj e\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Optužnim predlogom\n" +
                        "                    <organization id=\"odt\" refersTo=\"#odt\">\n" +
                        "                        Osnovnog državnog tužilaštva u Bijelom Polju\n" +
                        "                    </organization>\n" +
                        "                    , \n" +
                        "                    <ref href=\"/cg/kt/2013-08-09/247_13\">\n" +
                        "                        Kt. br. 247/13 od 09. 08. 2013 godine\n" +
                        "                    </ref>\n" +
                        "                    , okrivljenom\n" +
                        "                    <party id=\"gf\" refersTo=\"#gf\" as=\"#defendant\">   \n" +
                        "                        G.F.u\n" +
                        "                    </party>\n" +
                        "                    iz Bijelog Polja, stavljeno je na teret izvršenje krivičnog djela nasilje u porodici ili u\n" +
                        "                    porodičnoj zajednici iz\n" +
                        "                    <ref href=\"/krivicni#art_220_para_1\">\n" +
                        "                        čl. 220 st. 1 Krivičnog zakonika\n" +
                        "                    </ref>\n" +
                        "                    .\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Glavni pretres je održan i zaključen u prisustvu savjetnika u\n" +
                        "                    <organization id=\"odt\" refersTo=\"#odt\">\n" +
                        "                        ODT-u u Bijelom Polju\n" +
                        "                    </organization>\n" +
                        "                    <party id=\"sd\" refersTo=\"#sd\" as=\"#advisor\">   \n" +
                        "                       D.e Š.\n" +
                        "                    </party>\n" +
                        "                    i okrivljenog \n" +
                        "                    <party id=\"gf\" refersTo=\"#gf\" as=\"#defendant\">   \n" +
                        "                        G. F.a\n" +
                        "                    </party>\n" +
                        "                    .\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    U završnoj riječi savjetnik u\n" +
                        "                     <organization id=\"odt\" refersTo=\"#odt\">\n" +
                        "                        ODT-u u Bijelom Polju\n" +
                        "                    </organization>\n" +
                        "                    je izjavila da ostaje pri optužnom predlogu i predložila je\n" +
                        "                    sudu da okrivljenog oglasi krivim i osudi na kaznu po zakonu.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Okrivljeni\n" +
                        "                    <party id=\"gf\" refersTo=\"#gf\" as=\"#defendant\">   \n" +
                        "                        G. F.\n" +
                        "                    </party>\n" +
                        "                    u svojoj odbrani tokom istražnog postupka u bitnom je naveo da je kritičnog dana sjedio kod\n" +
                        "                    druga u njegovoj firmi, kada je u njegovom telefonu otvorio poruke i vidio da mu je njegova - okrivljenog\n" +
                        "                    supruga slala poruke. Nakon ovoga, kako je naveo, izrevoltiran otišao je kući i pitao suprugu zbog čega je\n" +
                        "                    slala poruke, na šta mu je ona odgovorila da je pijan i da nije dobro vidio. Tada je on udario pesnicom u\n" +
                        "                    predjelu glave zbog čega je ona pala a zatim otvorenom šakom više puta je udario u predjelu lica, usled čega\n" +
                        "                    je počela da krvari.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Okrivljeni\n" +
                        "                    <party id=\"gf\" refersTo=\"#gf\" as=\"#defendant\">   \n" +
                        "                        G.\n" +
                        "                    </party>\n" +
                        "                    u svojoj odbrani na glavnom pretresu, izjasnio se da je izvršio sam krivično djelo koje mi je\n" +
                        "                    stavljeno na teret i da se osjeća krivim.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    U završnoj riječi okrivljeni je izjavio da priznaje izvršenje krivičnog djela koje mu je stavljeno na teret, izrazio\n" +
                        "                    je kajanje zbog učinjenog, i molio je sud da ga što blaže kazni.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Radi utvrđivanja odlučnih činjenica i krivice na strani okrivljenog, sud je na glavnom pretresu izveo dokaze:\n" +
                        "                    pročitao medicinsku dokumentaciju na ima oštećene\n" +
                        "                    <party id=\"gm\" refersTo=\"#gm\" as=\"#victim\">   \n" +
                        "                        G.M.e\n" +
                        "                    </party>\n" +
                        "                    , pročitao nalaz i mišljenje vještaka med. struke dr\n" +
                        "                    <party id=\"dm\" refersTo=\"#dm\" as=\"#expertMedical\">\n" +
                        "                        D.a M.a\n" +
                        "                    </party>\n" +
                        "                    i dr.\n" +
                        "                    <party id=\"gk\" refersTo=\"#gk\" as=\"#expertMedical\">\n" +
                        "                        G.e K.\n" +
                        "                    </party>\n" +
                        "                    i izvršio uvid u izvod iz KE na ime okrivljenog.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Cijeneći izvedene dokaze međusobno i ponaosob, te dovodeći ih u vezu jedne sa drugim, shodno\n" +
                        "                    <ref href=\"/zkp#art_370\">\n" +
                        "                        čl. 370 ZKP-a\n" +
                        "                    </ref>\n" +
                        "                    , sud je utvrdio činjenično stanje i po osnovu istog zaključio da je okrivljeni izvršio krivično djelo stavljeno\n" +
                        "                    mu na teret za koje je kriv.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Analizirajući priznanje okrivljenog sud isto cijeni kao potpuno i jasno priznanje izvršenja krivičnog djela\n" +
                        "                    stavljenog mu na teret.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Naime, okrivljeni je priznao da je kritičnog dana i vremena izudarao svoju suprugu i rukama i nogama, da je\n" +
                        "                    svjestan da joj je nanio tjelesne povrede, kao i da joj je narušio duševni integritet.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Priznanje okrivljenog potvrđeno je i izvedenim dokazima. Tako, iz medicinske dokumentacije na ime\n" +
                        "                    oštećene, te nalaza i mišljenja vještaka medicinske struke dr\n" +
                        "                    <party id=\"dm\" refersTo=\"#dm\" as=\"#expertMedical\">\n" +
                        "                        D.a M.a\n" +
                        "                    </party>\n" +
                        "                    , utvrđeno je da su kod oštećene\n" +
                        "                    <party id=\"gm\" refersTo=\"#gm\" as=\"#victim\">   \n" +
                        "                        G.M.e\n" +
                        "                    </party>\n" +
                        "                    , kliničkim pregledom, ustanovljene povrede i to nagnječno-razderna rana u obliku slova \"Y\" dužine 1,5 x 1,5\n" +
                        "                    cm, u predjelu čela, više oteklina na poglavini i na spoljašnjim stranama obje butine crvenila sa otokom\n" +
                        "                    veličine 10 x 10 cm, koje povrede, prema mišljenju vještaka\n" +
                        "                    <party id=\"dm\" refersTo=\"#dm\" as=\"#expertMedical\">\n" +
                        "                        M.a\n" +
                        "                    </party>\n" +
                        "                    , spadaju u lake tjelesne povrede.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Iz izvoda iz KE na ime okrivljenog utvrđeno je da isti do sada nije osuđivan.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Krivično djelo okrivljeni je izvršio s\n" +
                        "                    direktnim umišljajem, jer je djelo htio i svjesno nanio povrede oštećenoj, koja mu je supruga.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Odlučujući u pogledu vrste i visine krivične sankcije, sud je cijenio sve okolnosti iz\n" +
                        "                    <ref href=\"/krivicni#art_42\">\n" +
                        "                        čl. 42 Krivičnog zakonika\n" +
                        "                    </ref>\n" +
                        "                    , pa je na strani okrivljenog od olakšavajućih okolnosti našao: da se radi o porodičnoj osobi ocu jednog\n" +
                        "                    djeteta, licu koje do sada nije osuđavano, što ukazuje da nije sklon vršenju krivičnih djela, te da je okrivljeni\n" +
                        "                    priznao izvršenje krivičnog djela stavljenog mu na teret i da je izrazio kajanje zbog učinjenog, koje je po\n" +
                        "                    ocjeni ovog suda iskreno, pa je okrivljenom utvrdio kaznu zatvora od 60 (šezdeset) dana, pri tom cijeneći da\n" +
                        "                    bi pristupanje izvršenju kazne suviše represivno djelovalo na okrivljenog, nego da će i samo upozorenje, uz\n" +
                        "                    prijetnju kaznom, dovoljno uticati na istog da u buduće ne vrši ova i slična krivična djela i na taj način se\n" +
                        "                    ostvariti svrha uslovne osude predviđena u\n" +
                        "                    <ref href=\"/krivicni#art_52\">\n" +
                        "                        čl. 52\n" +
                        "                    </ref>\n" +
                        "                    u vezi\n" +
                        "                    <ref href=\"/krivicni#art_4_para_2\">\n" +
                        "                        čl. 4 st. 2 Krivičnog zakonika\n" +
                        "                    </ref>\n" +
                        "                    , i time ostvariti svrha\n" +
                        "                    generalne i specijalne prevencije.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Shodno \n" +
                        "                    <ref href=\"/zkp#art_226\">\n" +
                        "                        čl. 226\n" +
                        "                    </ref>\n" +
                        "                    i \n" +
                        "                    <ref href=\"/zkp#art_229\">\n" +
                        "                        229 ZKP-a\n" +
                        "                    </ref>\n" +
                        "                    , okrivljeni je obavezan na TEKST SANKCIJE" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Imovinsko-pravnog zahtjeva nije bilo.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Iz iznijetog, shodno\n" +
                        "                     <ref href=\"/zkp#art_374\">\n" +
                        "                        čl. 374 Zakonika o krivičnom postupku\n" +
                        "                    </ref>\n" +
                        "                    , odlučeno kao u izreci presude.\n" +
                        "                </p>\n" +
                        "            </arguments>\n" +
                        "        </judgmentBody>\n" +
                        "        <conclusions>\n" +
                        "            <organization class=\"subtitle\" id=\"os\" refersTo=\"#os\">\n" +
                        "                OSNOVNI SUD U BIJELOM POLJU\n" +
                        "            </organization>\n" +
                        "            <p id=\"subtitle\">\n" +
                        "                dana 10. 10. 2013 godine,\n" +
                        "            </p>\n" +
                        "            <p>\n" +
                        "                ZAPISNIČAR, S U D I J A,\n" +
                        "            </p>\n" +
                        "            <p>\n" +
                        "                <party id=\"dboskovic\" refersTo=\"#dboskovic\" as=\"#clerk\">\n" +
                        "                   Draginja Bošković\n" +
                        "                </party>\n" +
                        "                s.r.\n" +
                        "                <party id=\"iadamovic\" refersTo=\"#iadamovic\" as=\"#judge\">\n" +
                        "                    Ivan Adamović\n" +
                        "                </party>\n" +
                        "                s.r.\n" +
                        "            </p>\n" +
                        "        </conclusions>\n" +
                        "    </judgment>\n" +
                        "</akomaNtoso>\n")

                .addDeveloperMessage("This is the translation of parameters of verdict into Montenegrin: caseName = presuda;\n" +
                        "court = sud;\n" +
                        "judge = sudija;\n" +
                        "clerk = zapisničar;\n" +
                        "defendant = okrivljeni;\n" +
                        "prosecutorAttorney = zastupnik optužbe;\n" +
                        "defenseAttorney = zastupnik okrivljene;\n" +
                        "injuredParty = oštećeni;\n" +
                        "legalRepresentative = pravni zastupnik;\n" +
                        "expert = ekspert;\n" +
                        "participants = učesnici;\n" +
                        "organizations = organizacije;\n" +
                        "date = datum;\n" +
                        "acknowledged = priznao;\n" +
                        "convicted = osudjivan;\n" +
                        "financialStatus = materijalno stanje;\n" +
                        "maintenance = izdržavanje;\n" +
                        "repentance = kajanje;\n" +
                        "previousFamilyIssues = prethodni porodični problem;\n" +
                        "injuryType = tip povrede;\n" +
                        "correctBehavior = korektno držanje;\n" +
                        "injuredCriminalProsecution = oštećeni goni krivično;\n" +
                        "propertyClaim = imovinsko pravni zahtjev;\n" +
                        "accountability = uračunljivost;\n" +
                        "intentional = sa umišljajem;\n" +
                        "articleId = član zakona;\n"+
                        "paragraphId = stav zakona;\n" +
                        "penalty = sankcija")
                .addDeveloperMessage(" Write text in MONTENEGRIN language and use the legal terms translations I sent you. Write the text in Latin letters. Use formal and legal language format. Don't invent information that wasn't provided, including personal details and explanations. Do not put parameter values in parentheses; instead, describe them clearly in the text.")
                .addDeveloperMessage("Mention only law articles that are in violations and penalty for each. Mention them in verdict and put ref href to law document like in the verdicts I sent you. Example of format:  <ref href=\"/krivicni#art_216_para_1\">čl. 216 st. 1 Krivičnog zakonika</ref>")
                .addDeveloperMessage("Use all attributes and penalties I sent you in the verdict info.")
                .addUserMessage("Generate me a verdict in akomontoso format. RETURN ONLY XML FILE. Pay attention to use tags correctly! I sent you three examples of the format, use first as a model. Write text in MONTENEGRIN language and use the legal terms translations I sent you. Use formal and legal language format, just like in the examples. This is the data you should use when generating a verdict: " + verdict)
                .model(gpt_model)
                .build();

        ChatCompletion response = client.chat().completions().create(params);

        for (ChatCompletion.Choice ch : response.choices()) {
            ch.message().content().ifPresent(System.out::println);
        }
        String llmResponse = response.choices().isEmpty()
                ? ""
                : response.choices().get(0).message().content().orElse("");

        llmResponse = extractXmlBlock(llmResponse);
        String saveResult = saveXML(verdict.getCaseName(), llmResponse);
        String convertResult = convertXMLtoHTML(verdict.getCaseName());
        if (saveResult == null || convertResult == null) {return null;}

        verdictCBRService.addCaseToBase(convertToDTO(verdict));
        addToMetadata(verdict);
        addToAttributes(verdict);
        return convertResult;
    }

    private String generateReleaseVerdictText(VerdictCreateDTO verdict) throws ExecutionException {
        OpenAIClient client = OpenAIOkHttpClient.builder()
                .apiKey(api_Key)
                .build();

        ChatCompletionCreateParams params = ChatCompletionCreateParams.builder()
                .addDeveloperMessage("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" +
                        "<akomaNtoso xmlns=\"http://docs.oasis-open.org/legaldocml/ns/akn/3.0/WD17\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://docs.oasis-open.org/legaldocml/ns/akn/3.0/WD17 ../../schemas/akomantoso30.xsd \">\n" +
                        "    <judgment>\n" +
                        "        <meta>\n" +
                        "            <identification source=\"#court\">\n" +
                        "                <FRBRWork>\n" +
                        "                    <FRBRauthor>\n" +
                        "                        Osnovni Sud u Bijelom Polju \n" +
                        "                    </FRBRauthor>\n" +
                        "                    <FRBRdate date=\"2022-11-29\"> \n" +
                        "                        2022-11-29\n" +
                        "                    </FRBRdate>\n" +
                        "                    <FRBRtitle>                      \n" +
                        "                        K 91/2022\n" +
                        "                    </FRBRtitle>\n" +
                        "                    <FRBRcountry>\n" +
                        "                        CG\n" +
                        "                    </FRBRcountry>\n" +
                        "                </FRBRWork>\n" +
                        "            </identification>\n" +
                        "            <references>                    \n" +
                        "                <TLCOrganization eId=\"os\" href=\"/ontology/organization/OsnovniSud.BijeloPolje\" showAs=\"Osnovni sud u Bijelom Polju\" />\n" +
                        "                <TLCOrganization eId=\"odt\" href=\"/ontology/organization/OsnovnoDrzavnoTuzilastvo.BijeloPolje\" showAs=\"Osnovno državno tužilaštvo u Bijelom Polju\" />\n" +
                        "                <TLCPerson eId=\"bradovic\" href=\"/ontology/person/bradovic\" showAs=\"Bojana Radović,\" />\n" +
                        "                <TLCPerson eId=\"kljesnjak\" href=\"/ontology/person/kljesnjak\" showAs=\"Koviljka Lješnjak\" />\n" +
                        "                <TLCPerson eId=\"djm\" href=\"/ontology/person/djm\" showAs=\"Đ.M.\" />\n" +
                        "                <TLCPerson eId=\"djcmiljanic\" href=\"/ontology/person/djcmiljanic\" showAs=\"Đorđe Cmiljanić\" />\n" +
                        "                <TLCPerson eId=\"km\" href=\"/ontology/person/km\" showAs=\"K.M.\" />\n" +
                        "                <TLCPerson eId=\"dja\" href=\"/ontology/person/dja\" showAs=\"Đ.A.\" />\n" +
                        "                <TLCPerson eId=\"nr\" href=\"/ontology/person/nr\" showAs=\"N.R.\" />\n" +
                        "                <TLCPerson eId=\"kg\" href=\"/ontology/person/kg\" showAs=\"K.G.\" />\n" +
                        "                <TLCRole eId=\"adviser\" href=\"/ontology/role/adviser\" showAs=\"Adviser\" />\n" +
                        "                <TLCRole eId=\"plaintiff\" href=\"/ontology/role/plaintiff\" showAs=\"Plaintiff\" />\n" +
                        "\t\t\t\t<TLCRole eId=\"defendant\" href=\"/ontology/role/defendant\" showAs=\"Defendant\" />\n" +
                        "\t\t\t\t<TLCRole eId=\"judge\" href=\"/ontology/role/judge\" showAs=\"Judge\" />\n" +
                        "\t\t\t\t<TLCRole eId=\"lawyer\" href=\"/ontology/role/lawyer\" showAs=\"Lawyer\" />\n" +
                        "\t\t\t\t<TLCRole eId=\"clerk\" href=\"/ontology/role/clerk\" showAs=\"Clerk\" />\n" +
                        "\t\t\t\t<TLCRole eId=\"victim\" href=\"/ontology/role/victim\" showAs=\"Victim\" />\n" +
                        "                <TLCRole eId=\"expertMedical\" href=\"/ontology/role/expertMedical\" showAs=\"Expert - medical\" />\n" +
                        "                </references> \n" +
                        "        </meta>\n" +
                        "         <judgmentBody>\n" +
                        "            <introduction>\n" +
                        "                <p class=\"subtitle\">\n" +
                        "                    U IME CRNE GORE\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    <organization id=\"os\" refersTo=\"#os\">\n" +
                        "                        OSNOVNI SUD U BIJELOM POLJU\n" +
                        "                    </organization>\n" +
                        "                    , sudija \n" +
                        "                    <party id=\"bradovic\" refersTo=\"#bradovic\" as=\"#judge\">\n" +
                        "                        Bojana Radović\n" +
                        "                    </party>\n" +
                        "                    , uz učešće samostalnog referenta zapisničara\n" +
                        "                    <party id=\"kljesnjak\" refersTo=\"#kljesnjak\" as=\"#clerk\">\n" +
                        "                        Koviljke Lješnjak\n" +
                        "                    </party>\n" +
                        "                    , u krivičnom predmetu protiv okrivljenog \n" +
                        "                    <party id=\"djm\" refersTo=\"#djm\" as=\"#defendant\">   \n" +
                        "                        Đ.M. \n" +
                        "                    </party>\n" +
                        "                    iz Bijelog Polja, zbog krivičnog djela nasilje u porodici ili u porodičnoj zajednici iz \n" +
                        "                    <ref href=\"/krivicni#art_220_para_1\">\n" +
                        "                        člana 220 stav 1 Krivičnog zakonika Crne Gore\n" +
                        "                    </ref>\n" +
                        "                    , nakon održanog\n" +
                        "                    glavnog i javnog pretresa, u prisustvu savjetnika u \n" +
                        "                    <organization id=\"odt\" refersTo=\"#odt\">\n" +
                        "                        Osnovnom državnom tužilaštvu u Bijelom, \n" +
                        "                    </organization>\n" +
                        "                    <party id=\"djcmiljanic\" refersTo=\"#djcmiljanic\" as=\"#plaintiff\">   \n" +
                        "                        Đorđija Cmiljanića\n" +
                        "                    </party>\n" +
                        "                    , okrivljenog \n" +
                        "                    <party id=\"djm\" refersTo=\"#djm\" as=\"#defendant\">   \n" +
                        "                        Đ.M. \n" +
                        "                    </party>\n" +
                        "                    i branioca okrivljenog advokata \n" +
                        "                    <party id=\"km\" refersTo=\"#km\" as=\"#lawyer\">   \n" +
                        "                        K.M. \n" +
                        "                    </party>\n" +
                        "                    , dana 29.11.2022. godine, donio je i javno objavio,\n" +
                        "                </p>\n" +
                        "            </introduction>\n" +
                        "            <background>\n" +
                        "                <p class=\"subtitle\"> \n" +
                        "                    P R E S U D U \n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Okrivljeni \n" +
                        "                    <party id=\"djm\" refersTo=\"#djm\" as=\"#defendant\">   \n" +
                        "                        Đ.M. \n" +
                        "                    </party>\n" +
                        "                    , JMB ........., od oca ... i majke ..., rođene ...., rođen ........ godine u .... sa prebivalištem u\n" +
                        "                    opština ...., oženjen, otac petoro djece, pismen, sa završenom srednjom trgovačkom školom, srednjeg\n" +
                        "                    imovnog stanja., osuđivan,\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Na osnovu \n" +
                        "                    <ref href=\"/zkp#art_373_para_1\">\n" +
                        "                        čl. 373 st. 1 tač. 2 Zakonika o krivičnom postupku,\n" +
                        "                    </ref>\n" +
                        "                </p>\n" +
                        "            </background>\n" +
                        "            <decision>\n" +
                        "                <p class=\"subtitle\">\n" +
                        "                    OSLOBAĐA SE OD OPTUŽBE\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Kojom je predstavljano da je:\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Dana 29.05.2022. godine, oko 23:00 časa, u porodičnoj kući, koja se nalazi u u naselju P., opština B.P., svjestan\n" +
                        "                    svog djela čije je izvršenje htio, znajući da je isto zabranjeno, primjenom grubog nasilja narušio tjelesni i\n" +
                        "                    duševni integritet člana svoje porodice – kćerke \n" +
                        "                    <party id=\"dja\" refersTo=\"#dja\" as=\"#victim\">   \n" +
                        "                        Đ.A.\n" +
                        "                    </party>\n" +
                        "                    , na način što je pozvao mobilnim telefonom dok se\n" +
                        "                    nalazila na proslavi mature i uputio joj riječi: “Sad da si došla kući, šta si mi uradila, sa kim si šetala večeras, ti\n" +
                        "                    mene da brukaš“, da bi nakon što je oštećena došla kući, istu izudarao više puta šakama u predjelu glave i pri\n" +
                        "                    tom je vikao na nju i upućivao joj psovke, nakon čega je oštećena istrčala iz kuće,\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    -čime bi izvršio krivično djelo nasilje u porodici ili u porodičnoj zajednici iz \n" +
                        "                    <ref href=\"/krivicni#art_220_para_1\">   \n" +
                        "                        člana 220 stav 1 Krivičnog zakonika Crne Gore\n" +
                        "                    </ref>\n" +
                        "                    ,\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    -jer nije dokazano da je učinio krivično djelo za koje je optužen.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Troškovi krivičnog postupka padaju na teret budžetskih sredstava i isplaćuju se iz posebnog razdjela budžeta\n" +
                        "                    za rad sudova.\n" +
                        "                </p>\n" +
                        "            </decision>\n" +
                        "            <arguments>\n" +
                        "                <p class=\"subtitle\">\n" +
                        "                    O b r a z l o ž e nj e\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Optužnim predlogom \n" +
                        "                    <organization id=\"odt\" refersTo=\"#odt\">\n" +
                        "                        Osnovnog državnog tužilaštva u Bijelom Polju \n" +
                        "                    </organization>\n" +
                        "                    <party id=\"djm\" refersTo=\"#djm\" as=\"#defendant\">   \n" +
                        "                        Đ.M.u \n" +
                        "                    </party>\n" +
                        "                    je stavljeno na teret izvršenje krivičnog djela nasilje u porodici ili u porodičnoj zajednici iz\n" +
                        "                    <ref href=\"/krivicni#art_220_para_1\">\n" +
                        "                        člana 220 stav 1 Krivičnog zakonika Crne Gore \n" +
                        "                    </ref>\n" +
                        "                    .\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Glavni pretres je zaključen u prisustvu savjetnika u \n" +
                        "                    <organization id=\"odt\" refersTo=\"#odt\">\n" +
                        "                        Osnovnom državnom tužilaštvu u Bijelom Polju \n" +
                        "                    </organization>\n" +
                        "                    <party id=\"djcmiljanic\" refersTo=\"#djcmiljanic\" as=\"#plaintiff\">   \n" +
                        "                        Đorđija Cmiljanića\n" +
                        "                    </party>\n" +
                        "                    , okrivljenog \n" +
                        "                    <party id=\"djm\" refersTo=\"#djm\" as=\"#defendant\">   \n" +
                        "                        Đ.M. \n" +
                        "                    </party>\n" +
                        "                    i njegovog branioca \n" +
                        "                    <party id=\"km\" refersTo=\"#km\" as=\"#lawyer\">   \n" +
                        "                        K.M. \n" +
                        "                    </party>\n" +
                        "                    .\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Branilac okrivljenog advokat \n" +
                        "                    <party id=\"km\" refersTo=\"#km\" as=\"#lawyer\">   \n" +
                        "                        M.K. \n" +
                        "                    </party>\n" +
                        "                    u završnoj riječi je izjavio da imajući u vidu sve izvedene dokaze, a posebno\n" +
                        "                    da su iskazi oštećenih izdvojeni iz spisa i da se ne mogu koristiti u ovom postupku, kao i odbranu okrivljenog i\n" +
                        "                    pojašnjenje vještaka da se stres koji se javio kod oštećene ne može povezati sa spornim događajem, a imajući\n" +
                        "                    u vidu pretpostavku nevinosti, predlaže sudu da donese oslobađajuću presudu.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Okrivljeni \n" +
                        "                    <party id=\"djm\" refersTo=\"#djm\" as=\"#defendant\">   \n" +
                        "                        Đ.M. \n" +
                        "                    </party>\n" +
                        "                    u završnoj riječi je izjavio da u cjelosti prihvata završnu riječ njegovog branioca i dodao da je\n" +
                        "                    na \n" +
                        "                    <party id=\"dja\" refersTo=\"#dja\" as=\"#victim\">   \n" +
                        "                        A.\n" +
                        "                    </party>\n" +
                        "                    galamio isključivo roditeljski, nikako drugačije, ali je prstom nije takao, niti joj je prijetila opasnost od njega. Sve je to ꞌꞌmasloꞌꞌ njegove bivše supruge. \n" +
                        "                    <party id=\"dja\" refersTo=\"#dja\" as=\"#victim\">   \n" +
                        "                        A.\n" +
                        "                    </party>\n" +
                        "                    mu se skoro javila porukom da se izvini zbog svega, međutim do kraja života se neće pomiriti sa njima.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Cijeneći odbranu okrivljenog i dokaze pojedinačno i u međusobnoj vezi, shodno \n" +
                        "                    <ref href=\"/krivicni#art_370\">\n" +
                        "                        čl. 370 Zakonika o krivičnom postupku\n" +
                        "                    </ref>\n" +
                        "                    , sud je zaključio da nije dokazano da je okrivljeni izvršio krivično djelo za koje je optužen.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Naime, iz nalaza i mišljenja vještaka \n" +
                        "                    <party id=\"nr\" refersTo=\"#nr\" as=\"#expertMedical\">\n" +
                        "                        dr N.R. \n" +
                        "                    </party>\n" +
                        "                    prozilazi da nakon pregleda kod \n" +
                        "                    <party id=\"dja\" refersTo=\"#dja\" as=\"#victim\">   \n" +
                        "                        Đ.A. \n" +
                        "                    </party>\n" +
                        "                    nijesu dijagnostifikovane\n" +
                        "                    tjelesne povrede.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Stoga, medicinska dokumentacija i nalazi vještaka \n" +
                        "                    <party id=\"nr\" refersTo=\"#nr\" as=\"#expertMedical\">\n" +
                        "                        dr N.R. \n" +
                        "                    </party>\n" +
                        "                    i \n" +
                        "                    <party id=\"kg\" refersTo=\"#kg\" as=\"#expertMedical\">\n" +
                        "                        dr G.K.\n" +
                        "                    </party>\n" +
                        "                    nisu u prilog navodima optužbe, jer niti\n" +
                        "                    ima povreda kod oštećene, kojih bi vjerovatno bilo da se radilo o višestrukom udara šakama, naročito jačim\n" +
                        "                    intenzitetom, niti ima dokaza da se oštećena odmah javila ljekaru, niti da je navela kao razlog tegoba zbog\n" +
                        "                    kojih se javlja direktno konkretni događaj, odnosno ono što je okrivljenom stavljeno na teret.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Da bi postojalo krivično djelo nasilje u porodici ili u porodičnoj zajednici iz \n" +
                        "                    <ref href=\"/krivicni#art_220_para_1\">\n" +
                        "                        čl.220 st.1 Krivičnog zakonika\n" +
                        "                    </ref>\n" +
                        "                    , mora postojati narušavanje tjelesnog ili duševnog integriteta člana svoje porodice ili porodične zajednice, do\n" +
                        "                    kojeg je došlo usljed primjene grubog nasilja. U konkrenom slučaju, iz razloga kako je već opisano, nije\n" +
                        "                    dokazano postojanje ni grubog nasilja, ni povrede duševnog ili tjelesnog integriteta \n" +
                        "                    <party id=\"dja\" refersTo=\"#dja\" as=\"#victim\">   \n" +
                        "                        Đ.A.\n" +
                        "                    </party>\n" +
                        "                    .\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Zbog svega rečenog, sud je, imajući u vidu načelo ꞌꞌ in dubio pro reoꞌꞌ, po kojem činjenice koje idu na teret\n" +
                        "                    okrivljenom moraju biti na nesumljiv način dokazane, okrivljenog, shodno \n" +
                        "                    <ref href=\"/zkp#art_373_para_1\">\n" +
                        "                        čl.373 st.1 tač.2 Zakonika o krivičnom postupku\n" +
                        "                    </ref>\n" +
                        "                    , oslobodio od optužbe da je učinio krivično djelo nasilje u porodici ili u porodičnoj\n" +
                        "                    zajednici iz \n" +
                        "                    <ref href=\"/krivicni#art_220_para_1\">\n" +
                        "                        čl.220 st.1 Krivičnog zakonika Crne Gore\n" +
                        "                    </ref>\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Troškovi krivičnog postupka padaju na teret budžetskih sredstava i isplaćuju se iz posebnog razdjela budžeta\n" +
                        "                    za rad sudova, shodno\n" +
                        "                    <ref href=\"/zkp#art_230_para_1\">\n" +
                        "                        čl. 230 st.1 Zakonika o krivičnom postupku\n" +
                        "                    </ref>\n" +
                        "                    .\n" +
                        "                </p>\n" +
                        "            </arguments>\n" +
                        "        </judgmentBody>\n" +
                        "        <conclusions>\n" +
                        "            <organization class=\"subtitle\" id=\"os\" refersTo=\"#os\">\n" +
                        "                OSNOVNI SUD U BIJELOM POLjU\n" +
                        "            </organization>\n" +
                        "            <p class=\"subtitle\">\n" +
                        "                Dana, 29.11.2022. godine,\n" +
                        "            </p>\n" +
                        "            <p>\n" +
                        "                ZAPISNIČAR, S U D I J A,\n" +
                        "            </p>\n" +
                        "            <p>\n" +
                        "                <party id=\"kljesnjak\" refersTo=\"#kljesnjak\" as=\"#clerk\">\n" +
                        "                    Koviljka Lješnjaks.r\n" +
                        "                </party>\n" +
                        "                <party id=\"bradovic\" refersTo=\"#bradovic\" as=\"#judge\">\n" +
                        "                    Bojana Radović s.r\n" +
                        "                </party>\n" +
                        "            </p>\n" +
                        "        </conclusions>\n" +
                        "    </judgment>\n" +
                        "</akomaNtoso>")
                .addDeveloperMessage("This is the translation of parameters of verdict into Montenegrin: caseName = presuda;\n" +
                        "court = sud;\n" +
                        "judge = sudija;\n" +
                        "clerk = zapisničar;\n" +
                        "defendant = okrivljeni;\n" +
                        "prosecutorAttorney = zastupnik optužbe;\n" +
                        "defenseAttorney = zastupnik okrivljene;\n" +
                        "injuredParty = oštećeni;\n" +
                        "legalRepresentative = pravni zastupnik;\n" +
                        "expert = ekspert;\n" +
                        "participants = učesnici;\n" +
                        "organizations = organizacije;\n" +
                        "date = datum;\n" +
                        "acknowledged = priznao;\n" +
                        "convicted = osudjivan;\n" +
                        "financialStatus = materijalno stanje;\n" +
                        "maintenance = izdržavanje;\n" +
                        "repentance = kajanje;\n" +
                        "previousFamilyIssues = prethodni porodični problem;\n" +
                        "injuryType = tip povrede;\n" +
                        "correctBehavior = korektno držanje;\n" +
                        "injuredCriminalProsecution = oštećeni goni krivično;\n" +
                        "propertyClaim = imovinsko pravni zahtjev;\n" +
                        "accountability = uračunljivost;\n" +
                        "intentional = sa umišljajem;\n" +
                        "articleId = broj člana zakona;\n" +
                        "paragraphId = stav zakona;\n"+
                        "penalty = sankcija;")
                .addDeveloperMessage(" Write text in MONTENEGRIN language and use the legal terms translations I sent you. Write the text in Latin letters. Use formal and legal language format. Don't invent information that wasn't provided, including personal details and explanations. Do not put parameter values in parentheses; instead, describe them clearly in the text. Verdict should be short and precised.")
                .addDeveloperMessage("In violations are mentioned law articles and paragraphs that are broken and penalties for each violation. Mention them in verdict and put ref href to law document like in the verdicts I sent you in format: <ref href=\"/zkp#art_230_para_1\">.")
                .addDeveloperMessage("Use all attributes and penalties I sent you in the verdict.")
                .addUserMessage("Generate me a verdict in akomontoso format. RETURN ONLY XML FILE. Pay attention to use tags correctly! I sent you one example of the format, use it as a model. Defendant is found not guilty. Write text in MONTENEGRIN language and use the legal terms translations I sent you. Use formal and legal language format, just like in the examples. This is the data you should use when generating a verdict: " + verdict)
                .model(gpt_model)
                .build();

        ChatCompletion response = client.chat().completions().create(params);

        for (ChatCompletion.Choice ch : response.choices()) {
            ch.message().content().ifPresent(System.out::println);
        }
        String llmResponse = response.choices().isEmpty()
                ? ""
                : response.choices().get(0).message().content().orElse("");

        llmResponse = extractXmlBlock(llmResponse);
        String saveResult = saveXML(verdict.getCaseName(), llmResponse);
        String convertResult = convertXMLtoHTML(verdict.getCaseName());
        if (saveResult == null || convertResult == null) {return null;}

        verdictCBRService.addCaseToBase(convertToDTO(verdict));
        addToMetadata(verdict);
        addToAttributes(verdict);
        return convertResult;
    }

    private String saveXML(String fileName, String verdict) {
        String folderPath = "src/main/resources/static/Verdicts/akoma-ntoso";
        File folder = new File(folderPath);
        if (!folder.exists()) {
            folder.mkdirs(); // kreira folder ako ne postoji
        }

        File file = new File(folder, fileName + ".xml");

        try (FileWriter writer = new FileWriter(file)) {
            writer.write(verdict);
            System.out.println("XML fajl sacuvan: " + fileName + ".xml");
            return fileName;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    private String convertXMLtoHTML(String filename) {
        try {
            ProcessBuilder pb = new ProcessBuilder(
                    "py", "../akomaNtoso_to_html_translator.py",
                    filename
            );
            pb.redirectErrorStream(true);

            Process process = pb.start();

            StringBuilder output = new StringBuilder();
            try (BufferedReader reader = new BufferedReader(
                    new InputStreamReader(process.getInputStream()))) {
                String line;
                while ((line = reader.readLine()) != null) {
                    output.append(line).append("\n");
                }
            }

            int exitCode = process.waitFor();
            if (exitCode == 0) {
                System.out.println("✅ HTML fajl uspešno kreiran!");

                String fullOutput = output.toString();

                int start = fullOutput.indexOf("===HTML_START===");
                int end = fullOutput.indexOf("===HTML_END===");

                if (start != -1 && end != -1 && end > start) {
                    String htmlContent = fullOutput.substring(
                            start + "===HTML_START===".length(),
                            end
                    ).trim();
                    return htmlContent;
                } else {
                    System.out.println("⚠️ HTML marker nije pronađen u outputu.");
                    return fullOutput;
                }
            } else {
                System.out.println("⚠️ Greška u konverziji, exit code: " + exitCode);
                return null;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    private VerdictDTO convertToDTO(VerdictCreateDTO verdict) {
        VerdictDTO dto = new VerdictDTO();
        dto.setCaseName(verdict.getCaseName());
        dto.setAccountability(verdict.getAccountability());
        dto.setAcknowledged(verdict.getAcknowledged());
        dto.setCorrectBehavior(verdict.getCorrectBehavior());
        dto.setConvicted(verdict.getConvicted());
        dto.setMaintenance(verdict.getMaintenance());
        dto.setFinancialStatus(verdict.getFinancialStatus());
        dto.setInjuredCriminalProsecution(verdict.getInjuredCriminalProsecution());
        dto.setInjuryType(verdict.getInjuryType());
        dto.setIntentional(verdict.getIntentional());
        dto.setPreviousFamilyIssues(verdict.getPreviousFamilyIssues());
        dto.setRepentance(verdict.getRepentance());
        dto.setPropertyClaim(verdict.getPropertyClaim());

        return dto;
    }

    private void addToMetadata(VerdictCreateDTO verdict) {
        String filePath = "src/main/resources/static/Verdicts/metadata/verdicts_metadata.csv";
        String[] values = {verdict.getCaseName(), verdict.getCourt(), verdict.getJudge(), verdict.getClerk(), verdict.getDefendant(), verdict.getProsecutorAttorney(), verdict.getDefenseAttorney(), verdict.getInjuredParty(), verdict.getLegalRepresentative(), verdict.getExpert(), verdict.getParticipants(), verdict.getOrganizations(), verdict.getDate()};

        String newRow = String.join(",", values);

        newRow = newRow.concat("\n");
        try (BufferedWriter bw = new BufferedWriter(new FileWriter(filePath, true))) {
//            bw.newLine();
            bw.write(newRow);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addToAttributes(VerdictCreateDTO verdict) {
        String filePath = "src/main/resources/static/Verdicts/Atributes.csv";
        String[] values = {verdict.getCaseName(), verdict.getAcknowledged().toString(), verdict.getConvicted().toString(),
        verdict.getFinancialStatus(), verdict.getMaintenance().toString(), verdict.getRepentance().toString(), verdict.getPreviousFamilyIssues().toString(),
                verdict.getInjuryType(), verdict.getCorrectBehavior().toString(), verdict.getInjuredCriminalProsecution().toString(),
                verdict.getPropertyClaim().toString(), verdict.getAccountability(), verdict.getIntentional().toString()
        };

        String newRow = String.join(",", values);

        newRow = newRow.concat("\n");
        try (BufferedWriter bw = new BufferedWriter(new FileWriter(filePath, true))) {
//            bw.newLine();
            bw.write(newRow);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private String extractXmlBlock(String input) {
        if (input == null) return null;

        String startTag = "```xml";
        String endTag = "```";

        int startIndex = input.indexOf(startTag);
        if (startIndex == -1) return input;

        int endIndex = input.indexOf(endTag, startIndex + startTag.length());
        if (endIndex == -1) return input;

        return input.substring(startIndex + startTag.length(), endIndex).trim();
    }
}
