Instance: AllopurinolTabletLabelBundle
InstanceOf: ProductSubmissionBundle
Description: "A bundle containing all of the information for the Allopurinol Tablet USP Label"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2ca799ba-56af-4fa6-ac9c-44f736ef1a02"
* type = #document
* timestamp = "2017-02-24T00:00:00.0000Z"
* entry[0]
  * insert bundleEntry(Composition, AllopurinolTabletLabelComposition)
* entry[+]
  * insert bundleEntry(Organization, AidarexPharmaceuticals)
* entry[+]
  * insert bundleEntry(MedicinalProductDefinition, AllopurinolUSPDefinition)
* entry[+]
  * insert bundleEntry(ManufacturedItemDefinition, AllopurinolTablet)
* entry[+]
  * insert bundleEntry(Ingredient, AllopurinolUSPActiveIngredient)
* entry[+]
  * insert bundleEntry(SubstanceDefinition, AllopurinolIngredientDefinition)
* entry[+]
  * insert bundleEntry(Ingredient, AllopurinolUSPIngredient1)
* entry[+]
  * insert bundleEntry(Ingredient, AllopurinolUSPIngredient2)
* entry[+]
  * insert bundleEntry(Ingredient, AllopurinolUSPIngredient3)
* entry[+]
  * insert bundleEntry(Ingredient, AllopurinolUSPIngredient4)
* entry[+]
  * insert bundleEntry(Ingredient, AllopurinolUSPIngredient5)
* entry[+]
  * insert bundleEntry(Ingredient, AllopurinolUSPIngredient6)
* entry[+]
  * insert bundleEntry(PackagedProductDefinition, Allopurinol100Tablets)
* entry[+]
  * insert bundleEntry(PackagedProductDefinition, Allopurinol30Tablets)
* entry[+]
  * insert bundleEntry(PackagedProductDefinition, Allopurinol60Tablets)
* entry[+]
  * insert bundleEntry(PackagedProductDefinition, Allopurinol90Tablets)
* entry[+]
  * insert bundleEntry(RegulatedAuthorization, AllopurinolMarketing)

Instance: AidarexPharmaceuticals
InstanceOf: IdentifiedLabeler
Description: "Aidarex Pharmaceuticals - labeller for Allopurinol Tablets USP"
* type = OrganizationTypes#Labeler
* name = "Aidarex Pharmaceuticals LLC"
* identifier[DUNSNumber].value = "801503249"

Instance: AllopurinolTabletLabelComposition
InstanceOf: ProductSubmissionDocument
Description: "Header information for the Allopurinol Tablet USP Label"
* extension[versionNumber].valueString = "1"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c9a01871-bbf8-4b31-9b9b-9fa8c0997b29"
* status = #final
* type = http://loinc.org#34391-3 "HUMAN PRESCRIPTION DRUG LABEL"
* date = "2017-02-04"
* author = Reference(AidarexPharmaceuticals)
* title = "Allopurinol<br/>Tablets USP<br/>Revised: February 2015<br/>Rx only        <br/>"
* section[0]
  * id = "80fb3156-ba84-4cf6-b0f7-66c4dddc3fc3"
  * code = http://loinc.org#34089-3 "DESCRIPTION SECTION"
  * title = "DESCRIPTION"
  * extension[sectionTime].valueDateTime = "2015-02-01"
  * extension[linkId].valueString = "LINK_80fb3156-ba84-4cf6-b0f7-66c4dddc3fc3"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
    <a name="LINK_80fb3156-ba84-4cf6-b0f7-66c4dddc3fc3"/>
    <p>Allopurinol is known chemically as 1,5-Dihydro-4<span style="font-style: italic">H</span>-pyrazolo[3,4-<span style="font-style: italic">d </span>]pyrimidin-4-one. It is a xanthine oxidase inhibitor which is administered orally. Its solubility in water at 37°C is 80 mg/dL and is greater in an alkaline solution. The structural formula is represented below:</p>
  <img src="allopurinol-usp-1.jpg" alt="Allopurinol structural formula"/>
    <p>C<sub>5</sub>H<sub>4</sub>N<sub>4</sub>O        M.W. 136.11</p>
    <p>Allopurinol Tablets USP, 100 mg and 300 mg contain the following inactive ingredients: croscarmellose sodium, lactose monohydrate, magnesium stearate, microcrystalline cellulose, pregelatinized starch and sodium lauryl sulfate.</p>
    <p>Allopurinol Tablets USP, 300 mg also contain FD&amp;C Yellow No. 6.</p>
  </div></div>"""
* section[+]
  * code = http://loinc.org#34090-1 "CLINICAL PHARMCOLOGY SECTION"
  * title = "CLINICAL PHARMACOLOGY"
  * id = "59e4d2bd-f4b7-450e-b818-8fa84cebe058"
  * extension[sectionTime].valueDateTime = "2015-02-01"
  * extension[linkId].valueString = "LINK_59e4d2bd-f4b7-450e-b818-8fa84cebe058"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
    <a name="LINK_59e4d2bd-f4b7-450e-b818-8fa84cebe058"/>
                 <p>Allopurinol acts on purine catabolism, without disrupting the biosynthesis of purines. It reduces the production of uric acid by inhibiting the biochemical reactions immediately preceding its formation.</p>
                  <p>Allopurinol is a structural analogue of the natural purine base, hypoxanthine. It is an inhibitor of xanthine oxidase, the enzyme responsible for the conversion of hypoxanthine to xanthine and of xanthine to uric acid, the end product of purine metabolism in man. Allopurinol is metabolized to the corresponding xanthine analogue, oxipurinol (alloxanthine), which also is an inhibitor of xanthine oxidase.</p>
                 <img alt="Allopurinol is a structural analogue of the natural purine base, hypoxanthine. It is an inhibitor of xanthine oxidase, the enzyme responsible for the conversion of hypoxanthine to xanthine and of xanthine to uric acid, the end product of purine metabolism in man. Allopurinol is metabolized to the corresponding xanthine analogue, oxipurinol (alloxanthine), which also is an inhibitor of xanthine oxidase." src="allopurinol-usp-2.jpg"/>
                  <p>It has been shown that reutilization of both hypoxanthine and xanthine for nucleotide and nucleic acid synthesis is markedly enhanced when their oxidations are inhibited by allopurinol and oxipurinol. This reutilization does not disrupt normal nucleic acid anabolism, however, because feedback inhibition is an integral part of purine biosynthesis. As a result of xanthine oxidase inhibition, the serum concentration of hypoxanthine plus xanthine in patients receiving allopurinol for treatment of hyperuricemia is usually in the range of 0.3 to 0.4 mg/dL compared to a normal level of approximately 0.15 mg/dL. A maximum of 0.9 mg/dL of these oxypurines has been reported when the serum urate was lowered to less than 2 mg/dL by high doses of allopurinol. These values are far below the saturation levels at which point their precipitation would be expected to occur (above 7 mg/dL).</p>
                  <p>The renal clearance of hypoxanthine and xanthine is at least 10 times greater than that of uric acid. The increased xanthine and hypoxanthine in the urine have not been accompanied by problems of nephrolithiasis. Xanthine crystalluria has been reported in only three patients. Two of the patients had Lesch-Nyhan syndrome, which is characterized by excessive uric acid production combined with a deficiency of the enzyme, hypoxanthine-guanine phosphoribosyltransferase (HGPRTase). This enzyme is required for the conversion of hypoxanthine, xanthine, and guanine to their respective nucleotides. The third patient had lymphosarcoma and produced an extremely large amount of uric acid because of rapid cell lysis during chemotherapy.</p>
                  <p>Allopurinol is approximately 90% absorbed from the gastrointestinal tract. Peak plasma levels generally occur at 1.5 hours and 4.5 hours for allopurinol and oxipurinol, respectively, and after a single oral dose of 300 mg allopurinol, maximum plasma levels of about 3 mcg/mL of allopurinol and 6.5 mcg/mL of oxipurinol are produced.</p>
                  <p>Approximately 20% of the ingested allopurinol is excreted in the feces. Because of its rapid oxidation to oxipurinol and a renal clearance rate approximately that of the glomerular filtration rate, allopurinol has a plasma half-life of about 1-2 hours. Oxipurinol, however, has a longer plasma half-life (approximately 15 hours), and therefore effective xanthine oxidase inhibition is maintained over a 24-hour period with single daily doses of allopurinol. Whereas allopurinol is cleared essentially by glomerular filtration, oxipurinol is reabsorbed in the kidney tubules in a manner similar to the reabsorption of uric acid.</p>
                  <p>The clearance of oxipurinol is increased by uricosuric drugs, and as a consequence, the addition of a uricosuric agent reduces to some degree the inhibition of xanthine oxidase by oxipurinol and increases to some degree the urinary excretion of uric acid. In practice, the net effect of such combined therapy may be useful in some patients in achieving minimum serum uric acid levels provided the total urinary uric acid load does not exceed the competence of the patient’s renal function.</p>
                  <p>Hyperuricemia may be primary, as in gout, or secondary to diseases such as acute and chronic leukemia, polycythemia vera, multiple myeloma, and psoriasis. It may occur with the use of diuretic agents, during renal dialysis, in the presence of renal damage, during starvation or reducing diets, and in the treatment of neoplastic disease where rapid resolution of tissue masses may occur. Asymptomatic hyperuricemia is not an indication for allopurinol treatment (see <a href="#LINK_8d8866aa-96fb-4067-91f5-d0afb15fd181">INDICATIONS AND USAGE</a>).</p>
                  <p>Gout is a metabolic disorder which is characterized by hyperuricemia and resultant deposition of monosodium urate in the tissues, particularly the joints and kidneys. The etiology of this hyperuricemia is the overproduction of uric acid in relation to the patient’s ability to excrete it. If progressive deposition of urates is to be arrested or reversed, it is necessary to reduce the serum uric acid level below the saturation point to suppress urate precipitation.</p>
                  <p>Administration of allopurinol generally results in a fall in both serum and urinary uric acid within two to three days. The degree of this decrease can be manipulated almost at will since it is dose-dependent. A week or more of treatment with allopurinol may be required before its full effects are manifested; likewise, uric acid may return to pretreatment levels slowly (usually after a period of seven to ten days following cessation of therapy). This reflects primarily the accumulation and slow clearance of oxipurinol. In some patients a dramatic fall in urinary uric acid excretion may not occur, particularly in those with severe tophaceous gout. It has been postulated that this may be due to the mobilization of urate from tissue deposits as the serum uric acid level begins to fall.</p>
                  <p>Allopurinol’s action differs from that of uricosuric agents, which lower the serum uric acid level by increasing urinary excretion of uric acid. Allopurinol reduces both the serum and urinary uric acid levels by inhibiting the formation of uric acid. The use of allopurinol to block the formation of urates avoids the hazard of increased renal excretion of uric acid posed by uricosuric drugs.</p>
                  <p>Allopurinol can substantially reduce serum and urinary uric acid levels in previously refractory patients even in the presence of renal damage serious enough to render uricosuric drugs virtually ineffective. Salicylates may be given conjointly for their antirheumatic effect without compromising the action of allopurinol. This is in contrast to the nullifying effect of salicylates on uricosuric drugs.</p>
                  <p>Allopurinol also inhibits the enzymatic oxidation of mercaptopurine, the sulfur-containing analogue of hypoxanthine, to 6-thiouric acid. This oxidation, which is catalyzed by xanthine oxidase, inactivates mercaptopurine. Hence, the inhibition of such oxidation by allopurinol may result in as much as a 75% reduction in the therapeutic dose requirement of mercaptopurine when the two compounds are given together.</p>
  </div></div>"""
