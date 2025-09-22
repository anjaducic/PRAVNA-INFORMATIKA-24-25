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

                    //Novi atributi
                    dto.setFamilyObligationsViolation(values[13]);
                    dto.setExtramaritalRelationshipMinor(values[14]);
                    dto.setUnlawfulDetention(values[15]);
                    dto.setFamilyMemberMaintenance(values[16]);
                    dto.setDomesticViolence(values[17]);

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
        return generateVerdictText(verdict);
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
                        "                    , \n" +
                        "                    <ref href=\"/cg/kt/2013-08-09/247_13\"> \n" +
                        "                        Kt. br. 247/13 od 09. 08. 2013 godine\n" +
                        "                    </ref>\n" +
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
                        "                    , JMBG ..., od oca H. majke V., rođene K., rođen 09. 05. 1992 godine u Bijelom Polju, sa \n" +
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
                        "                    Kazao je da je tačno da je, dana 23. 07. 2013. godine, izudarao svoju suprugu\n" +
                        "                    <party id=\"gm\" refersTo=\"#gm\" as=\"#victim\">   \n" +
                        "                        G.M.u\n" +
                        "                    </party>\n" +
                        "                    rukama i nogama i zna\n" +
                        "                    da joj je nanio povrede. Kazao je i da je svjestan da je svojim radnjama narušio njen i duševni i tjelesni\n" +
                        "                    integritet jer je\n" +
                        "                    <party id=\"gm\" refersTo=\"#gm\" as=\"#victim\">   \n" +
                        "                        M.a\n" +
                        "                    </party>\n" +
                        "                    imala tjelesne povrede a nakon ovog događaja je bila smještena u \"Sigurnoj ženskoj kući\"\n" +
                        "                    vjerovatno zbog toga što se uplašila. Naveo je još da su se nakon kritičnog događaja on i\n" +
                        "                    <party id=\"gm\" refersTo=\"#gm\" as=\"#victim\">   \n" +
                        "                        M.a\n" +
                        "                    </party>\n" +
                        "                    pomirili i da žive\n" +
                        "                    zajedno u Budvi. Izrazio je i kazajanje zbog učinjenog djela.\n" +
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
                        "                    Sud je cijenio nalaz i mišljenje vještaka psihijatra dr\n" +
                        "                    <party id=\"gk\" refersTo=\"#gk\" as=\"#expertMedical\">\n" +
                        "                        G.e K.\n" +
                        "                    </party>\n" +
                        "                    koja u svom nalazu navodi da je na osnovu\n" +
                        "                    medicinske dokumentacije ustanovila da je\n" +
                        "                    <party id=\"gm\" refersTo=\"#gm\" as=\"#victim\">   \n" +
                        "                        G.M.a\n" +
                        "                    </party>\n" +
                        "                    , dana 23. 07. 2013. godine, napadnuta i povrijeđena u kući\n" +
                        "                    u kojoj živi sa suprugom. Obzirom na nesrazmjeru u fizičkoj snazi, bespomoćnost koja se pri tom javlja u\n" +
                        "                    okruženju koje bi trebalo da bude, siguran prostor i obzirom na način povređivanja, kod\n" +
                        "                    <party id=\"gm\" refersTo=\"#gm\" as=\"#victim\">   \n" +
                        "                        G.M.e\n" +
                        "                    </party>\n" +
                        "                    upredmetnom događaju došlo je do teškog narušavanja psihičke ravnoteže i njenog duševnog integriteta,\n" +
                        "                    zbog čega je smještena u \"Sigurnu žensku kuću\". Vještak zaključuje da je oštećena imala strah od povratka u\n" +
                        "                    dom u kome je živjela, što ukazuje da je njena psihička ravnoteža, bila narušena u srednje teškom stepenu.\n" +
                        "                    Kazal je i da je mišljenja da je u kritičnom događaju došlo do teškog narušavanja duševnog integriteta\n" +
                        "                    oštećene\n" +
                        "                    <party id=\"gm\" refersTo=\"#gm\" as=\"#victim\">   \n" +
                        "                        G.M.e\n" +
                        "                    </party>\n" +
                        "                    . Nalaze i mišljenja vještaka dr\n" +
                        "                    <party id=\"dm\" refersTo=\"#dm\" as=\"#expertMedical\">\n" +
                        "                        M.a\n" +
                        "                    </party>\n" +
                        "                    i dr\n" +
                        "                    <party id=\"gk\" refersTo=\"#gk\" as=\"#expertMedical\">\n" +
                        "                        K.\n" +
                        "                    </party>\n" +
                        "                    sud je prihvatio kao objektivne.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Iz izvoda iz KE na ime okrivljenog utvrđeno je da isti do sada nije osuđivan.\n" +
                        "                </p>\n" +
                        "                <p>\n" +
                        "                    Okrivljeni u svojoj odbrani, datoj na glavnom pretresu, u potpunosti priznaje izvršenje krivičnog djela\n" +
                        "                    stavljenog mu na teret i navodi da se zbog istog osjeća krivim. Priznanje okrivljenog potvrđeno je i izvedenim\n" +
                        "                    dokazima. Tako, iz priznanja okrivljenog i dokaza izvedenih tokom postupka, sud je nedvosmisleno utvrdio\n" +
                        "                    da je okrivljeni\n" +
                        "                    <party id=\"gf\" refersTo=\"#gf\" as=\"#defendant\">   \n" +
                        "                        G.F.\n" +
                        "                    </party>\n" +
                        "                    , kritičnog dana i vremena, u mjestu Loznice opština Bijelo Polje, u porodičnoj kući,\n" +
                        "                    vlasništvo G.H.e, primjenom grubog nasilja narušio tjelesni i duševni integritet, članu svoje porodice, supruzi\n" +
                        "                    oštećenoj\n" +
                        "                    <party id=\"gm\" refersTo=\"#gm\" as=\"#victim\">   \n" +
                        "                        G.M.i\n" +
                        "                    </party>\n" +
                        "                    , na način što je pesnicama izudarao u predjelu glave, da bi je kada je oštećena pokušala da\n" +
                        "                    pobjegne, sustigao na stepenicama i izudarao nogama u predjelutijela-nogu, kojom prilikom joj je nanio lake\n" +
                        "                    tjelesne povrede, u vidu, nagnječno razderne rane u obliku slova »y« dimenzija 1,5*1,5 cm, u predjelu čela,\n" +
                        "                    više oteklina na poglavini i dva crvenila sa otocima dimenzija 10*10cm, na spoljnim stranama obije butine,\n" +
                        "                    pa su se po ocjeni suda, u ovim radnjama okrivljenog stekla sva bitna obilježja bića krivičnog djela nasilje u\n" +
                        "                    porodici ili u porodičnoj zajednici, iz\n" +
                        "                    <ref href=\"/krivicni#art_220_para_1\">\n" +
                        "                        čl. 220 st.1 Krivičnog zakonika\n" +
                        "                    </ref>\n" +
                        "                    . Krivično djelo okrivljeni je izvršio s\n" +
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
                        "                    , okrivljeni je obavezan na plaćanje troškova paušala u iznosu od 30,00 eura, pri\n" +
                        "                    čemu je sud imao u vidu složenost i trajanje krivičnog postupka te imovinske prilike okrivljenog, kao i da plati\n" +
                        "                    ostale troškove krivičnog postupka, koji se tiču vještačenja po vještacima medicinske struke dr\n" +
                        "                    <party id=\"dm\" refersTo=\"#dm\" as=\"#expertMedical\">\n" +
                        "                        M.\n" +
                        "                    </party>\n" +
                        "                    i dr\n" +
                        "                    <party id=\"gk\" refersTo=\"#gk\" as=\"#expertMedical\">\n" +
                        "                        K.\n" +
                        "                    </party>\n" +
                        "                    , u ukupnom iznosu od 110,00 eura, a koji su vještacima isplaćeni iz budžetskih sredstava na ime davanja nalaza\n" +
                        "                    i mišljenja u istražnom postupku.\n" +
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
                        "</akomaNtoso>\n" +
                        "\n" +
                        "\n" +
                        "\n" +
                        "    \n" +
                        "\n" +
                        "    ")
                .addDeveloperMessage("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" +
                        "<akomaNtoso xmlns=\"http://docs.oasis-open.org/legaldocml/ns/akn/3.0/WD17\"\n" +
                        "             xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n" +
                        "             xsi:schemaLocation=\"http://docs.oasis-open.org/legaldocml/ns/akn/3.0/WD17 ../../schemas/akomantoso30.xsd\">\n" +
                        "  <judgment>\n" +
                        "    <meta>\n" +
                        "      <identification source=\"#court\">\n" +
                        "        <FRBRWork>\n" +
                        "          <FRBRauthor>OSNOVNI SUD U BIJELOM POLJU</FRBRauthor>\n" +
                        "          <FRBRdate date=\"2010-12-22\">2010-12-22</FRBRdate>\n" +
                        "          <FRBRtitle>K 606/2010</FRBRtitle>\n" +
                        "          <FRBRcountry>CG</FRBRcountry>\n" +
                        "        </FRBRWork>\n" +
                        "      </identification>\n" +
                        "      <references>\n" +
                        "        <TLCOrganization eId=\"os\" href=\"/ontology/organization/OsnovniSud.BijeloPolje\" showAs=\"Osnovni sud u Bijelom Polju\"/>\n" +
                        "        <TLCOrganization eId=\"odt\" href=\"/ontology/organization/OsnovnoDrzavnoTuzilastvo.BijeloPolje\" showAs=\"Osnovno državno tužilaštvo u Bijelom Polju\"/>\n" +
                        "        <TLCOrganization eId=\"csr\" href=\"/ontology/organization/CentarZaSocijalniRad\" showAs=\"Centar za socijalni rad\"/>\n" +
                        "        <TLCPerson eId=\"dragana_mrdak\" href=\"/ontology/person/dragana_mrdak\" showAs=\"Dragana Mrdak\"/>\n" +
                        "        <TLCPerson eId=\"sonja_markovic\" href=\"/ontology/person/sonja_markovic\" showAs=\"Sonja Marković\"/>\n" +
                        "        <TLCPerson eId=\"dm\" href=\"/ontology/person/dm\" showAs=\"D.M.\"/>\n" +
                        "        <TLCPerson eId=\"bs\" href=\"/ontology/person/bs\" showAs=\"B.S.\"/>\n" +
                        "        <TLCPerson eId=\"or\" href=\"/ontology/person/or\" showAs=\"O.R.\"/>\n" +
                        "        <TLCPerson eId=\"slavenka_smolovic\" href=\"/ontology/person/slavenka_smolovic\" showAs=\"Slavenka Smolović\"/>\n" +
                        "        <TLCPerson eId=\"mv\" href=\"/ontology/person/mv\" showAs=\"M.V.\"/>\n" +
                        "        <TLCRole eId=\"defendant\" href=\"/ontology/role/defendant\" showAs=\"Defendant\"/>\n" +
                        "        <TLCRole eId=\"judge\" href=\"/ontology/role/judge\" showAs=\"Judge\"/>\n" +
                        "        <TLCRole eId=\"clerk\" href=\"/ontology/role/clerk\" showAs=\"Clerk\"/>\n" +
                        "        <TLCRole eId=\"prosecutor\" href=\"/ontology/role/prosecutor\" showAs=\"Prosecutor\"/>\n" +
                        "        <TLCRole eId=\"victim\" href=\"/ontology/role/victim\" showAs=\"Victim\"/>\n" +
                        "        <TLCRole eId=\"legal_guardian\" href=\"/ontology/role/legal_guardian\" showAs=\"Legal Guardian\"/>\n" +
                        "        <TLCRole eId=\"expert\" href=\"/ontology/role/expert\" showAs=\"Expert\"/>\n" +
                        "      </references>\n" +
                        "    </meta>\n" +
                        "    <judgmentBody>\n" +
                        "      <introduction>\n" +
                        "        <p>\n" +
                        "          <organization id=\"os\" refersTo=\"#os\">\n" +
                        "            OSNOVNI SUD U BIJELOM POLJU\n" +
                        "          </organization>,\n" +
                        "          kao prvostepeni krivični sud, sudija pojedinac \n" +
                        "          <party id=\"dragana_mrdak\" refersTo=\"#dragana_mrdak\" as=\"#judge\">\n" +
                        "            Dragana Mrdak\n" +
                        "          </party>,\n" +
                        "          uz učešće namještenika suda \n" +
                        "          <party id=\"sonja_markovic\" refersTo=\"#sonja_markovic\" as=\"#clerk\">\n" +
                        "            Sonje Marković\n" +
                        "          </party>,\n" +
                        "          zapisničara, u krivičnom predmetu protiv okrivljenog \n" +
                        "          <party id=\"dm\" refersTo=\"#dm\" as=\"#defendant\">\n" +
                        "            D.M.a\n" +
                        "          </party>\n" +
                        "          iz Bijelog Polja, postupajući po optužnom predlogu \n" +
                        "          <organization id=\"odt\" refersTo=\"#odt\">\n" +
                        "            ODT-a, iz Bijelog Polja\n" +
                        "          </organization>,\n" +
                        "          KT. br. 610/10 od 05.11.2010. godine, zbog krivičnog djela vanbračna zajednica sa maloljetnikom iz \n" +
                        "          <ref href=\"/krivicni#art_216_para_1\">čl. 216 st. 1 Krivičnog zakonika</ref>\n" +
                        "          nakon održanog usmenog, glavnog i javnog pretresa u prisustvu savjetnika u ODT-u Bijelom Polju \n" +
                        "          <party id=\"slavenka_smolovic\" refersTo=\"#slavenka_smolovic\" as=\"#prosecutor\">\n" +
                        "            Smolović Slavenka\n" +
                        "          </party>,\n" +
                        "          okrivljenog \n" +
                        "          <party id=\"dm\" refersTo=\"#dm\" as=\"#defendant\">\n" +
                        "            D.M.a\n" +
                        "          </party>,\n" +
                        "          oštećene maloljetne \n" +
                        "          <party id=\"bs\" refersTo=\"#bs\" as=\"#victim\">\n" +
                        "            B.S.\n" +
                        "          </party>\n" +
                        "          i zakonske zastupnice maloljetne oštećene majke \n" +
                        "          <party id=\"or\" refersTo=\"#or\" as=\"#legal_guardian\">\n" +
                        "            O.R.\n" +
                        "          </party>,\n" +
                        "          dana 22.12.2010. godine, donio je i javno objavio:\n" +
                        "        </p>\n" +
                        "      </introduction>\n" +
                        "      <background>\n" +
                        "        <p class=\"subtitle\">\n" +
                        "          P R E S U D U\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Okrivljeni \n" +
                        "          <party id=\"dm\" refersTo=\"#dm\" as=\"#defendant\">\n" +
                        "            D.M.\n" +
                        "          </party>,\n" +
                        "          JMBG ...., od oca Z., majke V., rođene M., rođen ... godine, u Bijelom Polju, sa prebivalištem u mjestu rođenja, Z., državljanin Crne Gore, nezaposlen, pismen, sa završenom osnovnom školom, dobrog imovnog stanja, neosuđivan.\n" +
                        "        </p>\n" +
                        "      </background>\n" +
                        "      <decision>\n" +
                        "        <p class=\"subtitle\">\n" +
                        "          K r i v j e\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Što je:\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          -u vremenu od dana 14.09.2010. godine u mjestu Z., opština Bijelo Polje, živi u vanbračnoj zajednici sa maloljetnom \n" +
                        "          <party id=\"bs\" refersTo=\"#bs\" as=\"#victim\">\n" +
                        "            B.S.\n" +
                        "          </party>\n" +
                        "          iz mjesta C., opština Bijelo Polje, starom oko četrnaest i po godina,\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          - čime je izvršio krivično djelo vanbračna zajednica sa maloljetnikom iz \n" +
                        "          <ref href=\"/krivicni#art_216_para_1\">čl. 216 st. 1 Krivičnog zakonika</ref>\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          - pa mu sud primjenom citiranog zakonskog propisa i \n" +
                        "          <ref href=\"/krivicni#art_2\">čl. 2,</ref>\n" +
                        "          <ref href=\"/krivicni#art_4\">4,</ref>\n" +
                        "          <ref href=\"/krivicni#art_5\">5,</ref>\n" +
                        "          <ref href=\"/krivicni#art_13\">13,</ref>\n" +
                        "          <ref href=\"/krivicni#art_15\">15,</ref>\n" +
                        "          <ref href=\"/krivicni#art_32\">32,</ref>\n" +
                        "          <ref href=\"/krivicni#art_36\">36,</ref>\n" +
                        "          <ref href=\"/krivicni#art_42\">42,</ref>\n" +
                        "          <ref href=\"/krivicni#art_52\">52,</ref>\n" +
                        "          <ref href=\"/krivicni#art_53\">53</ref>\n" +
                        "          i \n" +
                        "          <ref href=\"/krivicni#art_54\">54 Krivičnog zakonika</ref>,\n" +
                        "          i \n" +
                        "          <ref href=\"/zkp#art_199\">čl. 199,</ref>\n" +
                        "          <ref href=\"/zkp#art_202\">202,</ref>\n" +
                        "          <ref href=\"/zkp#art_212\">212</ref>\n" +
                        "          i \n" +
                        "          <ref href=\"/zkp#art_364\">364 Zakonika o krivičnom postupku</ref>,\n" +
                        "          i z r i č e:\n" +
                        "        </p>\n" +
                        "        <p class=\"subtitle\">\n" +
                        "          USLOVNU OSUDU\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Kojom mu utvrđuje kaznu zatvora u trajanju od 2 ( dva ) mjeseca, i istovremeno određuje da se ista neće izvršiti ukoliko okrivljeni u roku od 1 (jedne) godine, ne izvrši novo krivično djelo.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Okrivljeni se obavezuje da ovom sudu na ime paušala plati iznos od 30,00 €, koji iznos će uplatiti na žiro račun br. 832 - 151 - 35, depozita novčanih kazni, troškova postupka i paušala u roku od 15 dana, po pravosnažnosti presude, pod prijetnjom prinudnog izvršenja.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Imovinsko - pravnog zahtjeva i drugih troškova postupka, nije bilo.\n" +
                        "        </p>\n" +
                        "      </decision>\n" +
                        "      <arguments>\n" +
                        "        <p class=\"subtitle\">\n" +
                        "          O b r a z l o ž e n j e\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Optužnim predlogom \n" +
                        "          <organization id=\"odt\" refersTo=\"#odt\">\n" +
                        "            ODT-a iz B. Polja\n" +
                        "          </organization>\n" +
                        "          Kt. br. 610/10 od 05.11.2010. godine, optužen je \n" +
                        "          <party id=\"dm\" refersTo=\"#dm\" as=\"#defendant\">\n" +
                        "            D.M.\n" +
                        "          </party>\n" +
                        "          iz Bijelog Polja, zbog krivičnog djela vanbračna zajednica sa maloljetnikom iz \n" +
                        "          <ref href=\"/krivicni#art_216_para_1\">čl. 216 st. 1 Krivičnog zakonika</ref>.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Glavni pretres je održan i zaključen dana 22.12.2010. godine u prisustvu savjetnika u ODT-u u Bijelom Polju \n" +
                        "          <party id=\"slavenka_smolovic\" refersTo=\"#slavenka_smolovic\" as=\"#prosecutor\">\n" +
                        "            Smolović Slavenka\n" +
                        "          </party>,\n" +
                        "          okrivljenog \n" +
                        "          <party id=\"dm\" refersTo=\"#dm\" as=\"#defendant\">\n" +
                        "            D.M.a\n" +
                        "          </party>,\n" +
                        "          oštećene maloljetne \n" +
                        "          <party id=\"bs\" refersTo=\"#bs\" as=\"#victim\">\n" +
                        "            B.S.\n" +
                        "          </party>\n" +
                        "          i zakonske zastupnice maloljetne oštećene majke \n" +
                        "          <party id=\"or\" refersTo=\"#or\" as=\"#legal_guardian\">\n" +
                        "            O.R.\n" +
                        "          </party>.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          U završnoj riječi savjetnik u ODT-u ostao pri podnijetom optužnom predlogu, jer je izvedenim dokazima utvrđeno, a samim tim i dokazano da je okrivljeni izvršio krivično djelo koje mu je stavljeno na teret optužnim predlogom, predlažući sudu da okrivljenog oglasi krivim i osudi na kaznu po zanonu.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          U završnoj riječi zakonski zastupnik oštećene maloljetne \n" +
                        "          <party id=\"bs\" refersTo=\"#bs\" as=\"#victim\">\n" +
                        "            B.S.\n" +
                        "          </party>,\n" +
                        "          majka \n" +
                        "          <party id=\"or\" refersTo=\"#or\" as=\"#legal_guardian\">\n" +
                        "            O.R.a\n" +
                        "          </party>\n" +
                        "          nije se pridružila krivičnom gonjenju protiv okrivljenog, niti je prema istom istakla imovinsko pravni zahtjev.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Okrivljeni \n" +
                        "          <party id=\"dm\" refersTo=\"#dm\" as=\"#defendant\">\n" +
                        "            D.M.\n" +
                        "          </party>\n" +
                        "          u svojoj odbrani u bitnom istakao da je tačno da je dana 14.09.2010. godine zasnovao vanbračnu zajednicu sa \n" +
                        "          <party id=\"bs\" refersTo=\"#bs\" as=\"#victim\">\n" +
                        "            B.S.\n" +
                        "          </party>,\n" +
                        "          i ako je znao da je ista maloljetna i da ona ima četrnaest i po godina. Sa S. se zabavljao od 31.05.2010. godine, a kako je ista ostala u drugom stanju, odlučio je da zasnuje prvo vanbračnu zajednicu, a nakon odobrenja njegovih roditelja i bračnu.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Radi utvrđivanja odlučnih činjenica i donošenja pravilne i zakonite odluke sud je u dokaznom postupku na glavnom pretresu izveo dokaze: saslušao maloljetnu oštećenu \n" +
                        "          <party id=\"bs\" refersTo=\"#bs\" as=\"#victim\">\n" +
                        "            B.a S.u\n" +
                        "          </party>,\n" +
                        "          zakonskog zastupnika maloljetne oštećene \n" +
                        "          <party id=\"bs\" refersTo=\"#bs\" as=\"#victim\">\n" +
                        "            B.S.\n" +
                        "          </party>,\n" +
                        "          majku \n" +
                        "          <party id=\"or\" refersTo=\"#or\" as=\"#legal_guardian\">\n" +
                        "            O.R.u\n" +
                        "          </party>,\n" +
                        "          predstavnika \n" +
                        "          <organization id=\"csr\" refersTo=\"#csr\">\n" +
                        "            Centra za socijalni rad opština B. Polje i Mojkovac\n" +
                        "          </organization>\n" +
                        "          diplomiranog specijalnog pedagoga \n" +
                        "          <party id=\"mv\" refersTo=\"#mv\" as=\"#expert\">\n" +
                        "            M.V.\n" +
                        "          </party>,\n" +
                        "          izvršio uvid u izvod iz KE na ime okrivljenog. Drugih predloga za dopunu dokaznog postupka nije bilo.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Sud je cijeneći odbranu okrivljenog i dokaze pojedinačno i u međusobnoj vezi, a shodno \n" +
                        "          <ref href=\"/zkp#art_360_para_2\">čl. 360 st. 2 Zakonika o krivičnom postupku</ref>,\n" +
                        "          utvrdio činjenično stanje i na osnovu istog zaključio da je okrivljeni izvršio krivično djelo stavljeno mu na teret optužnim predlogom i da je za isto kriv i odgovoran.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Iz izvedenih dokaza nesporno je utvrđeno da okrivljeni \n" +
                        "          <party id=\"dm\" refersTo=\"#dm\" as=\"#defendant\">\n" +
                        "            D.M.\n" +
                        "          </party>\n" +
                        "          u vremenu od dana 14.09.2010. godine u mjestu Z., opština Bijelo Polje, živi u vanbračnoj zajednici sa maloljetnom \n" +
                        "          <party id=\"bs\" refersTo=\"#bs\" as=\"#victim\">\n" +
                        "            B.S.\n" +
                        "          </party>\n" +
                        "          iz mjesta C., opština Bijelo Polje, starom oko četrnaest i po godina, pa je postupajući na opisani način okrivljeni \n" +
                        "          <party id=\"dm\" refersTo=\"#dm\" as=\"#defendant\">\n" +
                        "            D.M.\n" +
                        "          </party>\n" +
                        "          ovakvim svojim ponašanjem ostvario obilježja krivičnog djela vanbračna zajednica sa maloljetnikom iz \n" +
                        "          <ref href=\"/krivicni#art_216_para_1\">čl. 216 st. 1 Krivičnog zakonika</ref>\n" +
                        "          za koje je kriv i odgovoran.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Odlučujući u pogledu vrste i visine krivične sankcije, a cijeneći sve okolnosti iz \n" +
                        "          <ref href=\"/krivicni#art_42\">čl. 42 Krivičnog zakonika</ref>\n" +
                        "          sud je kod okrivljenog kao olakšavajuće okolnosti našao da se radi o mladom, neosuđivanom licu, koji se u toku pretresa korektno držao, kome se zakonski zastupnik oštećene nije pridružio krivičnom gonjenju, pa u odsustvu otežavajućih okolnosti sud je stanovišta da su ispunjeni uslovi za izricanje uslovne osude, kojom je okrivljenom utvrđena kazna zatvora u trajanju od dva mjeseca i istovremeno ocijenio da bi se pristupanjem izvršenju iste, suviše represivno djelovalo na okrivljenog nego da će i samo upozorenje uz prijetnju kaznom u odgovarajućem roku provjeravanja od jedne godine dovoljno uticati na istog da u buduće ne vrši ova i slična krivična djela i ostvariti se svrha kažnjavanja, predviđena u \n" +
                        "          <ref href=\"/krivicni#art_32\">čl. 32 Krivičnog zakonika</ref>.\n" +
                        "        </p>\n" +
                        "        <p>\n" +
                        "          Shodno \n" +
                        "          <ref href=\"/zkp#art_199\">čl. 199 Zakonika o krivičnom postupka</ref>,\n" +
                        "          odlučeno je u pogledu paušala, vodeći računa o imovinskim prilikama optuženog i dužini trajanja postupka.\n" +
                        "        </p>\n" +
                        "      </arguments>\n" +
                        "    </judgmentBody>\n" +
                        "    <conclusions>\n" +
                        "      <organization class=\"subtitle\" id=\"os\" refersTo=\"#os\">\n" +
                        "        OSNOVNI SUD U BIJELOM POLJU\n" +
                        "      </organization>\n" +
                        "      <p class=\"subtitle\">\n" +
                        "        Dana 22.12.2010. godine\n" +
                        "      </p>\n" +
                        "      <p>\n" +
                        "        ZAPISNIČAR, S U D I J A,\n" +
                        "      </p>\n" +
                        "      <p>\n" +
                        "        <party id=\"sonja_markovic\" refersTo=\"#sonja_markovic\" as=\"#clerk\">\n" +
                        "          Sonja Marković, s.r.\n" +
                        "        </party>\n" +
                        "        <party id=\"dragana_mrdak\" refersTo=\"#dragana_mrdak\" as=\"#judge\">\n" +
                        "          Dragan Mrdak, s.r.\n" +
                        "        </party>\n" +
                        "      </p>\n" +
                        "    </conclusions>\n" +
                        "  </judgment>\n" +
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
                        "intentional = sa umišljajem;")
                .addUserMessage("Generate me a verdict in akomontoso format. Pay attention to use tags correctly! I sent you three examples of the format, use them as a model. Write text in MONTENEGRIN language and use the legal terms translations I sent you. Use formal and legal language format, just like in the examples. This is the data you should use when generating a verdict: " + verdict)
                .model(ChatModel.GPT_5_NANO)
                .build();

        ChatCompletion response = client.chat().completions().create(params);

        for (ChatCompletion.Choice ch : response.choices()) {
            ch.message().content().ifPresent(System.out::println);
        }
        String llmResponse = response.choices().isEmpty()
                ? ""
                : response.choices().get(0).message().content().orElse("");

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
                    return null;
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

        try (BufferedWriter bw = new BufferedWriter(new FileWriter(filePath, true))) {
//            bw.newLine();
            bw.write(newRow);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