* section[+]
  * code = http://loinc.org#34067-9 "INDICATIONS &amp; USAGE SECTION"
  * title = "INDICATIONS AND USAGE"
  * id = "6acdac7d-4f8c-43fc-b343-af915819a9fc"
  * extension[sectionTime].valueDateTime = "2015-02-01"
  * extension[linkId].valueString = "LINK_6acdac7d-4f8c-43fc-b343-af915819a9fc"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_6acdac7d-4f8c-43fc-b343-af915819a9fc"/>
                  <p>THIS IS NOT AN INNOCUOUS DRUG. IT IS NOT RECOMMENDED FOR THE TREATMENT OF ASYMPTOMATIC HYPERURICEMIA.</p>
                  <p>Allopurinol reduces serum and urinary uric acid concentrations. Its use should be individualized for each patient and requires an understanding of its mode of action and pharmacokinetics (see <a href="#LINK_a40ab137-2a6b-479b-96b1-36b0fc4c67c3">CLINICAL PHARMACOLOGY</a>, <a href="#LINK_7398b442-5023-4297-aa01-5a130fe3c96c">CONTRAINDICATIONS</a>, <a href="#LINK_b7a6bbd9-20c6-438b-a363-5b2d8e482eef">WARNINGS</a> and <a href="#LINK_fa054c2f-7ce9-4749-b24a-579278b7044e">PRECAUTIONS</a>).</p>
                  <p>Allopurinol is indicated in:<br/>
                  </p>
                  <ol style="list-style-type: decimal">
                     <li>
                        <p>the management of patients with signs and symptoms of primary or secondary gout (acute attacks, tophi, joint destruction, uric acid lithiasis, and/or nephropathy).</p>
                     </li>
                     <li>
                        <p>the management of patients with leukemia, lymphoma and malignancies who are receiving cancer therapy which causes elevations of serum and urinary uric acid levels. Allopurinol treatment should be discontinued when the potential for overproduction of uric acid is no longer present.</p>
                     </li>
                     <li>
                        <p>the management of patients with recurrent calcium oxalate calculi whose daily uric acid excretion exceeds 800 mg/day in male patients and 750 mg/day in female patients. Therapy in such patients should be carefully assessed initially and reassessed periodically to determine in each case that treatment is beneficial and that the benefits outweigh the risks.</p>
                     </li>
                  </ol>
  </div></div>"""
* section[+]
  * code = http://loinc.org#34070-3 "CONTRAINDICATIONS SECTION"
  * title = "CONTRAINDICATIONS"
  * id = "b35d50ec-5df6-4b2b-89bb-945cf7f820a0"
  * extension[sectionTime].valueDateTime = "2015-02-01"
  * extension[linkId].valueString = "LINK_b35d50ec-5df6-4b2b-89bb-945cf7f820a0"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_b35d50ec-5df6-4b2b-89bb-945cf7f820a0"/>
  <p>Patients who have developed a severe reaction to allopurinol should not be restarted on the drug.</p>
  </div></div>"""
* section[+]
  * code = http://loinc.org#34071-1 "WARNINGS SECTION"
  * title = "WARNINGS"
  * id = "06d28263-017c-459e-8ee3-7ba3ce78281b"
  * extension[sectionTime].valueDateTime = "2015-02-01"
  * extension[linkId].valueString = "LINK_06d28263-017c-459e-8ee3-7ba3ce78281b"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_06d28263-017c-459e-8ee3-7ba3ce78281b"/>
                  <p>ALLOPURINOL SHOULD BE DISCONTINUED AT THE FIRST APPEARANCE OF SKIN RASH OR OTHER SIGNS WHICH MAY INDICATE AN ALLERGIC REACTION. In some instances a skin rash may be followed by more severe hypersensitivity reactions such as exfoliative, urticarial and purpuric lesions as well as Stevens-Johnson Syndrome (erythema multiforme exudativum) and/or generalized vasculitis, irreversible hepatotoxicity and on rare occasions, death.</p>
                  <p>In patients receiving mercaptopurine or azathioprine, the concomitant administration of 300 to 600 mg of allopurinol per day will require a reduction in dose to approximately one-third to one-fourth of the usual dose of mercaptopurine or azathioprine. Subsequent adjustment of doses of mercaptopurine or azathioprine should be made on the basis of therapeutic response and the appearance of toxic effects (see <a href="#LINK_a40ab137-2a6b-479b-96b1-36b0fc4c67c3">CLINICAL PHARMACOLOGY</a>).</p>
                  <p>A few cases of reversible clinical hepatotoxicity have been noted in patients taking allopurinol, and in some patients asymptomatic rises in serum alkaline phosphatase or serum transaminase have been observed. If anorexia, weight loss or pruritus develop in patients on allopurinol, evaluation of liver function should be part of their diagnostic workup. In patients with pre-existing liver disease, periodic liver function tests are recommended during the early stages of therapy.</p>
                  <p>Due to the occasional occurrence of drowsiness, patients should be alerted to the need for due precaution when engaging in activities where alertness is mandatory.</p>
                  <p>The occurrence of hypersensitivity reactions to allopurinol may be increased in patients with decreased renal function receiving thiazides and allopurinol concurrently. For this reason, in this clinical setting, such combinations should be administered with caution and patients should be observed closely.</p>
  </div></div>"""
* section[+]
  * code = http://loinc.org#42232-9 "PRECAUTIONS SECTION"
  * title = "PRECAUTIONS"
  * id = "6cbcf459-599d-4cc1-b5a2-087718fe5ab3"
  * extension[sectionTime].valueDateTime = "2015-02-01"
  * section[0]
    * code = http://loinc.org#34072-9 "GENERAL PRECAUTIONS SECTION"
    * title = "General"
    * id = "608f0f5d-3f16-4e92-a477-9910493e4a71"
    * extension[sectionTime].valueDateTime = "2015-02-01"
    * extension[linkId].valueString = "LINK_608f0f5d-3f16-4e92-a477-9910493e4a71"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_608f0f5d-3f16-4e92-a477-9910493e4a71"/>
                        <p>An increase in acute attacks of gout has been reported during the early stages of allopurinol administration, even when normal or subnormal serum uric acid levels have been attained. Accordingly, maintenance doses of colchicine generally should be given prophylactically when allopurinol is begun. In addition, it is recommended that the patient start with a low dose of allopurinol (100 mg daily) and increase at weekly intervals by 100 mg until a serum uric acid level of 6 mg/dL or less is attained but without exceeding the maximum recommended dose (800 mg per day). The use of colchicine or anti-inflammatory agents may be required to suppress gouty attacks in some cases. The attacks usually become shorter and less severe after several months of therapy. The mobilization of urates from tissue deposits which cause fluctuations in the serum uric acid levels may be a possible explanation for these episodes. Even with adequate allopurinol therapy, it may require several months to deplete the uric acid pool sufficiently to achieve control of the acute attacks.</p>
                        <p>A fluid intake sufficient to yield a daily urinary output of at least 2 liters and the maintenance of a neutral or, preferably, slightly alkaline urine are desirable to (1) avoid the theoretical possibility of formation of xanthine calculi under the influence of allopurinol therapy and (2) help prevent renal precipitation of urates in patients receiving concomitant uricosuric agents.</p>
                        <p>Some patients with pre-existing renal disease or poor urate clearance have shown a rise in BUN during allopurinol administration. Although the mechanism responsible for this has not been established, patients with impaired renal function should be carefully observed during the early stages of allopurinol administration and the dosage decreased or the drug withdrawn if increased abnormalities in renal function appear and persist.</p>
                        <p>Renal failure in association with allopurinol administration has been observed among patients with hyperuricemia secondary to neoplastic diseases. Concurrent conditions such as multiple myeloma and congestive myocardial disease were present among those patients whose renal dysfunction increased after allopurinol was begun. Renal failure is also frequently associated with gouty nephropathy and rarely with hypersensitivity reactions associated with allopurinol. Albuminuria has been observed among patients who developed clinical gout following chronic glomerulonephritis and chronic pyelonephritis.</p>
                        <p>Patients with decreased renal function require lower doses of allopurinol than those with normal renal function. Lower than recommended doses should be used to initiate therapy in any patients with decreased renal function and they should be observed closely during the early stages of allopurinol administration. In patients with severely impaired renal function or decreased urate clearance, the half-life of oxipurinol in the plasma is greatly prolonged. Therefore, a dose of 100 mg per day or 300 mg twice a week, or perhaps less, may be sufficient to maintain adequate xanthine oxidase inhibition to reduce serum urate levels.</p>
                        <p>Bone marrow depression has been reported in patients receiving allopurinol, most of whom received concomitant drugs with the potential for causing this reaction. This has occurred as early as six weeks to as long as six years after the initiation of allopurinol therapy. Rarely a patient may develop varying degrees of bone marrow depression, affecting one or more cell lines, while receiving allopurinol alone.</p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#34076-0 "INFORMATION FOR PATIENTS SECTION"
    * title = "Information for Patients"
    * id = "7835c074-c780-4280-8c90-396974a9d2ca"
    * extension[sectionTime].valueDateTime = "2015-02-01"
    * extension[linkId].valueString = "LINK_7835c074-c780-4280-8c90-396974a9d2ca"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_7835c074-c780-4280-8c90-396974a9d2ca"/>
                        <p>Patients should be informed of the following:<br/>(1) They should be cautioned to discontinue allopurinol and to consult their physician immediately at the first sign of a skin rash, painful urination, blood in the urine, irritation of the eyes, or swelling of the lips or mouth. (2) They should be reminded to continue drug therapy prescribed for gouty attacks since optimal benefit of allopurinol may be delayed for two to six weeks. (3) They should be encouraged to increase fluid intake during therapy to prevent renal stones. (4) If a single dose of allopurinol is occasionally forgotten, there is no need to double the dose at the next scheduled time. (5) There may be certain risks associated with the concomitant use of allopurinol and dicumarol, sulfinpyrazone, mercaptopurine, azathioprine, ampicillin, amoxicillin and thiazide diuretics, and they should follow the instructions of their physician. (6) Due to the occasional occurrence of drowsiness, patients should take precautions when engaging in activities where alertness is mandatory. (7) Patients may wish to take allopurinol after meals to minimize gastric irritation.</p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#34075-2 "LABORATORY TESTS SECTION"
    * title = "Laboratory Tests"
    * id = "a4a68c8a-f98c-484e-b549-bb49400d689d"
    * extension[sectionTime].valueDateTime = "2015-02-01"
    * extension[linkId].valueString = "LINK_a4a68c8a-f98c-484e-b549-bb49400d689d"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_a4a68c8a-f98c-484e-b549-bb49400d689d"/>
                        <p>The correct dosage and schedule for maintaining the serum uric acid within the normal range is best determined by using the serum uric acid level as an index.</p>
                        <p>In patients with pre-existing liver disease, periodic liver function tests are recommended during the early stages of therapy (see <a href="#LINK_b7a6bbd9-20c6-438b-a363-5b2d8e482eef">WARNINGS</a>).</p>
                        <p>Allopurinol and its primary active metabolite oxipurinol are eliminated by the kidneys; therefore, changes in renal function have a profound effect on dosage. In patients with decreased renal function or who have concurrent illnesses which can affect renal function such as hypertension and diabetes mellitus, periodic laboratory parameters of renal function, particularly BUN and serum creatinine or creatinine clearance, should be performed and the patient’s allopurinol dosage reassessed.</p>
                        <p>The prothrombin time should be reassessed periodically in the patients receiving dicumarol who are given allopurinol.</p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#34073-7 "DRUG INTERACTIONS SECTION"
    * title = "Drug Interactions"
    * id = "e5d01bfc-239f-4e4a-9dd8-cbc7b6536cfd"
    * extension[sectionTime].valueDateTime = "2015-02-01"
    * extension[linkId].valueString = "LINK_e5d01bfc-239f-4e4a-9dd8-cbc7b6536cfd"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_e5d01bfc-239f-4e4a-9dd8-cbc7b6536cfd"/>
                        <p>In patients receiving mercaptopurine or azathioprine, the concomitant administration of 300-600 mg of allopurinol per day will require a reduction in dose to approximately one-third to one-fourth of the usual dose of mercaptopurine or azathioprine. Subsequent adjustment of doses of mercaptopurine or azathioprine should be made on the basis of therapeutic response and the appearance of toxic effects (see <a href="#LINK_a40ab137-2a6b-479b-96b1-36b0fc4c67c3">CLINICAL PHARMACOLOGY</a>).</p>
                        <p>It has been reported that allopurinol prolongs the half-life of the anticoagulant, dicumarol. The clinical basis of this drug interaction has not been established but should be noted when allopurinol is given to patients already on dicumarol therapy.</p>
                        <p>Since the excretion of oxipurinol is similar to that of urate, uricosuric agents, which increase the excretion of urate, are also likely to increase the excretion of oxipurinol and thus lower the degree of inhibition of xanthine oxidase. The concomitant administration of uricosuric agents and allopurinol has been associated with a decrease in the excretion of oxypurines (hypoxanthine and xanthine) and an increase in urinary uric acid excretion compared with that observed with allopurinol alone. Although clinical evidence to date has not demonstrated renal precipitation of oxypurines in patients either on allopurinol alone or in combination with uricosuric agents, the possibility should be kept in mind.</p>
                        <p>The reports that the concomitant use of allopurinol and thiazide diuretics may contribute to the enhancement of allopurinol toxicity in some patients have been reviewed in an attempt to establish a cause-and-effect relationship and a mechanism of causation. Review of these case reports indicates that the patients were mainly receiving thiazide diuretics for hypertension and that tests to rule out decreased renal function secondary to hypertensive nephropathy were not often performed. In those patients in whom renal insufficiency was documented, however, the recommendation to lower the dose of allopurinol was not followed. Although a causal mechanism and a cause-and-effect relationship have not been established, current evidence suggests that renal function should be monitored in patients on thiazide diuretics and allopurinol even in the absence of renal failure, and dosage levels should be even more conservatively adjusted in those patients on such combined therapy if diminished renal function is detected.</p>
                        <p>An increase in the frequency of skin rash has been reported among patients receiving ampicillin or amoxicillin concurrently with allopurinol compared to patients who are not receiving both drugs. The cause of the reported association has not been established.</p>
                        <p>Enhanced bone marrow suppression by cyclophosphamide and other cytotoxic agents has been reported among patients with neoplastic disease, except leukemia, in the presence of allopurinol. However, in a well-controlled study of patients with lymphoma on combination therapy, allopurinol did not increase the marrow toxicity of patients treated with cyclophosphamide, doxorubicin, bleomycin, procarbazine and/or mechlorethamine.</p>
                        <p>Tolbutamide’s conversion to inactive metabolites has been shown to be catalyzed by xanthine oxidase from rat liver. The clinical significance, if any, of this observation is unknown.</p>
                        <p>Chlorpropamide’s plasma half-life may be prolonged by allopurinol, since allopurinol and chlorpropamide may compete for excretion in the renal tubule. The risk of hypoglycemia secondary to this mechanism may be increased if allopurinol and chlorpropamide are given concomitantly in the presence of renal insufficiency.</p>
                        <p>Rare reports indicate that cyclosporine levels may be increased during concomitant treatment with allopurinol. Monitoring of cyclosporine levels and possible adjustment of cyclosporine dosage should be considered when these drugs are co-administered.</p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#34074-5 "DRUG &amp; OR LABORATORY TEST INTERACTIONS SECTION"
    * title = "Drug/Laboratory Interactions"
    * id = "9dd437d2-18f7-4b7a-b923-a8bb059819bb"
    * extension[sectionTime].valueDateTime = "2015-02-01"
    * extension[linkId].valueString = "LINK_9dd437d2-18f7-4b7a-b923-a8bb059819bb"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_9dd437d2-18f7-4b7a-b923-a8bb059819bb"/>
                        <p>Allopurinol is not known to alter the accuracy of laboratory tests.</p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#42228-7 "PREGNANCY SECTION"
    * title = "Pregnancy"
    * id = "79c16c6d-b609-47ae-a496-d81856897d29"
    * extension[sectionTime].valueDateTime = "2015-02-01"
    * extension[linkId].valueString = "LINK_79c16c6d-b609-47ae-a496-d81856897d29"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_79c16c6d-b609-47ae-a496-d81856897d29"/>
                        <p>
                           <span style="font-style: italic">Teratogenic Effects</span>
                        </p>
                        <p>Pregnancy Category C. Reproductive studies have been performed in rats and rabbits at doses up to twenty times the usual human dose (5 mg/kg/day), and it was concluded that there was no impaired fertility or harm to the fetus due to allopurinol. There is a published report of a study in pregnant mice given 50 or 100 mg/kg allopurinol intraperitoneally on gestation days 10 or 13. There were increased numbers of dead fetuses in dams given 100 mg/kg allopurinol but not in those given 50 mg/kg. There were increased numbers of external malformations in fetuses at both doses of allopurinol on gestation day 10 and increased numbers of skeletal malformations in fetuses at both doses on gestation day 13. It cannot be determined whether this represented a fetal effect or an effect secondary to maternal toxicity. There are, however, no adequate or well-controlled studies in pregnant women. Because animal reproduction studies are not always predictive of human response, this drug should be used during pregnancy only if clearly needed.</p>
                        <p>Experience with allopurinol during human pregnancy has been limited partly because women of reproductive age rarely require treatment with allopurinol. There are two unpublished reports and one published paper of women giving birth to normal offspring after receiving allopurinol during pregnancy.</p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#34080-2 "NURSING MOTHERS SECTION"
    * title = "Nursing Mothers"
    * id = "8c94cb61-06ed-4113-9f18-642df0258487"
    * extension[sectionTime].valueDateTime = "2015-02-01"
    * extension[linkId].valueString = "LINK_8c94cb61-06ed-4113-9f18-642df0258487"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_8c94cb61-06ed-4113-9f18-642df0258487"/>
                        <p>Allopurinol and oxipurinol have been found in the milk of a mother who was receiving allopurinol. Since the effect of allopurinol on the nursing infant is unknown, caution should be exercised when allopurinol is administered to a nursing woman.</p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#34081-0 "PEDIATRIC USE SECTION"
    * title = "Pediatric Use"
    * id = "14d06afe-0771-4f4e-be98-85a293055584"
    * extension[sectionTime].valueDateTime = "2015-02-01"
    * extension[linkId].valueString = "LINK_14d06afe-0771-4f4e-be98-85a293055584"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_14d06afe-0771-4f4e-be98-85a293055584"/>
                        <p>Allopurinol is rarely indicated for use in children with the exception of those with hyperuricemia secondary to malignancy or to certain rare inborn errors of purine metabolism (see <a href="#LINK_8d8866aa-96fb-4067-91f5-d0afb15fd181">INDICATIONS AND USAGE</a> and <a href="#LINK_cc20ed18-39c1-4e48-a1a6-025ee34e655b">DOSAGE AND ADMINISTRATION</a>).</p>
    </div></div>"""
* section[+]
  * code = http://loinc.org#34084-4 "ADVERSE REACTIONS SECTION"
  * title = "ADVERSE REACTIONS"
  * id = "044a080a-fae6-40fb-8bc8-c2da0de26ed5"
  * extension[sectionTime].valueDateTime = "2015-02-01"
  * extension[linkId].valueString = "LINK_044a080a-fae6-40fb-8bc8-c2da0de26ed5"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_044a080a-fae6-40fb-8bc8-c2da0de26ed5"/>
                  <p>Data upon which the following estimates of incidence of adverse reactions are made are derived from experiences reported in the literature, unpublished clinical trials and voluntary reports since marketing of allopurinol began. Past experience suggested that the most frequent event following the initiation of allopurinol treatment was an increase in acute attacks of gout (average 6% in early studies). An analysis of current usage suggests that the incidence of acute gouty attacks has diminished to less than 1%. The explanation for this decrease has not been determined but may be due in part to initiating therapy more gradually (see <a href="#LINK_fa054c2f-7ce9-4749-b24a-579278b7044e">PRECAUTIONS</a> and <a href="#LINK_cc20ed18-39c1-4e48-a1a6-025ee34e655b">DOSAGE AND ADMINISTRATION</a>).</p>
                  <p>The most frequent adverse reaction to allopurinol is skin rash. Skin reactions can be severe and sometimes fatal. Therefore, treatment with allopurinol should be discontinued immediately if a rash develops (see <a href="#LINK_b7a6bbd9-20c6-438b-a363-5b2d8e482eef">WARNINGS</a>). Some patients with the most severe reaction also had fever, chills, arthralgias, cholestatic jaundice, eosinophilia and mild leukocytosis or leukopenia. Among 55 patients with gout treated with allopurinol for 3 to 34 months (average greater than 1 year) and followed prospectively, Rundles observed that 3% of patients developed a type of drug reaction which was predominantly a pruritic maculopapular skin eruption, sometimes scaly or exfoliative. However, with current usage, skin reactions have been observed less frequently than 1%. The explanation for this decrease is not obvious. The incidence of skin rash may be increased in the presence of renal insufficiency. The frequency of skin rash among patients receiving ampicillin or amoxicillin concurrently with allopurinol has been reported to be increased (see <a href="#LINK_fa054c2f-7ce9-4749-b24a-579278b7044e">PRECAUTIONS</a>).</p>
  </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * title = "Most Common Reactions*<br/>Probably Causally Related"
    * id = "7293d495-3de6-4a5d-bf8f-22f8c8ea5530"
    * extension[sectionTime].valueDateTime = "2015-02-01"
    * extension[linkId].valueString = "LINK_7293d495-3de6-4a5d-bf8f-22f8c8ea5530"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_7293d495-3de6-4a5d-bf8f-22f8c8ea5530"/>
                        <p>
                           <span style="font-style: italic">Gastrointestinal:</span> diarrhea, nausea, alkaline phosphatase increase, SGOT/ SGPT increase</p>
                        <p>
                           <span style="font-style: italic">Metabolic and Nutritional:</span> acute attacks of gout</p>
                        <p>
                           <span style="font-style: italic">Skin and Appendages:</span> rash, maculopapular rash</p>
                        <p>*Early clinical studies and incidence rates from early clinical experience with allopurinol suggested that these adverse reactions were found to occur at a rate of greater than 1%. The most frequent event observed was acute attacks of gout following the initiation of therapy. Analyses of current usage suggest that the incidence of these adverse reactions is now less than 1%. The explanation for this decrease has not been determined, but it may be due to following recommended usage (see <a href="#LINK_73b1aa92-bc75-499e-8562-0312c7817392">ADVERSE REACTIONS</a> introduction, <a href="#LINK_8d8866aa-96fb-4067-91f5-d0afb15fd181">INDICATIONS AND USAGE</a>, <a href="#LINK_fa054c2f-7ce9-4749-b24a-579278b7044e">PRECAUTIONS</a> and <a href="#LINK_cc20ed18-39c1-4e48-a1a6-025ee34e655b">DOSAGE AND ADMINISTRATION</a>).</p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * title = "Incidence Less Than 1%<br/>Probably Causally Related"
    * id = "08cbbce9-2b10-46df-9cf7-3a25c2c09e43"
    * extension[sectionTime].valueDateTime = "2015-02-01"
    * extension[linkId].valueString = "LINK_08cbbce9-2b10-46df-9cf7-3a25c2c09e43"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_08cbbce9-2b10-46df-9cf7-3a25c2c09e43"/>
                        <p>
                           <span style="font-style: italic">Body as a whole:</span> ecchymosis, fever, headache</p>
                        <p>
                           <span style="font-style: italic">Cardiovascular:</span> necrotizing angiitis, vasculitis</p>
                        <p>
                           <span style="font-style: italic">Gastrointestinal:</span> hepatic necrosis, granulomatous hepatitis, hepatomegaly, hyperbilirubinemia, cholestatic jaundice, vomiting, intermittent abdominal pain, gastritis, dyspepsia</p>
                        <p>
                           <span style="font-style: italic">Hemic and Lymphatic:</span> thrombocytopenia, eosinophilia, leukocytosis, leukopenia</p>
                        <p>
                           <span style="font-style: italic">Musculoskeletal:</span> myopathy, arthralgias</p>
                        <p>
                           <span style="font-style: italic">Nervous:</span> peripheral neuropathy, neuritis, paresthesia, somnolence</p>
                        <p>
                           <span style="font-style: italic">Respiratory: </span>epistaxis</p>
                        <p>
                           <span style="font-style: italic">Skin and Appendages:</span> erythema multiforme exudativum (Stevens-Johnson syndrome), toxic epidermal necrolysis (Lyell’s syndrome), hypersensitivity vasculitis, purpura, vesicular bullous dermatitis, exfoliative dermatitis, eczematoid dermatitis, pruritus, urticaria, alopecia, onycholysis, lichen planus</p>
                        <p>
                           <span style="font-style: italic">Special Senses: </span>taste loss/perversion</p>
                        <p>
                           <span style="font-style: italic">Urogenital:</span> renal failure, uremia (see <a href="#LINK_fa054c2f-7ce9-4749-b24a-579278b7044e">PRECAUTIONS</a>)</p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * title = "Incidence Less Than 1%<br/>Causal Relationship Unknown"
    * id = "2db4d0d4-af2d-499e-9d83-7c37e3454b2b"
    * extension[sectionTime].valueDateTime = "2015-02-01"
    * extension[linkId].valueString = "LINK_2db4d0d4-af2d-499e-9d83-7c37e3454b2b"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_2db4d0d4-af2d-499e-9d83-7c37e3454b2b"/>
                        <p>
                           <span style="font-style: italic">Body as a whole: </span>malaise</p>
                        <p>
                           <span style="font-style: italic">Cardiovascular:</span> pericarditis, peripheral vascular disease, thrombophlebitis, bradycardia, vasodilation</p>
                        <p>
                           <span style="font-style: italic">Endocrine:</span> infertility (male), hypercalcemia, gynecomastia (male)</p>
                        <p>
                           <span style="font-style: italic">Gastrointestinal:</span> hemorrhagic pancreatitis, gastrointestinal bleeding, stomatitis, salivary gland swelling, hyperlipidemia, tongue edema, anorexia</p>
                        <p>
                           <span style="font-style: italic">Hemic and Lymphatic:</span> aplastic anemia, agranulocytosis, eosinophilic fibrohistiocytic lesion of bone marrow, pancytopenia, prothrombin decrease, anemia, hemolytic anemia, reticulocytosis, lymphadenopathy, lymphocytosis</p>
                        <p>
                           <span style="font-style: italic">Musculoskeletal:</span> myalgia</p>
                        <p>
                           <span style="font-style: italic">Nervous:</span> optic neuritis, confusion, dizziness, vertigo, foot drop, decrease in libido, depression, amnesia, tinnitus, asthenia, insomnia</p>
                        <p>
                           <span style="font-style: italic">Respiratory:</span> bronchospasm, asthma, pharyngitis, rhinitis</p>
                        <p>
                           <span style="font-style: italic">Skin and appendages:</span> furunculosis, facial edema, sweating, skin edema</p>
                        <p>
                           <span style="font-style: italic">Special Senses:</span> cataracts, macular retinitis, iritis, conjunctivitis, amblyopia</p>
                        <p>
                           <span style="font-style: italic">Urogenital: </span>nephritis, impotence, primary hematuria, albuminuria</p>
                        <p>
                           <span style="font-weight: bold">T</span>
                           <span style="font-weight: bold">o report SUSPECTED ADVERSE EVENTS, contact Actavis at 1-800-272-5525 or FDA at 1-800- FDA-1088 or </span>
                           <span style="font-weight: bold">
                              <span style="text-decoration: underline">h</span>
                           </span>
                           <span style="font-weight: bold">
                              <span style="text-decoration: underline">tt</span>
                           </span>
                           <span style="font-weight: bold">
                              <span style="text-decoration: underline">p</span>
                           </span>
                           <span style="font-weight: bold">
                              <span style="text-decoration: underline">:</span>
                           </span>
                           <span style="font-weight: bold">
                              <span style="text-decoration: underline">//</span>
                           </span>
                           <span style="font-weight: bold">
                              <span style="text-decoration: underline">w</span>
                           </span>
                           <span style="font-weight: bold">
                              <span style="text-decoration: underline">w</span>
                           </span>
                           <span style="font-weight: bold">
                              <span style="text-decoration: underline">w</span>
                           </span>
                           <span style="font-weight: bold">
                              <span style="text-decoration: underline">.</span>
                           </span>
                           <span style="font-weight: bold">
                              <span style="text-decoration: underline">f</span>
                           </span>
                           <span style="font-weight: bold">
                              <span style="text-decoration: underline">d</span>
                           </span>
                           <span style="font-weight: bold">
                              <span style="text-decoration: underline">a.gov/</span>
                           </span>
                           <span style="font-weight: bold"> for voluntary reporting of adverse reactions.</span>
                        </p>
    </div></div>"""
* section[+]
  * code = http://loinc.org#34088-5 "OVERDOSAGE SECTION"
  * title = "OVERDOSAGE"
  * id = "e1fd78ab-2564-468e-a7ca-02c94076fbe6"
  * extension[sectionTime].valueDateTime = "2015-02-01"
  * extension[linkId].valueString = "LINK_e1fd78ab-2564-468e-a7ca-02c94076fbe6"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_e1fd78ab-2564-468e-a7ca-02c94076fbe6"/>
                  <p>Massive overdosing or acute poisoning by allopurinol has not been reported.</p>
                  <p>In mice the 50% lethal dose (LD<sub>50</sub>) is 160 mg/kg given intraperitoneally (i.p.) with deaths delayed up to five days and 700 mg/kg orally (p.o.) (approximately 140 times the usual human dose) with deaths delayed up to three days. In rats the acute LD<sub>50</sub> is 750 mg/kg i.p. and 6000 mg/kg p.o. (approximately 1200 times the human dose).</p>
                  <p>In the management of overdosage there is no specific antidote for allopurinol. There has been no clinical experience in the management of a patient who has taken massive amounts of allopurinol.</p>
                  <p>Both allopurinol and oxipurinol are dialyzable; however, the usefulness of hemodialysis or peritoneal dialysis in the management of an allopurinol overdosage is unknown.</p>
  </div></div>"""
* section[+]
  * code = http://loinc.org#34068-7 "DOSAGE &amp; ADMINISTRATION SECTION"
  * title = "DOSAGE AND ADMINISTRATION"
  * id = "cca9f179-7891-430a-b366-adb8d90b3686"
  * extension[sectionTime].valueDateTime = "2015-02-01"
  * extension[linkId].valueString = "LINK_cca9f179-7891-430a-b366-adb8d90b3686"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_cca9f179-7891-430a-b366-adb8d90b3686"/>
                  <p>The dosage of allopurinol to accomplish full control of gout and to lower serum uric acid to normal or near-normal levels varies with the severity of the disease. The average is 200 to 300 mg per day for patients with mild gout and 400 to 600 mg per day for those with moderately severe tophaceous gout. The appropriate dosage may be administered in divided doses or as a single equivalent dose with the 300 mg tablet. Dosage requirements in excess of 300 mg should be administered in divided doses. The minimal effective dosage is 100 to 200 mg daily and the maximal recommended dosage is 800 mg daily. To reduce the possibility of flare-up of acute gouty attacks, it is recommended that the patient start with a low dose of allopurinol (100 mg daily) and increase at weekly intervals by 100 mg until a serum uric acid level of 6 mg/dL or less is attained but without exceeding the maximal recommended dosage.</p>
                  <p>Normal serum urate levels are usually achieved in one to three weeks. The upper limit of normal is about 7 mg/dL for men and postmenopausal women and 6 mg/dL for premenopausal women. Too much reliance should not be placed on a single serum uric acid determination since, for technical reasons, estimation of uric acid may be difficult. By selecting the appropriate dosage and, in certain patients, using uricosuric agents concurrently, it is possible to reduce serum uric acid to normal or, if desired, to as low as 2 to 3 mg/dL and keep it there indefinitely.</p>
                  <p>While adjusting the dosage of allopurinol in patients who are being treated with colchicine and/or anti-inflammatory agents, it is wise to continue the latter therapy until serum uric acid has been normalized and there has been freedom from acute gouty attacks for several months.</p>
                  <p>In transferring a patient from a uricosuric agent to allopurinol, the dose of the uricosuric agent should be gradually reduced over a period of several weeks and the dose of allopurinol gradually increased to the required dose needed to maintain a normal serum uric acid level.</p>
                  <p>It should also be noted that allopurinol is generally better tolerated if taken following meals. A fluid intake sufficient to yield a daily urinary output of at least 2 liters and the maintenance of a neutral or, preferably, slightly alkaline urine are desirable.</p>
                  <p>Since allopurinol and its metabolites are primarily eliminated only by the kidney, accumulation of the drug can occur in renal failure, and the dose of allopurinol should consequently be reduced. With a creatinine clearance of 10 to 20 mL/min, a daily dosage of 200 mg of allopurinol is suitable. When the creatinine clearance is less than 10 mL/min the daily dosage should not exceed 100 mg. With extreme renal impairment (creatinine clearance less than 3 mL/min) the interval between doses may also need to be lengthened.</p>
                  <p>The correct size and frequency of dosage for maintaining the serum uric acid just within the normal range is best determined by using the serum uric acid level as an index.</p>
                  <p>For the prevention of uric acid nephropathy during the vigorous therapy of neoplastic disease, treatment with 600 to 800 mg daily for two or three days is advisable together with a high fluid intake. Otherwise similar considerations to the above recommendations for treating patients with gout govern the regulation of dosage for maintenance purposes in secondary hyperuricemia.</p>
                  <p>The dose of allopurinol recommended for management of recurrent calcium oxalate stones in hyperuricosuric patients is 200 to 300 mg/day in divided doses or as the single equivalent. This dose may be adjusted up or down depending upon the resultant control of the hyperuricosuria based upon subsequent 24 hour urinary urate determinations. Clinical experience suggests that patients with recurrent calcium oxalate stones may also benefit from dietary changes such as the reduction of animal protein, sodium, refined sugars, oxalate-rich foods, and excessive calcium intake as well as an increase in oral fluids and dietary fiber.</p>
                  <p>Children, 6 to 10 years of age, with secondary hyperuricemia associated with malignancies may be given 300 mg allopurinol daily while those under 6 years are generally given 150 mg daily. The response is evaluated after approximately 48 hours of therapy and a dosage adjustment is made if necessary.</p>
  </div></div>"""
* section[+]
  * code = http://loinc.org#34069-5 "HOW SUPPLIED SECTION"
  * title = "HOW SUPPLIED"
  * id = "a04a47d7-9c28-4464-b445-5751711779c9"
  * extension[sectionTime].valueDateTime = "2017-02-24"
  * extension[linkId].valueString = "LINK_a04a47d7-9c28-4464-b445-5751711779c9"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
				<a name="LINK_a04a47d7-9c28-4464-b445-5751711779c9"/>
                  <p>Allopurinol Tablets USP, 100 mg are scored, round, white tablets imprinted <span style="font-weight: bold">DAN DAN</span> and <span style="font-weight: bold">5543 </span>supplied in:</p>
                  <table width="32.02%">
                     <col/>
                     <tbody>
                        <tr>
                           <td>100 TABLET in a BOTTLE (53217-187-00)</td>
                        </tr>
                        <tr>
                           <td>30 TABLET in a BOTTLE (53217-187-30)</td>
                        </tr>
                        <tr>
                           <td>60 TABLET in a BOTTLE (53217-187-60)</td>
                        </tr>
                        <tr>
                           <td>90 TABLET in a BOTTLE (53217-187-90)</td>
                        </tr>
                     </tbody>
                  </table>
                  <p>Dispense in a tight, light-resistant container with child-resistant closure.</p>
                  <p>
                     <span style="font-weight: bold">Store </span>at 20°-25°C (68°-77°F). [See USP controlled room temperature.] Protect from light.</p>
                  <p>Manufactured by:<br/>Watson Pharma Private Limited<br/>Verna, Salcette Goa 403 722 INDIA</p>
                  <p>Distributed by: <br/>Actavis Pharma, Inc. <br/>Parsippany, NJ 07054 USA</p>
                  <p>Revised: February 2015</p>
                  <p>Repackaged by <br/>Aidarex Pharmaceuticals, LLC<br/>Corona, CA 92880</p>
  </div></div>"""
* section[ProductSection]
  * entry[0] = Reference(AllopurinolUSPDefinition)
  * code = http://loinc.org#48780-1 "SPL LISTING DATA ELEMENTS SECTION"
  * id = "24f6db00-e00b-4a3d-aa17-5ee56ac2708"
  * extension[sectionTime].valueDateTime = "2017-02-24"
* section[LabelDisplay]
  * code = http://loinc.org#51945-4 "PACKAGE LABEL.PRINCIPAL DISPLAY PANEL"
  * title = "PRINCIPAL DISPLAY PANEL"
  * id = "b56a6c49-58a7-4c93-96cc-5556182a98bd"
  * extension[sectionTime].valueDateTime = "2017-02-24"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative"><img alt="Image Description" src="allopurinol-usp-3.jpg"/><div>SPL Image</div></div></div>"""

Instance: AllopurinolUSPDefinition
InstanceOf: SubmittedMedicinalProduct
Description: "Structured information for the Allopurinol Tablet USP Label"
* identifier[NDCCode].value = "53217-187"
* name[Proprietary].productName = "Allopurinol"
* name[NonProprietary].productName = "Allopurinol"
* crossReference.product.concept = http://hl7.org/fhir/sid/ndc#0591-5543
* marketingStatus.status = http://hl7.org/fhir/publication-status#active
* marketingStatus.dateRange.start = "2009-04-06"
* route = $NCI-T#C38288 "ORAL"

Instance: AllopurinolTablet
InstanceOf: SubmittedManufacturedItem
* status = #active
* manufacturedDoseForm = $NCI-T#C42998 "TABLET"
* property[0].type = SubmittedMedicinalProductCharacteristicTypes#SPLCOLOR
* property[=].valueCodeableConcept = $NCI-T#C48325 "WHITE"
* property[+].type = SubmittedMedicinalProductCharacteristicTypes#SPLIMPRINT
* property[=].valueCodeableConcept.text = "DAN;DAN;5543"
* property[+].type = SubmittedMedicinalProductCharacteristicTypes#SPLSCORE
* property[=].valueQuantity.value = 2
* property[+].type = SubmittedMedicinalProductCharacteristicTypes#SPLSHAPE
* property[=].valueCodeableConcept = $NCI-T#C48348 "ROUND"
* property[+].type = SubmittedMedicinalProductCharacteristicTypes#SPLSIZE
* property[=].valueQuantity = 10 'mm' "mm"

Instance: AllopurinolUSPActiveIngredient
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Active Ingredient Strength for Allupurinol USP"
* for = Reference(AllopurinolTablet)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB
* substance.code.reference = Reference(AllopurinolIngredientDefinition)
* substance.strength.presentationRatio.numerator = 100 'mg' "mg"
* substance.strength.presentationRatio.denominator.value = 1

Instance: AllopurinolIngredientDefinition
InstanceOf: SubmittedIngredientDefinition
Description: "Active Ingredient Information for Allupurinol USP"
* identifier.system = "http://fdasis.nlm.nih.gov"
* identifier.value = "63CZ7GJN5I"
* moiety.identifier.system = "http://fdasis.nlm.nih.gov"
* moiety.identifier.value = "63CZ7GJN5I"
* moiety.name = "ALLOPURINOL"
* name.name = "ALLOPURINOL"

Instance: AllopurinolUSPIngredient1
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #1 for Allopurinol USP"
* for = Reference(AllopurinolTablet)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#M28OL1HH48 "CROSCARMELLOSE SODIUM"
Instance: AllopurinolUSPIngredient2
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #2 for Allopurinol USP"
* for = Reference(AllopurinolTablet)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#EWQ57Q8I5X "LACTOSE MONOHYDRATE"
Instance: AllopurinolUSPIngredient3
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #3 for Allopurinol USP"
* for = Reference(AllopurinolTablet)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#70097M6I30 "MAGNESIUM STEARATE"
Instance: AllopurinolUSPIngredient4
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #4 for Allopurinol USP"
* for = Reference(AllopurinolTablet)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#OP1R32D61U "CELLULOSE, MICROCRYSTALLINE"
Instance: AllopurinolUSPIngredient5
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #5 for Allopurinol USP"
* for = Reference(AllopurinolTablet)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#O8232NY3SJ "STARCH, CORN"
Instance: AllopurinolUSPIngredient6
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #6 for Allopurinol USP"
* for = Reference(AllopurinolTablet)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#368GB5141J "SODIUM LAURYL SULFATE"

Instance: Allopurinol100Tablets
InstanceOf: SubmittedMedicinalPackaging
Description: "100 Tablets Bottle of Allopurinol USP"
* packageFor = Reference(AllopurinolUSPDefinition)
* marketingStatus.status = http://hl7.org/fhir/publication-status#active
* marketingStatus.dateRange.start = "2009-04-06"
* package.identifier.system = "http://hl7.org/fhir/sid/ndc"
* package.identifier.value = "53217-187-00"
* package.containedItem.amount = 100 '1'
* package.containedItem.item.reference = Reference(AllopurinolTablet)
* package.type = $NCI-T#C43169 "BOTTLE"
* package.property.type = SubmittedMedicinalProductCharacteristicTypes#SPLCMBPRDTP
* package.property.valueCodeableConcept = $NCI-T#C112160 "Type 0: Not a Combination Product"

Instance: Allopurinol30Tablets
InstanceOf: SubmittedMedicinalPackaging
Description: "30 Tablets Bottle of Allopurinol USP"
* packageFor = Reference(AllopurinolUSPDefinition)
* marketingStatus.status = http://hl7.org/fhir/publication-status#active
* marketingStatus.dateRange.start = "2009-04-06"
* package.identifier.system = "http://hl7.org/fhir/sid/ndc"
* package.identifier.value = "53217-187-30"
* package.containedItem.amount = 30 '1'
* package.containedItem.item.reference = Reference(AllopurinolTablet)
* package.type = $NCI-T#C43169 "BOTTLE"
* package.property.type = SubmittedMedicinalProductCharacteristicTypes#SPLCMBPRDTP
* package.property.valueCodeableConcept = $NCI-T#C112160 "Type 0: Not a Combination Product"

Instance: Allopurinol60Tablets
InstanceOf: SubmittedMedicinalPackaging
Description: "60 Tablets Bottle of Allopurinol USP"
* packageFor = Reference(AllopurinolUSPDefinition)
* marketingStatus.status = http://hl7.org/fhir/publication-status#active
* marketingStatus.dateRange.start = "2009-04-06"
* package.identifier.system = "http://hl7.org/fhir/sid/ndc"
* package.identifier.value = "53217-187-60"
* package.containedItem.amount = 60 '1'
* package.containedItem.item.reference = Reference(AllopurinolTablet)
* package.type = $NCI-T#C43169 "BOTTLE"
* package.property.type = SubmittedMedicinalProductCharacteristicTypes#SPLCMBPRDTP
* package.property.valueCodeableConcept = $NCI-T#C112160 "Type 0: Not a Combination Product"

Instance: Allopurinol90Tablets
InstanceOf: SubmittedMedicinalPackaging
Description: "90 Tablets Bottle of Allopurinol USP"
* packageFor = Reference(AllopurinolUSPDefinition)
* marketingStatus.status = http://hl7.org/fhir/publication-status#active
* marketingStatus.dateRange.start = "2009-04-06"
* package.identifier.system = "http://hl7.org/fhir/sid/ndc"
* package.identifier.value = "53217-187-90"
* package.containedItem.amount = 90 '1'
* package.containedItem.item.reference = Reference(AllopurinolTablet)
* package.type = $NCI-T#C43169 "BOTTLE"
* package.property.type = SubmittedMedicinalProductCharacteristicTypes#SPLCMBPRDTP
* package.property.valueCodeableConcept = $NCI-T#C112160 "Type 0: Not a Combination Product"

Instance: AllopurinolMarketing
InstanceOf: SubmittedMedicinalProductMarketing
Description: "Marketing information for Allopurinol USP"
* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "NDA018832"
* subject = Reference(AllopurinolUSPDefinition)
* type = $NCI-T#C73594 "NDA"
* region = urn:iso:std:iso:3166#USA