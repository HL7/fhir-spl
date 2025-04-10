Instance: EnbrelSyringeLabelBundle
InstanceOf: ProductSubmissionBundle
Description: "A bundle containing all of the information for the Enbrel Label"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:77d35ee6-9485-494d-9c7a-95935cb438be"
* type = #document
* timestamp = "2021-12-13T00:00:00.0000Z"
* entry[Composition]
  * insert bundleEntry(Composition, EnbrelSyringeLabelComposition)
* entry[Labeler]
  * insert bundleEntry(Organization, ImmunexCorporation)
* entry[Product][+]
  * insert bundleEntry(MedicinalProductDefinition, Enbrel435Definition)
* entry[Item]
  * insert bundleEntry(ManufacturedItemDefinition, Enbrel50mgSolution)
* entry[Ingredient][+]
  * insert bundleEntry(Ingredient, Enbrel50mgSolutionActiveIngredient)
* entry[Substance]
  * insert bundleEntry(SubstanceDefinition, EnbrelIngredientDefinition)
* entry[Ingredient][+]
  * insert bundleEntry(Ingredient, Enbrel50mgSolutionIngredient1)
* entry[Ingredient][+]
  * insert bundleEntry(Ingredient, Enbrel50mgSolutionIngredient2)
* entry[Ingredient][+]
  * insert bundleEntry(Ingredient, Enbrel50mgSolutionIngredient3)
* entry[Packaging]
  * insert bundleEntry(PackagedProductDefinition, Enbrel435Package)
* entry[Marketing]
  * insert bundleEntry(RegulatedAuthorization, Enbrel435Marketing)
* entry[Product][+]
  * insert bundleEntry(MedicinalProductDefinition, Enbrel445Definition)
* entry[Packaging][+]
  * insert bundleEntry(PackagedProductDefinition, Enbrel445Package)
* entry[Marketing][+]
  * insert bundleEntry(RegulatedAuthorization, Enbrel445Marketing)
* entry[Product][+]
  * insert bundleEntry(MedicinalProductDefinition, Enbrel425Definition)
* entry[Product][+]
  * insert bundleEntry(MedicinalProductDefinition, Enbrel425Part1Definition)
* entry[Packaging][+]
  * insert bundleEntry(PackagedProductDefinition, Enbrel425Part1Package)
* entry[Marketing][+]
  * insert bundleEntry(RegulatedAuthorization, Enbrel425Part1Marketing)
* entry[Product][+]
  * insert bundleEntry(MedicinalProductDefinition, Enbrel425Part2Definition)
* entry[Packaging][+]
  * insert bundleEntry(PackagedProductDefinition, Enbrel425Part2Package)
* entry[Marketing][+]
  * insert bundleEntry(RegulatedAuthorization, Enbrel425Part2Marketing)
* entry[Item][+]
  * insert bundleEntry(ManufacturedItemDefinition, EnbrelPowder)
* entry[Ingredient][+]
  * insert bundleEntry(Ingredient, EnbrelPowderActiveIngredient)
* entry[Ingredient][+]
  * insert bundleEntry(Ingredient, EnbrelPowderIngredient1)
* entry[Ingredient][+]
  * insert bundleEntry(Ingredient, EnbrelPowderIngredient2)
* entry[Ingredient][+]
  * insert bundleEntry(Ingredient, EnbrelPowderIngredient3)
* entry[Item][+]
  * insert bundleEntry(ManufacturedItemDefinition, EnbrelSterileSolution)
* entry[Ingredient][+]
  * insert bundleEntry(Ingredient, EnbrelSterileSolutionIngredient1)
* entry[Ingredient][+]
  * insert bundleEntry(Ingredient, EnbrelSterileSolutionIngredient2)
* entry[Item][+]
  * insert bundleEntry(ManufacturedItemDefinition, EnbrelKit)
* entry[Packaging][+]
  * insert bundleEntry(PackagedProductDefinition, Enbrel425Package)
* entry[Marketing][+]
  * insert bundleEntry(RegulatedAuthorization, Enbrel425Marketing)
* entry[Product][+]
  * insert bundleEntry(MedicinalProductDefinition, Enbrel455Definition)
* entry[Item][+]
  * insert bundleEntry(ManufacturedItemDefinition, Enbrel25mgSolution)
* entry[Ingredient][+]
  * insert bundleEntry(Ingredient, Enbrel25mgSolutionActiveIngredient)
* entry[Ingredient][+]
  * insert bundleEntry(Ingredient, Enbrel25mgSolutionIngredient1)
* entry[Ingredient][+]
  * insert bundleEntry(Ingredient, Enbrel25mgSolutionIngredient2)
* entry[Ingredient][+]
  * insert bundleEntry(Ingredient, Enbrel25mgSolutionIngredient3)
* entry[Packaging][+]
  * insert bundleEntry(PackagedProductDefinition, Enbrel455Package)
* entry[Marketing][+]
  * insert bundleEntry(RegulatedAuthorization, Enbrel455Marketing)
* entry[Product][+]
  * insert bundleEntry(MedicinalProductDefinition, Enbrel456Definition)
* entry[Packaging][+]
  * insert bundleEntry(PackagedProductDefinition, Enbrel456Package)
* entry[Marketing][+]
  * insert bundleEntry(RegulatedAuthorization, Enbrel456Marketing)
* entry[Product][+]
  * insert bundleEntry(MedicinalProductDefinition, Enbrel446Definition)
* entry[Packaging][+]
  * insert bundleEntry(PackagedProductDefinition, Enbrel446Package)
* entry[Marketing][+]
  * insert bundleEntry(RegulatedAuthorization, Enbrel446Marketing)
* entry[Product][+]
  * insert bundleEntry(MedicinalProductDefinition, Enbrel021Definition)
* entry[Packaging][+]
  * insert bundleEntry(PackagedProductDefinition, Enbrel021Package)
* entry[Marketing][+]
  * insert bundleEntry(RegulatedAuthorization, Enbrel021Marketing)
* entry[Product][+]
  * insert bundleEntry(MedicinalProductDefinition, Enbrel032Definition)
* entry[Packaging][+]
  * insert bundleEntry(PackagedProductDefinition, Enbrel032Package)
* entry[Marketing][+]
  * insert bundleEntry(RegulatedAuthorization, Enbrel032Marketing)
* entry[Product][+]
  * insert bundleEntry(MedicinalProductDefinition, Enbrel010Definition)
* entry[Packaging][+]
  * insert bundleEntry(PackagedProductDefinition, Enbrel010Package)
* entry[Marketing][+]
  * insert bundleEntry(RegulatedAuthorization, Enbrel010Marketing)
* entry[Product][+]
  * insert bundleEntry(MedicinalProductDefinition, Enbrel044Definition)
* entry[Packaging][+]
  * insert bundleEntry(PackagedProductDefinition, Enbrel044Package)
* entry[Marketing][+]
  * insert bundleEntry(RegulatedAuthorization, Enbrel044Marketing)
* entry[Product][+]
  * insert bundleEntry(MedicinalProductDefinition, Enbrel055Definition)
* entry[Packaging][+]
  * insert bundleEntry(PackagedProductDefinition, Enbrel055Package)
* entry[Marketing][+]
  * insert bundleEntry(RegulatedAuthorization, Enbrel055Marketing)

Instance: ImmunexCorporation
InstanceOf: IdentifiedLabeler
Description: "Immunex Corporation - labeller for Enbrel"
* type = OrganizationTypes#Labeler
* name = "Immunex Corporation"
* identifier[DUNSNumber].value = "028134799"

Instance: EnbrelSyringeLabelComposition
InstanceOf: ProductSubmissionDocument
Description: "Header information for the Enbrel Syringe Labels"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a002b40c-097d-47a5-957f-7a7b1807af7f"
* version = "197"
* status = #final
* type = http://loinc.org#34391-3 "HUMAN PRESCRIPTION DRUG LABEL"
* date = "2021-12-13"
* author = Reference(ImmunexCorporation)
* title = """These highlights do not include all the information needed to use ENBREL safely and effectively.  See full prescribing information for ENBREL.  <br/>
      <br/>ENBREL<sup>®</sup> (etanercept) injection, for subcutaneous use <br/>ENBREL<sup>®</sup> (etanercept) for injection, for subcutaneous use <br/>Initial U.S. Approval: 1998"""
  
* section[+]
  * code = http://loinc.org#34066-1 "BOXED WARNING SECTION"
  * title = "WARNING: SERIOUS INFECTIONS and MALIGNANCIES"
  * id = "1f13be11-112a-48e5-bbf8-072311d5c3dd"
  * extension[sectionTime].valueDateTime = "2021-12-13"
  * extension[linkId].valueString = "BOX"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="highlights">
                        <p>WARNING: SERIOUS INFECTIONS and MALIGNANCIES</p>
                        <p>
                           <span>See full prescribing information for complete boxed warning.</span>
                        </p>
                        <p>
                           <span style="font-weight: bold">SERIOUS INFECTIONS</span>
                        </p>
                        <ul>
                           <li>
                              <span style="font-weight: bold">Increased risk of serious infections leading to hospitalization or death, including tuberculosis (TB), bacterial sepsis, invasive fungal infections (such as histoplasmosis), and infections due to other opportunistic pathogens. (<a href="#S5.1">5.1</a>)</span>
                           </li>
                           <li>
                              <span style="font-weight: bold">Enbrel should be discontinued if a patient develops a serious infection or sepsis during treatment. (<a href="#S5.1">5.1</a>)</span>
                           </li>
                           <li>
                              <span style="font-weight: bold">Perform test for latent TB; if positive, start treatment for TB prior to starting Enbrel. (<a href="#S5.1">5.1</a>)</span>
                           </li>
                           <li>
                              <span style="font-weight: bold">Monitor all patients for active TB during treatment, even if initial latent TB test is negative. (<a href="#S5.1">5.1</a>)</span>
                           </li>
                        </ul>
                        <p>
                           <span style="font-weight: bold">MALIGNANCIES</span>
                        </p>
                        <ul>
                           <li>
                              <span style="font-weight: bold">Lymphoma and other malignancies, some fatal, have been reported in children and adolescent patients treated with TNF-blockers, including Enbrel. (<a href="#S5.3">5.3</a>)</span>
                           </li>
                        </ul>
  </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * id = "0fbda1ce-5bd2-482b-afd8-b780f227be23"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
                        <p>
                           <span style="font-weight: bold">SERIOUS INFECTIONS</span>
                        </p>
                        <p>
                           <span style="font-weight: bold">Patients treated with Enbrel are at increased risk for developing serious infections that may lead to hospitalization or death <span style="font-style: italic">[see <a href="#S5.1">Warnings and Precautions (5.1)</a> and <a href="#S6">Adverse Reactions (6)</a>]</span>.  Most patients who developed these infections were taking concomitant immunosuppressants such as methotrexate or corticosteroids.</span>
                        </p>
                        <p>
                           <span style="font-weight: bold">Enbrel should be discontinued if a patient develops a serious infection or sepsis.</span>
                        </p>
                        <p>
                           <span style="font-weight: bold">Reported infections include:</span>
                        </p>
                        <ul style="list-style-type: disc">
                           <li>
                              <span style="font-weight: bold">Active tuberculosis, including reactivation of latent   tuberculosis.  Patients with tuberculosis have frequently presented with   disseminated or extrapulmonary disease.  Patients should be tested for   latent tuberculosis before Enbrel use and during therapy.  Treatment for   latent infection should be initiated prior to Enbrel use.</span>
                           </li>
                           <li>
                              <span style="font-weight: bold">Invasive fungal infections, including histoplasmosis,   coccidioidomycosis, candidiasis, aspergillosis, NDAstomycosis, and   pneumocystosis.  Patients with histoplasmosis or other invasive fungal   infections may present with disseminated, rather than localized, disease.  Antigen   and antibody testing for histoplasmosis may be negative in some patients   with active infection.  Empiric anti-fungal therapy should be considered   in patients at risk for invasive fungal infections who develop severe   systemic illness.</span>
                           </li>
                           <li>
                              <span style="font-weight: bold">Bacterial, viral, and other infections due to   opportunistic pathogens, including Legionella and Listeria.</span>
                           </li>
                        </ul>
                        <p>
                           <span style="font-weight: bold">The risks and benefits of treatment with Enbrel should be carefully considered prior to initiating therapy in patients with chronic or recurrent infection.</span>
                        </p>
                        <p>
                           <span style="font-weight: bold">Patients should be closely monitored for the development of signs and symptoms of infection during and after treatment with Enbrel, including the possible development of tuberculosis in patients who tested negative for latent tuberculosis infection prior to initiating therapy.</span>
                        </p>
  </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * id = "b49a8497-5580-4d1b-a3bf-c7bd55a910c8"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
                        <p>
                           <span style="font-weight: bold">MALIGNANCIES</span>
                        </p>
                        <p>
                           <span style="font-weight: bold">Lymphoma and other malignancies, some fatal, have been reported in children and adolescent patients treated with TNF-blockers, including Enbrel.    </span>
                        </p>
   </div></div>"""

* section[+]
  * code = http://loinc.org#34067-9 "INDICATIONS &amp; USAGE SECTION"
  * title = "1 INDICATIONS AND USAGE"
  * id = "c854ce8a-aea8-4403-917d-8d2c9bebf6ad"
  * extension[sectionTime].valueDateTime = "2021-12-13"
  * extension[linkId].valueString = "S1"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="highlights">
                        <p>Enbrel is a tumor necrosis factor (TNF) blocker indicated for the treatment of:</p>
                        <ul>
                           <li> Rheumatoid Arthritis (RA) (<a href="#S1.1">1.1</a>)</li>
                           <li> Polyarticular Juvenile Idiopathic Arthritis (JIA) in patients aged 2 years or older (<a href="#S1.2">1.2</a>)</li>
                           <li> Psoriatic Arthritis (PsA) (<a href="#S1.3">1.3</a>)</li>
                           <li> Ankylosing Spondylitis (AS) (<a href="#S1.4">1.4</a>)</li>
                           <li> Plaque Psoriasis (PsO) in patients 4 years or older (<a href="#S1.5">1.5</a>)</li>
                        </ul>
  </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * title = "1.1 Rheumatoid Arthritis"
    * id = "5c3f71af-246f-4d3f-b7b7-347b3264e21a"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * extension[linkId].valueString = "S1.1"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
<a name="S1.1"/>
                        <p>Enbrel is indicated for reducing signs and symptoms, inducing major clinical response, inhibiting the progression of structural damage, and improving physical function in patients with moderately to severely active rheumatoid arthritis (RA).  Enbrel can be initiated in combination with methotrexate (MTX) or used alone.</p>
     </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * title = "1.2	Polyarticular Juvenile Idiopathic Arthritis"
    * id = "d0eab55f-8f21-4828-95dc-a59686da130f"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * extension[linkId].valueString = "S1.2"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
<a name="S1.2"/>
                        <p>Enbrel is indicated for reducing signs and symptoms of moderately to severely active polyarticular juvenile idiopathic arthritis (JIA) in patients ages 2 and older.</p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * title = "1.3	Psoriatic Arthritis"
    * id = "26f6fbd0-80ba-466b-9682-6740277d81a3"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * extension[linkId].valueString = "S1.3"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
<a name="S1.3"/>
                        <p>Enbrel is indicated for reducing signs and symptoms, inhibiting the progression of structural damage of active arthritis, and improving physical function in patients with psoriatic arthritis (PsA).  Enbrel can be used with or without methotrexate.</p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * title = "1.4	Ankylosing Spondylitis"
    * id = "9bca3f1c-7745-485f-8178-97c907ca4d60"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * extension[linkId].valueString = "S1.4"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
<a name="S1.4"/>
                        <p>Enbrel is indicated for reducing signs and symptoms in patients with active ankylosing spondylitis (AS).</p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * title = "1.5	Plaque Psoriasis"
    * id = "3ec2451e-8e5f-4e29-9503-edf9fad19b12"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * extension[linkId].valueString = "S1.5"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
<a name="S1.5"/>
                        <p>Enbrel is indicated for the treatment of patients 4 years or older with chronic moderate to severe plaque psoriasis (PsO) who are candidates for systemic therapy or phototherapy.</p>
    </div></div>"""
	
* section[+]
  * code = http://loinc.org#34068-7 "DOSAGE &amp; ADMINISTRATION SECTION"
  * title = "2 DOSAGE AND ADMINISTRATION"
  * id = "eba5422e-c30e-4fb0-baa4-dcfc08ac5c6b"
  * extension[sectionTime].valueDateTime = "2021-12-13"
  * extension[linkId].valueString = "S2"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="highlights">
                        <p>Enbrel is administered by subcutaneous injection.</p>
                        <table width="100%">
                           <col width="50%" align="left" valign="top"/>
                           <col width="50%" align="left" valign="top"/>
                           <thead>
                              <tr>
                                 <th align="center">Patient Population</th>
                                 <th align="center">Recommended Dose and Frequency</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr style="border-bottom: 1px">
                                 <td>Adult RA and PsA (<a href="#S2.1">2.1</a>)</td>
                                 <td>50 mg once weekly with or without methotrexate (MTX)</td>
                              </tr>
                              <tr style="border-bottom: 1px">
                                 <td>AS (<a href="#S2.1">2.1</a>)</td>
                                 <td>50 mg once weekly</td>
                              </tr>
                              <tr style="border-bottom: 1px">
                                 <td>Adult PsO (<a href="#S2.1">2.1</a>)</td>
                                 <td>50 mg twice weekly for 3 months, followed by 50 mg once weekly</td>
                              </tr>
                              <tr>
                                 <td>Pediatric PsO or JIA (<a href="#S2.2">2.2</a>)<br/>
                                 </td>
                                 <td>0.8 mg/kg weekly, with a maximum of 50 mg per week</td>
                              </tr>
                           </tbody>
                        </table>
  </div><div style="narrative">
                  <p>Administration of one 50 mg Enbrel single<span style="font-weight: bold">-</span>dose prefilled syringe, one single<span style="font-weight: bold">-</span>dose prefilled Enbrel SureClick autoinjector, or one Enbrel Mini single<span style="font-weight: bold">-</span>dose prefilled cartridge (for use with the AutoTouch reusable autoinjector only), provides a dose equivalent to two 25 mg Enbrel single-dose prefilled syringes, two 25 mg single<span style="font-weight: bold">-</span>dose vials, or two multiple-dose vials of lyophilized Enbrel, when multiple<span style="font-weight: bold">-</span>dose vials are reconstituted and administered as recommended.</p>
  </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * title = "2.1 Adult Patients"
    * id = "ded84416-f6db-4705-85d4-b3ae59e6a1a1"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * extension[linkId].valueString = "S2.1"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
<a name="S2.1"/>
                        <p>Enbrel is administered by subcutaneous injection.</p>
                        <table width="75%" id="table1">
                           <caption>Table 1. Dosing and Administration for Adult Patients</caption>
                           <col width="45%" align="left" valign="top"/>
                           <col width="55%" align="left" valign="top"/>
                           <thead>
                              <tr>
                                 <th>Patient Population</th>
                                 <th>Recommended Dosage Strength and Frequency</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr style="border-bottom: 1px">
                                 <td>Adult RA, AS, and PsA</td>
                                 <td>50 mg weekly</td>
                              </tr>
                              <tr>
                                 <td>Adult PsO</td>
                                 <td>
                                    <span style="text-decoration: underline">Starting Dose</span>: 50 mg twice weekly for 3 months<br/>
                                    <span style="text-decoration: underline">Maintenance Dose</span>: 50 mg once weekly<br/>
                                 </td>
                              </tr>
                           </tbody>
                        </table>
                        <p>See the Enbrel (etanercept) "Instructions for Use" insert for detailed information on injection site selection and dose administration <span style="font-style: italic">[see <a href="#S2.3">Dosage and Administration (2.3)</a> and <a href="#S17">Patient Counseling Information (17)</a>]</span>.</p>
     </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * id = "5ba9967a-f2ae-43bd-916b-471cf7736400"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
<a name="S2.2"/>
                              <p>
                                 <span style="text-decoration: underline">Adult Rheumatoid Arthritis, Ankylosing Spondylitis, and Psoriatic Arthritis Patients</span>
                              </p>
                              <p>Methotrexate, glucocorticoids, salicylates, nonsteroidal anti-inflammatory drugs (NSAIDs), or analgesics may be continued during treatment with Enbrel.</p>
                              <p>Based on a study of 50 mg Enbrel twice weekly in patients with RA that suggested higher incidence of adverse reactions but similar American College of Rheumatology (ACR) response rates, doses higher than 50 mg per week are not recommended. </p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * id = "58b2c4bd-8011-42e8-b5e9-73bd7921dd64"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
                              <p>
                                 <span style="text-decoration: underline">Adult Plaque Psoriasis Patients</span>
                              </p>
                              <p>In addition to the 50 mg twice weekly recommended starting dose, starting doses of 25 mg or 50 mg per week were shown to be efficacious.  The proportion of responders was related to Enbrel dosage <span style="font-style: italic">[see <a href="#S14.5">Clinical Studies (14.5)</a>]</span>.</p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * title = "2.2	Pediatric Patients"
    * id = "c0e3dab3-d501-4b1f-80e6-1b9278c298e0"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * extension[linkId].valueString = "S2.2"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
                        <p>Enbrel is administered by subcutaneous injection.</p>
                        <table width="75%" id="table2">
                           <caption>Table 2. Dosing and Administration for Pediatric Patients (PsO or JIA)</caption>
                           <col width="45%" align="left" valign="top"/>
                           <col width="55%" align="left" valign="top"/>
                           <thead>
                              <tr>
                                 <th>Pediatric Patients Weight</th>
                                 <th>Recommended Dose</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr style="border-bottom: 1px">
                                 <td>63 kg (138 pounds) or more</td>
                                 <td>50 mg weekly</td>
                              </tr>
                              <tr>
                                 <td>Less than 63 kg (138 pounds)</td>
                                 <td>0.8 mg/kg weekly</td>
                              </tr>
                           </tbody>
                        </table>
                        <p>To achieve pediatric doses other than 25 mg or 50 mg, use Enbrel solution in a single-dose vial or reconstituted lyophilized powder in a multiple-dose vial.</p>
                        <p>Doses of Enbrel higher than those described in Table 2 have not been studied in pediatric patients.</p>
                        <p>In JIA patients, glucocorticoids, NSAIDs, or analgesics may be continued during treatment with Enbrel.</p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * title = "2.3	Preparation of Enbrel"
    * id = "6ed6ef73-2259-406c-ab29-8e52a365efb4"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * extension[linkId].valueString = "S2.3"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
<a name="S2.3"/>
                        <p>Enbrel is intended for use under the guidance and supervision of a physician.  Patients may self-inject when deemed appropriate and if they receive medical follow-up, as necessary.  Patients should not self-administer until they receive proper training in how to prepare and administer the correct dose.  Administer injections subcutaneously in the thigh, abdomen or outer area of the upper arm.</p>
                        <p>The following components contain dry natural rubber (a derivative of latex), which may cause allergic reactions in individuals sensitive to latex: the needle cover of the prefilled syringe, the needle cover within the white cap of the SureClick autoinjector, and the needle cover within the purple cap of the Enbrel Mini cartridge <span style="font-style: italic">[see <a href="#S5.7">Warnings and Precautions (5.7)</a>]</span>.</p>
                        <p>The Enbrel (etanercept) "Instructions for Use" insert for each presentation contains more detailed instructions on injection site selection and the preparation of Enbrel.</p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * id = "a6cfa417-7da4-4033-b16c-b55964cd0028"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
                              <p>
                                 <span style="text-decoration: underline">Preparation of Enbrel Single-dose Prefilled Syringe </span>
                              </p>
                              <p>For a more comfortable injection, leave Enbrel prefilled syringes at room temperature for about 15 to 30 minutes before injecting.  DO NOT remove the needle cover while allowing the prefilled syringe to reach room temperature.</p>
                              <p>Inspect visually for particulate matter and discoloration prior to administration.  There may be small white particles of protein in the solution.  This is not unusual for proteinaceous solutions.  The solution should not be used if discolored or cloudy, or if foreign particulate matter is present.</p>
                              <p>When using the Enbrel single-dose prefilled syringe, check to see if the amount of liquid in the prefilled syringe falls between the two purple fill level indicator lines on the syringe.  If the syringe does not have the right amount of liquid, DO NOT USE THAT SYRINGE.</p>
    </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * id = "1544bfbe-da9b-4995-a866-5c8d4b988de2"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
                              <p>
                                 <span style="text-decoration: underline">Preparation of Enbrel Single-dose Prefilled SureClick Autoinjector</span>
                              </p>
                              <p>Leave the autoinjector at room temperature for at least 30 minutes before injecting.  DO NOT remove the needle cover while allowing the prefilled syringe to reach room temperature.</p>
                              <p>Inspect visually for particulate matter and discoloration prior to administration.  There may be small white particles of protein in the solution.  This is not unusual for proteinaceous solutions.  The solution should not be used if discolored or cloudy, or if foreign particulate matter is present.</p>
     </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * id = "377d662b-bc9d-4f79-855e-9aad42217fd8"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
                              <p>
                                 <span style="text-decoration: underline">Preparation of Enbrel Single-dose Vial</span>
                              </p>
                              <p>For a more comfortable injection, leave Enbrel vial(s) at room temperature for at least 30 minutes before injecting.  DO NOT remove the vial cap while allowing the vial to reach room temperature.</p>
                              <p>Inspect visually for particulate matter and discoloration prior to administration.  There may be small white particles of protein in the solution.  This is not unusual for proteinaceous solutions.  The solution should not be used if discolored or cloudy, or if foreign particulate matter is present.</p>
                              <p>When using the Enbrel single-dose vial, administer the correct dose of solution using the following recommended materials:</p>
                              <ul>
                                 <li>A 1 mL Luer-Lock syringe.</li>
                                 <li>A withdrawal needle with Luer-Lock connection, sterile, 22-gauge, length 1 ½ inch.</li>
                                 <li>An injection needle with Luer-Lock connection, sterile, 27-gauge, length ½ inch. </li>
                              </ul>
                              <p>Two vials may be required to administer the total prescribed dose.  Use the same syringe for each vial.  The vial does not contain preservatives; therefore discard unused portions.</p>
      </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * id = "9c13df44-c30b-419e-a8c5-7cc517300760"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
                              <p>
                                 <span style="text-decoration: underline">Preparation of Enbrel Lyophilized Powder in a Multiple-dose Vial</span>
                              </p>
                              <p>Enbrel lyophilized powder should be reconstituted aseptically with 1 mL of the supplied Sterile Bacteriostatic Water for Injection, USP (0.9% benzyl alcohol), giving a solution of 1 mL containing 25 mg of Enbrel.</p>
                              <p>A vial adapter is supplied for use when reconstituting the lyophilized powder.  However, the vial adapter should not be used if multiple doses are going to be withdrawn from the vial.  If the vial will be used for multiple doses, a 25-gauge needle should be used for reconstituting and withdrawing Enbrel, and the supplied "Mixing Date:" sticker should be attached to the vial and the date of reconstitution entered.  Reconstituted solution must be refrigerated at 36°F to 46°F (2°C to 8°C) and used within 14 days.  Discard reconstituted solution after 14 days because product stability and sterility cannot be assured after 14 days.  DO NOT store reconstituted Enbrel solution at room temperature.</p>
                              <p>For a more comfortable injection, leave the Enbrel dose tray at room temperature for about 15 to 30 minutes before injecting. </p>
                              <p>If using the vial adapter, twist the vial adapter onto the diluent syringe.  Then, place the vial adapter over the Enbrel vial and insert the vial adapter into the vial stopper.  Push down on the plunger to inject the diluent into the Enbrel vial.  If using a 25-gauge needle to reconstitute and withdraw Enbrel, the diluent should be injected very slowly into the Enbrel vial.  It is normal for some foaming to occur.  Keeping the diluent syringe in place, gently swirl the contents of the Enbrel vial during dissolution.  To avoid excessive foaming, do not shake or vigorously agitate.</p>
                              <p>Generally, dissolution of Enbrel takes less than 10 minutes.  Do not use the solution if discolored or cloudy, or if particulate matter remains.</p>
                              <p>Withdraw the correct dose of reconstituted solution into the syringe.  Some foam or bubbles may remain in the vial.  Remove the syringe from the vial adapter or remove the 25-gauge needle from the syringe.  Attach a 27-gauge needle to inject Enbrel.</p>
                              <p>The contents of one vial of Enbrel solution should not be mixed with, or transferred into, the contents of another vial of Enbrel.  No other medications should be added to solutions containing Enbrel, and do not reconstitute Enbrel with other diluents.  Do not filter reconstituted solution during preparation or administration.</p>
      </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * id = "78f727b0-99d3-4bd3-94dc-e0f4f5e75106"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
                             <p>
                                 <span style="text-decoration: underline">Preparation of Enbrel Mini<sup>®</sup> single-dose prefilled cartridge using the AutoTouch<sup>®</sup> reusable autoinjector </span>
                              </p>
                              <p>Leave Enbrel Mini single-dose prefilled cartridge at room temperature for at least 30 minutes before injecting.  DO NOT remove the purple cap while allowing the cartridge to reach room temperature.</p>
                              <p>Parenteral drug products should be inspected visually for particulate matter and discoloration prior to administration.  There may be small white particles of protein in the solution.  This is not unusual for proteinaceous solutions.  The solution should not be used if discolored or cloudy, or if foreign particulate matter is present.</p>
                              <p>To use AutoTouch reusable autoinjector, open the door by pushing the door button and inserting Enbrel Mini single-dose prefilled cartridge into AutoTouch.  When inserted correctly, Enbrel Mini single-dose prefilled cartridge will slide freely and completely into the door.  Close the door and AutoTouch reusable autoinjector is ready for injection.</p>
      </div></div>"""
  * section[+]
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * id = "7829c7f6-24ba-474f-8199-5a3cdc9c91f3"
    * extension[sectionTime].valueDateTime = "2021-12-13"
    * extension[linkId].valueString = "S2.4"
    * title = "2.4 Monitoring to Assess Safety"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
<a name="S5.1"/>
<a name="S5.3"/>
<a name="S5.7"/>
<a name="S6"/>
<a name="S14.5"/>
<a name="S17"/>
                        <p>Prior to initiating Enbrel and periodically during therapy, patients should be evaluated for active tuberculosis and tested for latent infection <span style="font-style: italic">[see <a href="#S5.1">Warnings and Precautions (5.1)</a>].</span>
                        </p>
      </div></div>"""

* section[ProductSection]
  * entry[+] = Reference(Enbrel435Definition)
  * entry[+] = Reference(Enbrel445Definition)
  * entry[+] = Reference(Enbrel425Definition)
  * entry[+] = Reference(Enbrel455Definition)
  * entry[+] = Reference(Enbrel456Definition)
  * entry[+] = Reference(Enbrel446Definition)
  * entry[+] = Reference(Enbrel021Definition)
  * entry[+] = Reference(Enbrel032Definition)
  * entry[+] = Reference(Enbrel010Definition)
  * entry[+] = Reference(Enbrel044Definition)
  * entry[+] = Reference(Enbrel055Definition)
  * code = http://loinc.org#48780-1 "SPL LISTING DATA ELEMENTS SECTION"
  * id = "eb6f7193-2806-4f58-826d-a0bdb2641e63"
  * extension[sectionTime].valueDateTime = "2021-12-13"
* section[LabelDisplay][+]
  * code = http://loinc.org#51945-4 "PACKAGE LABEL.PRINCIPAL DISPLAY PANEL"
  * id = "5aad37da-10b5-4d22-ac4c-dfe752757194"
  * extension[sectionTime].valueDateTime = "2021-12-13"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
  <p>
     <span style="font-weight: bold">PRINCIPAL DISPLAY PANEL</span>
     <br/>Contains 4 Single-Dose Prefilled Syringes<br/>NDC 58406-455-04<br/>Enbrel<sup>®</sup>
     <br/>etanercept<br/>25 mg/0.5 mL<br/>Single-Dose Prefilled Syringe<br/>25 mg/0.5 mL<br/>Attention: Not for use in pediatric patients under 31 kg (68 pounds).<br/>For Subcutaneous Use Only<br/>Sterile Solution – No Preservative<br/>Refrigerate at 2° to 8°C (36° to 46°F). DO NOT FREEZE. <br/>Carton contents (4 single-dose prefilled syringes, 1 package<br/>insert with attached Medication Guide) are intended to be<br/>dispensed as a unit.<br/>ATTENTION: Enclosed Medication Guide is required<br/>for each patient.<br/>This Product Contains Dry Natural Rubber.<br/>AMGEN<sup>®</sup>
     <br/>Rx Only<br/>Manufactured by Immunex Corporation, Thousand Oaks, CA 91320</p>
  <p>
      <img src="enbrel-200.jpg" alt="PRINCIPAL DISPLAY PANEL Contains 4 Single-Dose Prefilled Syringes NDC 58406-455-04 Enbrel® etanercept 25 mg/0.5 mL Single-Dose Prefilled Syringe 25 mg/0.5 mL Attention: Not for use in pediatric patients under 31 kg (68 pounds). For Subcutaneous Use Only Sterile Solution – No Preservative Refrigerate at 2° to 8°C (36° to 46°F). DO NOT FREEZE. Carton contents (4 single-dose prefilled syringes, 1 package insert with attached Medication Guide) are intended to be dispensed as a unit. ATTENTION: Enclosed Medication Guide is required for each patient. This Product Contains Dry Natural Rubber. AMGEN® Rx Only Manufactured by Immunex Corporation, Thousand Oaks, CA 91320"/>
  </p>
  </div></div>"""
* section[LabelDisplay][+]
  * code = http://loinc.org#51945-4 "PACKAGE LABEL.PRINCIPAL DISPLAY PANEL"
  * id = "9839b414-3008-4ea7-8d12-4511913cfdd1"
  * extension[sectionTime].valueDateTime = "2021-12-13"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
                  <p>
                     <span style="font-weight: bold">PRINCIPAL DISPLAY PANEL</span>
                     <br/>Contains 4 Single-Dose Prefilled Syringes<br/>NDC 58406-435-04<br/>Enbrel<sup>®</sup>
                     <br/>etanercept<br/>50 mg/mL<br/>Single-Dose Prefilled Syringe<br/>50 mg/mL<br/>Attention: Not for use in pediatric patients under 63 kg (138 pounds).<br/>For Subcutaneous Use Only<br/>Sterile Solution – No Preservative<br/>Refrigerate at 2° to 8°C (36° to 46°F). DO NOT FREEZE.<br/>Carton contents (4 single-dose prefilled syringes, 1 package<br/>insert with attached Medication Guide) are intended to be<br/>dispensed as a unit.<br/>ATTENTION: Enclosed Medication Guide is required<br/>for each patient.<br/>This Product Contains Dry Natural Rubber.<br/>AMGEN<sup>®</sup>
                     <br/>Rx Only<br/>Manufactured by Immunex Corporation, Thousand Oaks, CA 91320</p>
                  <p>
                     <img src="enbrel-201.jpg" alt="PRINCIPAL DISPLAY PANEL Contains 4 Single-Dose Prefilled Syringes NDC 58406-435-04 Enbrel® etanercept 50 mg/mL Single-Dose Prefilled Syringe 50 mg/mL Attention: Not for use in pediatric patients under 63 kg (138 pounds). For Subcutaneous Use Only Sterile Solution – No Preservative Refrigerate at 2° to 8°C (36° to 46°F). DO NOT FREEZE. Carton contents (4 single-dose prefilled syringes, 1 package insert with attached Medication Guide) are intended to be dispensed as a unit. ATTENTION: Enclosed Medication Guide is required for each patient. This Product Contains Dry Natural Rubber. AMGEN® Rx Only Manufactured by Immunex Corporation, Thousand Oaks, CA 91320"/>
                  </p>
                  <p>
                     <span style="font-weight: bold">PRINCIPAL DISPLAY PANEL</span>
                     <br/>Contains 4 Single-Dose Prefilled Syringes<br/>NDC 58406-010-04<br/>Enbrel<sup>®</sup>
                     <br/>etanercept<br/>25 mg/0.5 mL<br/>Single-Dose Prefilled Syringe<br/>25 mg/0.5 mL<br/>Attention: Not for use in pediatric patients under 31 kg (68 pounds).<br/>For Subcutaneous Use Only<br/>Sterile Solution – No Preservative<br/>Refrigerate at 2° to 8°C (36° to 46°F). DO NOT FREEZE.<br/>Carton contents (4 single-dose prefilled syringes, 1 package<br/>insert with attached Medication Guide) are intended to be<br/>dispensed as a unit.<br/>ATTENTION: Enclosed Medication Guide is required<br/>for each patient.<br/>This Product Contains Dry Natural Rubber.<br/>AMGEN<sup>®</sup>
                     <br/>Rx Only<br/>Manufactured by Immunex Corporation, Thousand Oaks, CA 91320</p>
                  <p>
                     <img src="enbrel-202.jpg" alt="PRINCIPAL DISPLAY PANEL Contains 4 Single-Dose Prefilled Syringes NDC 58406-010-04 Enbrel® etanercept 25 mg/0.5 mL Single-Dose Prefilled Syringe 25 mg/0.5 mL Attention: Not for use in pediatric patients under 31 kg (68 pounds). For Subcutaneous Use Only Sterile Solution – No Preservative Refrigerate at 2° to 8°C (36° to 46°F). DO NOT FREEZE. Carton contents (4 single-dose prefilled syringes, 1 package insert with attached Medication Guide) are intended to be dispensed as a unit. ATTENTION: Enclosed Medication Guide is required for each patient. This Product Contains Dry Natural Rubber. AMGEN® Rx Only Manufactured by Immunex Corporation, Thousand Oaks, CA 91320"/>
                  </p>
                  <p>
                     <span style="font-weight: bold">PRINCIPAL DISPLAY PANEL</span>
                     <br/>Contains 4 Single-Dose Prefilled Syringes<br/>NDC 58406-021-04<br/>Enbrel<sup>®</sup>
                     <br/>etanercept<br/>50 mg/mL<br/>Single-Dose Prefilled Syringe<br/>50 mg/mL<br/>Attention: Not for use in pediatric patients under 63 kg (138 pounds).<br/>For Subcutaneous Use Only<br/>Sterile Solution – No Preservative<br/>Refrigerate at 2° to 8°C (36° to 46°F). DO NOT FREEZE.<br/>Carton contents (4 single-dose prefilled syringes, 1 package<br/>insert with attached Medication Guide) are intended to be<br/>dispensed as a unit.<br/>ATTENTION: Enclosed Medication Guide is required<br/>for each patient.<br/>This Product Contains Dry Natural Rubber.<br/>AMGEN<sup>®</sup>
                     <br/>Rx Only<br/>Manufactured by Immunex Corporation, Thousand Oaks, CA 91320</p>
                  <p>
                     <img src="enbrel-203.jpg" alt="PRINCIPAL DISPLAY PANEL Contains 4 Single-Dose Prefilled Syringes NDC 58406-021-04 Enbrel® etanercept 50 mg/mL Single-Dose Prefilled Syringe 50 mg/mL Attention: Not for use in pediatric patients under 63 kg (138 pounds). For Subcutaneous Use Only Sterile Solution – No Preservative Refrigerate at 2° to 8°C (36° to 46°F). DO NOT FREEZE. Carton contents (4 single-dose prefilled syringes, 1 package insert with attached Medication Guide) are intended to be dispensed as a unit. ATTENTION: Enclosed Medication Guide is required for each patient. This Product Contains Dry Natural Rubber. AMGEN® Rx Only Manufactured by Immunex Corporation, Thousand Oaks, CA 91320"/>
                  </p>
                  <p>
                     <span style="font-weight: bold">PRINCIPAL DISPLAY PANEL</span>
                     <br/>Contains 4 Single-Dose Prefilled Autoinjectors<br/>NDC 58406-445-04<br/>Enbrel<sup>®</sup>
                     <br/>etanercept<br/>SureClick<sup>®</sup> Autoinjector<br/>50 mg/mL<br/>Single-Dose Prefilled Autoinjector<br/>50 mg/mL<br/>Attention: Not for use in pediatric patients under 63 kg (138 pounds).<br/>For Subcutaneous Use Only<br/>Sterile Solution – No Preservative<br/>Refrigerate at 2° to 8°C (36° to 46°F). DO NOT FREEZE.<br/>Carton Contents (4 prefilled SureClick<sup>®</sup> Autoinjectors, 1 package insert with<br/>attached Medication Guide) are intended to be dispensed as a unit.<br/>ATTENTION: Enclosed Medication Guide is required for each patient.<br/>This Product Contains Dry Natural Rubber.<br/>AMGEN<sup>®</sup>
                     <br/>Rx Only<br/>Manufactured by Immunex Corporation, Thousand Oaks, CA 91320-1799</p>
                  <p>
                     <img src="enbrel-204.jpg" alt="PRINCIPAL DISPLAY PANEL Contains 4 Single-Dose Prefilled Autoinjectors NDC 58406-445-04 Enbrel® etanercept SureClick® Autoinjector 50 mg/mL Single-Dose Prefilled Autoinjector 50 mg/mL Attention: Not for use in pediatric patients under 63 kg (138 pounds). For Subcutaneous Use Only Sterile Solution – No Preservative Refrigerate at 2° to 8°C (36° to 46°F). DO NOT FREEZE. Carton Contents (4 prefilled SureClick® Autoinjectors, 1 package insert with attached Medication Guide) are intended to be dispensed as a unit. ATTENTION: Enclosed Medication Guide is required for each patient. This Product Contains Dry Natural Rubber. AMGEN® Rx Only Manufactured by Immunex Corporation, Thousand Oaks, CA 91320-1799"/>
                  </p>
  </div></div>"""
* section[LabelDisplay][+]
  * code = http://loinc.org#51945-4 "PACKAGE LABEL.PRINCIPAL DISPLAY PANEL"
  * id = "849d1cc6-8e97-4f71-a569-356ee0513d7d"
  * extension[sectionTime].valueDateTime = "2021-12-13"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
                  <p>
                     <span style="font-weight: bold">PRINCIPAL DISPLAY PANEL</span>
                     <br/>Contains 4 Single-Dose Prefilled Autoinjectors<br/>NDC 58406-032-04<br/>Enbrel<sup>®</sup>
                     <br/>etanercept<br/>SureClick<sup>®</sup> Autoinjector<br/>50 mg/mL<br/>Single-Dose Prefilled Autoinjector<br/>50 mg/mL<br/>Attention: Not for use in pediatric patients under 63 kg (138 pounds).<br/>For Subcutaneous Use Only<br/>Sterile Solution – No Preservative<br/>Refrigerate at 2° to 8°C (36° to 46°F). DO NOT FREEZE.<br/>Carton Contents (4 prefilled SureClick<sup>®</sup> Autoinjectors, 1 package insert with<br/>attached Medication Guide) are intended to be dispensed as a unit.<br/>ATTENTION: Enclosed Medication Guide is required for each patient.<br/>This Product Contains Dry Natural Rubber.<br/>AMGEN<sup>®</sup>
                     <br/>Rx Only<br/>Manufactured by Immunex Corporation, Thousand Oaks, CA 91320-1799</p>
                  <p>
                     <img src="enbrel-205.jpg" alt="PRINCIPAL DISPLAY PANEL Contains 4 Single-Dose Prefilled Autoinjectors NDC 58406-032-04 Enbrel® etanercept SureClick® Autoinjector 50 mg/mL Single-Dose Prefilled Autoinjector 50 mg/mL Attention: Not for use in pediatric patients under 63 kg (138 pounds). For Subcutaneous Use Only Sterile Solution – No Preservative Refrigerate at 2° to 8°C (36° to 46°F). DO NOT FREEZE. Carton Contents (4 prefilled SureClick® Autoinjectors, 1 package insert with attached Medication Guide) are intended to be dispensed as a unit. ATTENTION: Enclosed Medication Guide is required for each patient. This Product Contains Dry Natural Rubber. AMGEN® Rx Only Manufactured by Immunex Corporation, Thousand Oaks, CA 91320-1799"/>
                  </p>
   </div></div>"""
* section[LabelDisplay][+]
  * code = http://loinc.org#51945-4 "PACKAGE LABEL.PRINCIPAL DISPLAY PANEL"
  * id = "5ef1d7e8-8a75-488f-8aa4-8b07147cd05a"
  * extension[sectionTime].valueDateTime = "2021-12-13"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
                  <p>
                     <span style="font-weight: bold">PRINCIPAL DISPLAY PANEL</span>
                     <br/>Contains 4 Multi-Dose Trays<br/>NDC 58406-425-34<br/>AMGEN<sup>®</sup>
                     <br/>Enbrel<sup>®</sup>
                     <br/>etanercept<br/>25 mg/vial<br/>Multiple-Dose Vial<br/>See package insert for full prescribing information<br/>and instructions for preparation and administration.<br/>25 mg/vial<br/>Each vial contains a sterile lyophilized preparation<br/>of 25 mg etanercept (a recombinant CHO cell-derived<br/>product), 40 mg mannitol, 10 mg sucrose, and<br/>1.2 mg tromethamine.<br/>Specific activitiy: approximately 1.7 x 10<sup>6</sup> U/mg.<br/>No U.S. standard of potency. Volume after reconstitution<br/>with 1 mL diluent is 1 mL.<br/>Before and after reconstitution refrigerate<br/>at 2° to 8°C (36° to 46°F). DO NOT FREEZE.<br/>For Subcutaneous Use Only<br/>AMGEN<sup>®</sup>
                     <br/>Manufactured by Immunex Corporation, Thousand Oaks, CA 91320<br/>Contains diluent syringes (Made in Germany)<br/>U.S. License No. 1132<br/>©2013, 2016 Immunex Corporation<br/>Patent: http://pat.amgen.com/enbrel/</p>
                  <p>
                     <img src="enbrel-206.jpg" alt="PRINCIPAL DISPLAY PANEL Contains 4 Multi-Dose Trays NDC 58406-425-34 AMGEN® Enbrel® etanercept 25 mg/vial Multiple-Dose Vial See package insert for full prescribing information and instructions for preparation and administration. 25 mg/vial Each vial contains a sterile lyophilized preparation of 25 mg etanercept (a recombinant CHO cell-derived product), 40 mg mannitol, 10 mg sucrose, and 1.2 mg tromethamine. Specific activitiy: approximately 1.7 x 106 U/mg. No U.S. standard of potency. Volume after reconstitution with 1 mL diluent is 1 mL. Before and after reconstitution refrigerate at 2° to 8°C (36° to 46°F). DO NOT FREEZE. For Subcutaneous Use Only AMGEN® Manufactured by Immunex Corporation, Thousand Oaks, CA 91320 Contains diluent syringes (Made in Germany) U.S. License No. 1132 ©2013, 2016 Immunex Corporation Patent: http://pat.amgen.com/enbrel/"/>
                  </p>
  </div></div>"""
* section[LabelDisplay][+]
  * code = http://loinc.org#51945-4 "PACKAGE LABEL.PRINCIPAL DISPLAY PANEL"
  * id = "99ddc7b5-fd9f-4a0a-aecf-ed6a172228a1"
  * extension[sectionTime].valueDateTime = "2021-12-13"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
                  <p>
                     <span style="font-weight: bold">PRINCIPAL DISPLAY PANEL</span>
                     <br/>Contains 4 Single-dose prefilled cartridges<br/>NDC 58406-456-04<br/>Enbrel<sup>®</sup>
                     <br/>etanercept<br/>50 mg/mL<br/>Enbrel Mini™ prefilled cartridge<br/>50 mg/mL<br/>Single-dose prefilled cartridge<br/>For use with AutoTouch™ reusuable autoinjector only<br/>Attention: Not for use in pediatric patient under 138 lbs.<br/>For Subcutaneous Use Only<br/>Sterile Solution – No Preservative<br/>Refrigerate at 2°C to 8°C (36° to 46°F). DO NOT FREEZE. DO NOT SHAKE.<br/>Carton contents (4 prefilled cartridges, 1 package insert with attached<br/>Medication Guide) are intended to be dispensed as a unit.<br/>ATTENTION: Enclosed Medication Guide is required for each patient.<br/>This Product Contains<br/>Dry Natural Rubber.<br/>Do not Reuse<br/>CAUTION, See package insert<br/>for full prescribing information<br/>and Instructions for Use<br/>Rx Only<br/>AMGEN<sup>®</sup>
                  </p>
                  <p>
                     <img src="enbrel-207.jpg" alt="PRINCIPAL DISPLAY PANEL Contains 4 Single-dose prefilled cartridges NDC 58406-456-04 Enbrel® etanercept 50 mg/mL Enbrel Mini™ prefilled cartridge 50 mg/mL Single-dose prefilled cartridge For use with AutoTouch™ reusuable autoinjector only Attention: Not for use in pediatric patient under 138 lbs. For Subcutaneous Use Only Sterile Solution – No Preservative Refrigerate at 2°C to 8°C (36° to 46°F). DO NOT FREEZE. DO NOT SHAKE. Carton contents (4 prefilled cartridges, 1 package insert with attached Medication Guide) are intended to be dispensed as a unit. ATTENTION: Enclosed Medication Guide is required for each patient. This Product Contains Dry Natural Rubber. Do not Reuse CAUTION, See package insert for full prescribing information and Instructions for Use Rx Only AMGEN®"/>
                  </p>
  </div></div>"""
* section[LabelDisplay][+]
  * code = http://loinc.org#51945-4 "PACKAGE LABEL.PRINCIPAL DISPLAY PANEL"
  * title = "PRINCIPAL DISPLAY PANEL - 50 mg/mL Cartridge Carton"
  * id = "65d217b8-bb8e-482c-bd4b-92cbccbf9353"
  * extension[sectionTime].valueDateTime = "2021-12-13"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
                  <p>Contains 4 Single-dose prefilled cartridges</p>
                  <p>NDC 58406-044-04</p>
                  <p>Enbrel<sup>®</sup>
                     <br/>etanercept</p>
                  <p>50 <br/>mg/mL</p>
                  <p>Enbrel Mini<sup>®</sup> prefilled cartridge<br/>50 mg/mL<br/>Single-dose prefilled cartridge</p>
                  <p>For use with all AutoTouch<sup>®</sup> reusable autoinjectors only</p>
                  <p>Attention: Not for use in pediatric patient under 138 lbs.</p>
                  <p>For Subcutaneous Use Only</p>
                  <p>Sterile Solution – No Preservative</p>
                  <p>Refrigerate at 2° to 8°C (36° to 46°F). DO NOT FREEZE. DO NOT SHAKE.</p>
                  <p>Carton contents (4 prefilled cartridges, 1 package insert with attached<br/>Medication Guide) are intended to be dispensed as a unit.</p>
                  <p>ATTENTION: Enclosed Medication Guide is required for each patient.</p>
                  <p>This Product Contains<br/>Dry Natural Rubber.</p>
                  <p>Do not Reuse</p>
                  <p>CAUTION, See package insert <br/>for full prescribing information <br/>and Instructions for Use</p>
                  <p>Rx Only</p>
                  <p>AMGEN<sup>®</sup>
                  </p>
                  <img src="enbrel-208.jpg" alt="PRINCIPAL DISPLAY PANEL - 50 mg/mL Cartridge Carton"/>
  </div></div>"""
* section[LabelDisplay][+]
  * code = http://loinc.org#51945-4 "PACKAGE LABEL.PRINCIPAL DISPLAY PANEL"
  * id = "aecc3744-b9ab-4a65-a054-4f68f62cae38"
  * extension[sectionTime].valueDateTime = "2021-12-13"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
                  <p>
                     <span style="font-weight: bold">PRINCIPAL DISPLAY PANEL</span>
                     <br/>Contains 4 Single-dose prefilled Autoinjectors<br/>NDC 58406-446-04<br/>Enbrel<sup>®</sup>
                     <br/>etanercept<br/>50 mg/mL<br/>SureClick<sup>®</sup> 2.0 Autoinjector<br/>Enhanced Features<br/>see instructions for use<br/>50 mg/mL<br/>Single-dose Prefilled Autoinjector<br/>Attention: Not for use in pediatric patients under 63 kg (138 pounds)<br/>For Subcutaneous Use Only<br/>Sterile Solution – No Preservative<br/>Refrigerate at 2° to 8°C (36° to 46°F). DO NOT FREEZE.<br/>Carton contents (4 prefilled SureClick<sup>®</sup> 2.0 Autoinjectors, 1 package insert with<br/>attached Medication Guide) are intended to be dispensed as a unit.<br/>ATTENTION: Enclosed Medication Guide is required for each patient.<br/>This Product Contains Dry Natural Rubber.<br/>AMGEN<sup>®</sup>
                     <br/>Rx Only<br/>Manufactured by Immunex Corporation, Thousand Oaks, CA 91320-1799<br/>Marketed by Amgen Inc.</p>
                  <p>
                     <img src="enbrel-209.jpg" alt="PRINCIPAL DISPLAY PANEL Contains 4 Single-dose prefilled Autoinjectors NDC 58406-446-04 Enbrel® etanercept 50 mg/mL SureClick® 2.0 Autoinjector Enhanced Features see instructions for use 50 mg/mL Single-dose Prefilled Autoinjector Attention: Not for use in pediatric patients under 63 kg (138 pounds) For Subcutaneous Use Only Sterile Solution – No Preservative Refrigerate at 2° to 8°C (36° to 46°F). DO NOT FREEZE. Carton contents (4 prefilled SureClick® 2.0 Autoinjectors, 1 package insert with attached Medication Guide) are intended to be dispensed as a unit. ATTENTION: Enclosed Medication Guide is required for each patient. This Product Contains Dry Natural Rubber. AMGEN® Rx Only Manufactured by Immunex Corporation, Thousand Oaks, CA 91320-1799 Marketed by Amgen Inc."/>
                  </p>
                  <p>
                     <span style="font-weight: bold">PRINCIPAL DISPLAY PANEL</span>
                     <br/>NDC 58406-470-01</p>
                  <p>AMGEN<sup>®</sup>
                  </p>
                  <p>AutoTouch<sup>®</sup>
                     <sup> </sup>reusable autoinjector</p>
                  <p>For use with Enbrel Mini<sup>®</sup> (etanercept)</p>
                  <p>For use with Enbrel Mini<sup>®</sup> (etanercept) single-dose prefilled cartridge</p>
                  <p>Contains 1 AutoTouch<sup>®</sup> reusable autoinjector</p>
                  <p>For Subcutaneous Use Only</p>
                  <p>Store at room temperature.</p>
                  <p>IP52 – This package will resisit drops of water and dust.</p>
                  <p>Do Not Use if Package is Damaged</p>
                  <p>Type BF Applied Part</p>
                  <p>Exp: Expiry Date</p>
                  <p>Follow instructions for use</p>
                  <p>Rx Only</p>
                  <p>
                     <img src="enbrel-210.jpg" alt="PRINCIPAL DISPLAY PANEL NDC 58406-470-01 AMGEN® AutoTouch® reusable autoinjector For use with Enbrel Mini® (etanercept) For use with Enbrel Mini® (etanercept) single-dose prefilled cartridge Contains 1 AutoTouch® reusable autoinjector For Subcutaneous Use Only Store at room temperature. IP52 – This package will resisit drops of water and dust. Do Not Use if Package is Damaged Type BF Applied Part Exp: Expiry Date Follow instructions for use Rx Only"/>
                  </p>
  </div></div>"""
* section[LabelDisplay][+]
  * code = http://loinc.org#51945-4 "PACKAGE LABEL.PRINCIPAL DISPLAY PANEL"
  * title = "PRINCIPAL DISPLAY PANEL - 25 mg Vial Carton"
  * id = "b3f3ad88-9024-43ab-b2b7-5bcab852540b"
  * extension[sectionTime].valueDateTime = "2021-12-13"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><div style="narrative">
                  <p>4 Single-Dose Vials, each vial is 25 mg/0.5mL</p>
                  <p>NDC 58406-055-04</p>
                  <p>AMGEN<sup>®</sup>
                  </p>
                  <p>Enbrel<sup>®</sup>
                     <br/> etanercept</p>
                  <p>Injection<br/> 25 mg/0.5 mL<br/> Single-Dose Vial – Discard unused portion</p>
                  <p>For Subcutaneous Use Only.<br/> Sterile Solution - No Preservative.<br/> Refrigerate at 2° to 8°C (36° to 46°F). Do Not Freeze or Shake.<br/> Protect from Light.</p>
                  <p>25<br/>mg</p>
                  <p>U.S. License No. 1132<br/> Manufactured by Immunex Corporation<br/> Thousand Oaks, CA 91320-1799 U.S.A.<br/> © 2019 Immunex Corporation</p>
                  <p>Rx Only</p>
                  <img src="enbrel-211.jpg" alt="PRINCIPAL DISPLAY PANEL - 25 mg Vial Carton"/>
  </div></div>"""

Instance: Enbrel435Definition
InstanceOf: SubmittedMedicinalProduct
Description: "Structured information for the Enbrel 435 Label"
* identifier[NDCCode].value = "58406-435"
* name[Proprietary].productName = "ENBREL"
* name[NonProprietary].productName = "etanercept"
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2005-10-06"
* route = $NCI-T#C38299 "SUBCUTANEOUS"

Instance: Enbrel50mgSolution
InstanceOf: SubmittedManufacturedItem
* status = #active
* manufacturedDoseForm = $NCI-T#C42986 "SOLUTION"

Instance: Enbrel50mgSolutionActiveIngredient
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Active Ingredient Strength for Enbrel"
* for = Reference(Enbrel50mgSolution)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB
* substance.code.reference = Reference(EnbrelIngredientDefinition)
* substance.strength.presentationRatio.numerator = 50 'mg' "mg"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"

Instance: EnbrelIngredientDefinition
InstanceOf: SubmittedIngredientDefinition
Description: "Active Ingredient Information for Enbrel"
* identifier[FDAGSRS].system = "http://fdasis.nlm.nih.gov"
* identifier[FDAGSRS].value = "OP401G7OJC"
* moiety.identifier.system = "http://fdasis.nlm.nih.gov"
* moiety.identifier.value = "OP401G7OJC"
* moiety.name = "ETANERCEPT"
* name.name = "ETANERCEPT"

Instance: Enbrel50mgSolutionIngredient1
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #1 for Enbrel Solution"
* for = Reference(Enbrel50mgSolution)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#F7LTH1E20Y "ARGININE HYDROCHLORIDE"
* substance.strength.presentationRatio.numerator = 0.025 'mmol' "mmol"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"
Instance: Enbrel50mgSolutionIngredient2
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #2 for Enbrel Solution"
* for = Reference(Enbrel50mgSolution)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#451W47IQ8X "SODIUM CHLORIDE"
* substance.strength.presentationRatio.numerator = 0.12 'mmol' "mmol"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"
Instance: Enbrel50mgSolutionIngredient3
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #3 for Enbrel Solution"
* for = Reference(Enbrel50mgSolution)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#C151H8M554 "SUCROSE"
* substance.strength.presentationRatio.numerator = 10 'mg' "mg"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"

Instance: Enbrel435Package
InstanceOf: SubmittedMedicinalPackaging
Description: "4 1mL Syringes of Enbrel"
* packageFor = Reference(Enbrel435Definition)
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2005-10-05"
* packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.identifier.value = "58406-435-04"
* packaging.type = $NCI-T#C43182 "CARTON"
* packaging.packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.packaging.identifier.value = "58406-435-01"
* packaging.packaging.quantity = 4
* packaging.packaging.property.type = SubmittedMedicinalProductCharacteristicCodes#SPLCMBPRDTP
* packaging.packaging.property.valueCodeableConcept = $NCI-T#C112160 "Type 0: Not a Combination Product"
* packaging.packaging.containedItem.amount = 1 'mL' "mL"
* packaging.packaging.containedItem.item.reference = Reference(Enbrel50mgSolution)
* packaging.packaging.type = $NCI-T#C43202 "SYRINGE"

Instance: Enbrel435Marketing
InstanceOf: SubmittedMedicinalProductMarketing
Description: "Marketing information for Enbrel 435"
* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "NDA103795"
* subject = Reference(Enbrel435Definition)
* type = $NCI-T#C73594 "NDA"
* region = urn:iso:std:iso:3166#USA

Instance: Enbrel445Definition
InstanceOf: SubmittedMedicinalProduct
Description: "Structured information for the Enbrel 445 Label"
* identifier[NDCCode].value = "58406-445"
* name[Proprietary].productName = "ENBREL"
* name[NonProprietary].productName = "etanercept"
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2005-11-10"
* route = $NCI-T#C38299 "SUBCUTANEOUS"

Instance: Enbrel445Package
InstanceOf: SubmittedMedicinalPackaging
Description: "4 1mL autoinjectors of Enbrel"
* packageFor = Reference(Enbrel445Definition)
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2005-11-10"
* packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.identifier.value = "58406-445-04"
* packaging.type = $NCI-T#C43182 "CARTON"
* packaging.packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.packaging.identifier.value = "58406-445-01"
* packaging.packaging.quantity = 4
* packaging.packaging.property.type = SubmittedMedicinalProductCharacteristicCodes#SPLCMBPRDTP
* packaging.packaging.property.valueCodeableConcept = $NCI-T#C112160 "Type 0: Not a Combination Product"
* packaging.packaging.containedItem.amount = 1 'mL' "mL"
* packaging.packaging.containedItem.item.reference = Reference(Enbrel50mgSolution)
* packaging.packaging.type = $NCI-T#C43202 "SYRINGE"

Instance: Enbrel445Marketing
InstanceOf: SubmittedMedicinalProductMarketing
Description: "Marketing information for Enbrel 445"
* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "NDA103795"
* subject = Reference(Enbrel445Definition)
* type = $NCI-T#C73594 "NDA"
* region = urn:iso:std:iso:3166#USA

Instance: Enbrel425Definition
InstanceOf: SubmittedMedicinalProduct
Description: "Structured information for the Enbrel 425 Label"
* identifier[NDCCode].value = "58406-425"
* name[Proprietary].productName = "ENBREL"
* name[NonProprietary].productName = "etanercept"
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2003-01-02"

Instance: Enbrel425Part1Definition
InstanceOf: SubmittedMedicinalProduct
Description: "Structured information for the Enbrel 425 Part 1"
* identifier[NDCCode].value = "58406-424"
* name[Proprietary].productName = "ENBREL"
* name[NonProprietary].productName = "etanercept"
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2003-01-02"

Instance: Enbrel425Part2Definition
InstanceOf: SubmittedMedicinalProduct
Description: "Structured information for the Enbrel 425 Part 2"
* identifier[NDCCode].value = "58406-910"
* name[Proprietary].productName = "ENBREL"
* name[NonProprietary].productName = "etanercept"
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2003-01-02"

Instance: Enbrel425Part1Package
InstanceOf: SubmittedMedicinalPackaging
Description: "1 vial of Enbrel powder"
* packageFor = Reference(Enbrel425Part1Definition)
* packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.identifier.value = "58406-424-01"
* packaging.containedItem.amount = 1 'mL' "mL"
* packaging.containedItem.item.reference = Reference(EnbrelPowder)
* packaging.type = $NCI-T#C43226 "VIAL"
* packaging.property.type = SubmittedMedicinalProductCharacteristicCodes#SPLCMBPRDTP
* packaging.property.valueCodeableConcept = $NCI-T#C102835 "Type 2: Prefilled Drug Delivery Device/System (syringe, patch, etc.)"

Instance: Enbrel425Part2Package
InstanceOf: SubmittedMedicinalPackaging
Description: "1 syringe of sterile bacteriostatic water"
* packageFor = Reference(Enbrel425Part2Definition)
* packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.identifier.value = "58406-910-01"
* packaging.containedItem.amount = 1 'mL' "mL"
* packaging.containedItem.item.reference = Reference(EnbrelSterileSolution)
* packaging.type = $NCI-T#C43202 "SYRINGE"
* packaging.property.type = SubmittedMedicinalProductCharacteristicCodes#SPLCMBPRDTP
* packaging.property.valueCodeableConcept = $NCI-T#C102835 "Type 2: Prefilled Drug Delivery Device/System (syringe, patch, etc.)"

Instance: Enbrel425Part1Marketing
InstanceOf: SubmittedMedicinalProductMarketing
Description: "Marketing information for Enbrel 425 Part 1"
* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "NDA103795"
* subject = Reference(Enbrel425Part1Definition)
* type = $NCI-T#C73594 "NDA"
* region = urn:iso:std:iso:3166#USA

Instance: Enbrel425Part2Marketing
InstanceOf: SubmittedMedicinalProductMarketing
Description: "Marketing information for Enbrel 425 Part 2"
* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "NDA103795"
* subject = Reference(Enbrel425Part2Definition)
* type = $NCI-T#C73594 "NDA"
* region = urn:iso:std:iso:3166#USA

Instance: EnbrelKit
InstanceOf: SubmittedManufacturedItem
* status = #active
* manufacturedDoseForm = $NCI-T#C47916 "KIT"

Instance: EnbrelPowder
InstanceOf: SubmittedManufacturedItem
* status = #active
* manufacturedDoseForm = $NCI-T#C42957 "INJECTION, POWDER, LYOPHILIZED, FOR SOLUTION"

Instance: EnbrelPowderActiveIngredient
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Active Ingredient Strength for Enbrel Powder"
* for = Reference(EnbrelPowder)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB
* substance.code.reference = Reference(EnbrelIngredientDefinition)
* substance.strength.presentationRatio.numerator = 25 'mg' "mg"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"

Instance: EnbrelPowderIngredient1
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #1 for Enbrel Powder"
* for = Reference(EnbrelPowder)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#3OWL53L36A "MANNITOL"
* substance.strength.presentationRatio.numerator = 40 'mg' "mg"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"
Instance: EnbrelPowderIngredient2
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #2 for Enbrel Powder"
* for = Reference(EnbrelPowder)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#C151H8M554 "SUCROSE"
* substance.strength.presentationRatio.numerator = 10 'mg' "mg"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"
Instance: EnbrelPowderIngredient3
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #3 for Enbrel Powder"
* for = Reference(EnbrelPowder)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#023C2WHX2V "TROMETHAMINE"
* substance.strength.presentationRatio.numerator = 1.2 'mg' "mg"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"

Instance: EnbrelSterileSolution
InstanceOf: SubmittedManufacturedItem
* status = #active
* manufacturedDoseForm = $NCI-T#C42986 "SOLUTION"

Instance: EnbrelSterileSolutionIngredient1
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #1 for Enbrel Sterile Solution"
* for = Reference(EnbrelSterileSolution)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#LKG8494WBH "BENZYL ALCOHOL"
* substance.strength.presentationRatio.numerator = 9.93 'mg' "mg"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"
Instance: EnbrelSterileSolutionIngredient2
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #2 for Enbrel Sterile Solution"
* for = Reference(EnbrelSterileSolution)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#059QF0KO0R "WATER"
* substance.strength.presentationRatio.numerator = 1 'mL' "mL"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"

Instance: Enbrel425Package
InstanceOf: SubmittedMedicinalPackaging
Description: "4 25mg kits of Enbrel"
* packageFor = Reference(Enbrel425Definition)
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2003-10-02"
* packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.identifier.value = "58406-425-34"
* packaging.type = $NCI-T#C43182 "CARTON"
* packaging.packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.packaging.identifier.value = "58406-425-41"
* packaging.packaging.quantity = 4
* packaging.packaging.type = $NCI-T#C43197 "KIT"
* packaging.packaging.containedItem.item.reference = Reference(EnbrelKit)
* packaging.packaging.containedItem.amount = 1 '1'
* packaging.packaging.packaging[+].extension[packageInstanceOf].valueReference = Reference(Enbrel425Part1Package)
* packaging.packaging.packaging[=].identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.packaging.packaging[=].identifier.value = "58406-424-01"
* packaging.packaging.packaging[=].type = $NCI-T#C43226 "VIAL"
* packaging.packaging.packaging[=].containedItem.item.reference = Reference(EnbrelPowder)
* packaging.packaging.packaging[=].containedItem.amount = 1 'mL'
* packaging.packaging.packaging[+].extension[packageInstanceOf].valueReference = Reference(Enbrel425Part2Package)
* packaging.packaging.packaging[=].identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.packaging.packaging[=].identifier.value = "58406-910-01"
* packaging.packaging.packaging[=].type = $NCI-T#C43202 "SYRINGE"
* packaging.packaging.packaging[=].containedItem.item.reference = Reference(EnbrelSterileSolution)
* packaging.packaging.packaging[=].containedItem.amount = 1 'mL'

Instance: Enbrel425Marketing
InstanceOf: SubmittedMedicinalProductMarketing
Description: "Marketing information for Enbrel 425"
* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "NDA103795"
* subject = Reference(Enbrel425Definition)
* type = $NCI-T#C73594 "NDA"
* region = urn:iso:std:iso:3166#USA

Instance: Enbrel455Definition
InstanceOf: SubmittedMedicinalProduct
Description: "Structured information for the Enbrel 455 Label"
* identifier[NDCCode].value = "58406-455"
* name[Proprietary].productName = "ENBREL"
* name[NonProprietary].productName = "etanercept"
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2005-11-10"
* route = $NCI-T#C38299 "SUBCUTANEOUS"

Instance: Enbrel25mgSolution
InstanceOf: SubmittedManufacturedItem
* status = #active
* manufacturedDoseForm = $NCI-T#C42986 "SOLUTION"

Instance: Enbrel25mgSolutionActiveIngredient
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Active Ingredient Strength for Enbrel"
* for = Reference(Enbrel25mgSolution)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB
* substance.code.reference = Reference(EnbrelIngredientDefinition)
* substance.strength.presentationRatio.numerator = 25 'mg' "mg"
* substance.strength.presentationRatio.denominator = 0.5 'mL' "mL"

Instance: Enbrel25mgSolutionIngredient1
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #1 for Enbrel 25mg Solution"
* for = Reference(Enbrel25mgSolution)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#F7LTH1E20Y "ARGININE HYDROCHLORIDE"
* substance.strength.presentationRatio.numerator = 0.013 'mmol' "mmol"
* substance.strength.presentationRatio.denominator = 0.5 'mL' "mL"
Instance: Enbrel25mgSolutionIngredient2
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #2 for Enbrel 25mg Solution"
* for = Reference(Enbrel25mgSolution)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#451W47IQ8X "SODIUM CHLORIDE"
* substance.strength.presentationRatio.numerator = 0.06 'mmol' "mmol"
* substance.strength.presentationRatio.denominator = 0.5 'mL' "mL"
Instance: Enbrel25mgSolutionIngredient3
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #3 for Enbrel 25mg Solution"
* for = Reference(Enbrel25mgSolution)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#C151H8M554 "SUCROSE"
* substance.strength.presentationRatio.numerator = 5 'mg' "mg"
* substance.strength.presentationRatio.denominator = 0.5 'mL' "mL"

Instance: Enbrel455Package
InstanceOf: SubmittedMedicinalPackaging
Description: "4 0.5mL syringes of Enbrel"
* packageFor = Reference(Enbrel455Definition)
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2005-11-10"
* packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.identifier.value = "58406-455-04"
* packaging.type = $NCI-T#C43182 "CARTON"
* packaging.property.type = SubmittedMedicinalProductCharacteristicCodes#SPLCMBPRDTP
* packaging.property.valueCodeableConcept = $NCI-T#C102835 "Type 2: Prefilled Drug Delivery Device/System (syringe, patch, etc.)"
* packaging.packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.packaging.identifier.value = "58406-455-01"
* packaging.packaging.quantity = 4
* packaging.packaging.containedItem.amount = 0.5 'mL' "mL"
* packaging.packaging.containedItem.item.reference = Reference(Enbrel25mgSolution)
* packaging.packaging.type = $NCI-T#C43202 "SYRINGE"

Instance: Enbrel455Marketing
InstanceOf: SubmittedMedicinalProductMarketing
Description: "Marketing information for Enbrel 455"
* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "NDA103795"
* subject = Reference(Enbrel455Definition)
* type = $NCI-T#C73594 "NDA"
* region = urn:iso:std:iso:3166#USA

Instance: Enbrel456Definition
InstanceOf: SubmittedMedicinalProduct
Description: "Structured information for the Enbrel 456 Label"
* identifier[NDCCode].value = "58406-456"
* name[Proprietary].productName = "ENBREL"
* name[NonProprietary].productName = "etanercept"
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2017-09-29"
* route = $NCI-T#C38299 "SUBCUTANEOUS"

Instance: Enbrel456Package
InstanceOf: SubmittedMedicinalPackaging
Description: "4 1mL cartridges of Enbrel"
* packageFor = Reference(Enbrel456Definition)
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2017-09-29"
* packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.identifier.value = "58406-456-04"
* packaging.type = $NCI-T#C43182 "CARTON"
* packaging.property.type = SubmittedMedicinalProductCharacteristicCodes#SPLCMBPRDTP
* packaging.property.valueCodeableConcept = $NCI-T#C102835 "Type 2: Prefilled Drug Delivery Device/System (syringe, patch, etc.)"
* packaging.packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.packaging.identifier.value = "58406-456-01"
* packaging.packaging.quantity = 4
* packaging.packaging.containedItem.amount = 1 'mL' "mL"
* packaging.packaging.containedItem.item.reference = Reference(Enbrel50mgSolution)
* packaging.packaging.type = $NCI-T#C43183 "CARTRIDGE"

Instance: Enbrel456Marketing
InstanceOf: SubmittedMedicinalProductMarketing
Description: "Marketing information for Enbrel 456"
* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "NDA103795"
* subject = Reference(Enbrel456Definition)
* type = $NCI-T#C73594 "NDA"
* region = urn:iso:std:iso:3166#USA

Instance: Enbrel446Definition
InstanceOf: SubmittedMedicinalProduct
Description: "Structured information for the Enbrel 446 Label"
* identifier[NDCCode].value = "58406-446"
* name[Proprietary].productName = "ENBREL"
* name[NonProprietary].productName = "etanercept"
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2017-10-20"
* route = $NCI-T#C38299 "SUBCUTANEOUS"

Instance: Enbrel446Package
InstanceOf: SubmittedMedicinalPackaging
Description: "4 1mL autoinjectors of Enbrel"
* packageFor = Reference(Enbrel446Definition)
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2017-10-20"
* packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.identifier.value = "58406-446-04"
* packaging.type = $NCI-T#C43182 "CARTON"
* packaging.property.type = SubmittedMedicinalProductCharacteristicCodes#SPLCMBPRDTP
* packaging.property.valueCodeableConcept = $NCI-T#C102835 "Type 2: Prefilled Drug Delivery Device/System (syringe, patch, etc.)"
* packaging.packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.packaging.identifier.value = "58406-446-01"
* packaging.packaging.quantity = 4
* packaging.packaging.containedItem.amount = 1 'mL' "mL"
* packaging.packaging.containedItem.item.reference = Reference(Enbrel50mgSolution)
* packaging.packaging.type = $NCI-T#C43202 "SYRINGE"

Instance: Enbrel446Marketing
InstanceOf: SubmittedMedicinalProductMarketing
Description: "Marketing information for Enbrel 446"
* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "NDA103795"
* subject = Reference(Enbrel446Definition)
* type = $NCI-T#C73594 "NDA"
* region = urn:iso:std:iso:3166#USA

Instance: Enbrel021Definition
InstanceOf: SubmittedMedicinalProduct
Description: "Structured information for the Enbrel 021 Label"
* identifier[NDCCode].value = "58406-021"
* name[Proprietary].productName = "ENBREL"
* name[NonProprietary].productName = "etanercept"
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2019-06-07"
* route = $NCI-T#C38299 "SUBCUTANEOUS"

Instance: Enbrel021Package
InstanceOf: SubmittedMedicinalPackaging
Description: "4 1mL Syringes of Enbrel"
* packageFor = Reference(Enbrel021Definition)
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2019-06-07"
* packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.identifier.value = "58406-021-04"
* packaging.type = $NCI-T#C43182 "CARTON"
* packaging.property.type = SubmittedMedicinalProductCharacteristicCodes#SPLCMBPRDTP
* packaging.property.valueCodeableConcept = $NCI-T#C102835 "Type 2: Prefilled Drug Delivery Device/System (syringe, patch, etc.)"
* packaging.packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.packaging.identifier.value = "58406-021-01"
* packaging.packaging.quantity = 4
* packaging.packaging.containedItem.amount = 1 'mL' "mL"
* packaging.packaging.containedItem.item.reference = Reference(Enbrel50mgSolution)
* packaging.packaging.type = $NCI-T#C43202 "SYRINGE"

Instance: Enbrel021Marketing
InstanceOf: SubmittedMedicinalProductMarketing
Description: "Marketing information for Enbrel 021"
* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "NDA103795"
* subject = Reference(Enbrel021Definition)
* type = $NCI-T#C73594 "NDA"
* region = urn:iso:std:iso:3166#USA

Instance: Enbrel032Definition
InstanceOf: SubmittedMedicinalProduct
Description: "Structured information for the Enbrel 032 Label"
* identifier[NDCCode].value = "58406-032"
* name[Proprietary].productName = "ENBREL"
* name[NonProprietary].productName = "etanercept"
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2019-06-07"
* route = $NCI-T#C38299 "SUBCUTANEOUS"

Instance: Enbrel032Package
InstanceOf: SubmittedMedicinalPackaging
Description: "4 1mL autoinjectors of Enbrel"
* packageFor = Reference(Enbrel032Definition)
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2019-06-07"
* packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.identifier.value = "58406-032-04"
* packaging.type = $NCI-T#C43182 "CARTON"
* packaging.property.type = SubmittedMedicinalProductCharacteristicCodes#SPLCMBPRDTP
* packaging.property.valueCodeableConcept = $NCI-T#C102835 "Type 2: Prefilled Drug Delivery Device/System (syringe, patch, etc.)"
* packaging.packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.packaging.identifier.value = "58406-032-01"
* packaging.packaging.quantity = 4
* packaging.packaging.containedItem.amount = 1 'mL' "mL"
* packaging.packaging.containedItem.item.reference = Reference(Enbrel50mgSolution)
* packaging.packaging.type = $NCI-T#C43202 "SYRINGE"

Instance: Enbrel032Marketing
InstanceOf: SubmittedMedicinalProductMarketing
Description: "Marketing information for Enbrel 032"
* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "NDA103795"
* subject = Reference(Enbrel032Definition)
* type = $NCI-T#C73594 "NDA"
* region = urn:iso:std:iso:3166#USA

Instance: Enbrel010Definition
InstanceOf: SubmittedMedicinalProduct
Description: "Structured information for the Enbrel 010 Label"
* identifier[NDCCode].value = "58406-010"
* name[Proprietary].productName = "ENBREL"
* name[NonProprietary].productName = "etanercept"
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2019-06-07"
* route = $NCI-T#C38299 "SUBCUTANEOUS"

Instance: Enbrel010Package
InstanceOf: SubmittedMedicinalPackaging
Description: "4 0.5mL syringes of Enbrel"
* packageFor = Reference(Enbrel010Definition)
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2019-06-07"
* packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.identifier.value = "58406-010-04"
* packaging.type = $NCI-T#C43182 "CARTON"
* packaging.property.type = SubmittedMedicinalProductCharacteristicCodes#SPLCMBPRDTP
* packaging.property.valueCodeableConcept = $NCI-T#C102835 "Type 2: Prefilled Drug Delivery Device/System (syringe, patch, etc.)"
* packaging.packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.packaging.identifier.value = "58406-010-01"
* packaging.packaging.quantity = 4
* packaging.packaging.containedItem.amount = 0.5 'mL' "mL"
* packaging.packaging.containedItem.item.reference = Reference(Enbrel25mgSolution)
* packaging.packaging.type = $NCI-T#C43202 "SYRINGE"

Instance: Enbrel010Marketing
InstanceOf: SubmittedMedicinalProductMarketing
Description: "Marketing information for Enbrel 010"
* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "NDA103795"
* subject = Reference(Enbrel010Definition)
* type = $NCI-T#C73594 "NDA"
* region = urn:iso:std:iso:3166#USA

Instance: Enbrel044Definition
InstanceOf: SubmittedMedicinalProduct
Description: "Structured information for the Enbrel 044 Label"
* identifier[NDCCode].value = "58406-044"
* name[Proprietary].productName = "ENBREL"
* name[NonProprietary].productName = "etanercept"
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2019-06-07"
* route = $NCI-T#C38299 "SUBCUTANEOUS"

Instance: Enbrel044Package
InstanceOf: SubmittedMedicinalPackaging
Description: "4 1mL cartridges of Enbrel"
* packageFor = Reference(Enbrel044Definition)
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2019-06-07"
* packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.identifier.value = "58406-044-04"
* packaging.type = $NCI-T#C43182 "CARTON"
* packaging.property.type = SubmittedMedicinalProductCharacteristicCodes#SPLCMBPRDTP
* packaging.property.valueCodeableConcept = $NCI-T#C102835 "Type 2: Prefilled Drug Delivery Device/System (syringe, patch, etc.)"
* packaging.packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.packaging.identifier.value = "58406-044-01"
* packaging.packaging.quantity = 4
* packaging.packaging.containedItem.amount = 1 'mL' "mL"
* packaging.packaging.containedItem.item.reference = Reference(Enbrel50mgSolution)
* packaging.packaging.type = $NCI-T#C43183 "CARTRIDGE"

Instance: Enbrel044Marketing
InstanceOf: SubmittedMedicinalProductMarketing
Description: "Marketing information for Enbrel 044"
* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "NDA103795"
* subject = Reference(Enbrel044Definition)
* type = $NCI-T#C73594 "NDA"
* region = urn:iso:std:iso:3166#USA

Instance: Enbrel055Definition
InstanceOf: SubmittedMedicinalProduct
Description: "Structured information for the Enbrel 055 Label"
* identifier[NDCCode].value = "58406-055"
* name[Proprietary].productName = "ENBREL"
* name[NonProprietary].productName = "etanercept"
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2020-03-05"
* route = $NCI-T#C38299 "SUBCUTANEOUS"

Instance: Enbrel055Package
InstanceOf: SubmittedMedicinalPackaging
Description: "4 0.5mL syringes of Enbrel"
* packageFor = Reference(Enbrel055Definition)
* marketingStatus.status = SPLMarketingStatusCodes#active
* marketingStatus.dateRange.start = "2020-03-05"
* packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.identifier.value = "58406-055-04"
* packaging.type = $NCI-T#C43182 "CARTON"
* packaging.property.type = SubmittedMedicinalProductCharacteristicCodes#SPLCMBPRDTP
* packaging.property.valueCodeableConcept = $NCI-T#C102835 "Type 2: Prefilled Drug Delivery Device/System (syringe, patch, etc.)"
* packaging.packaging.identifier.system = "http://hl7.org/fhir/sid/ndc"
* packaging.packaging.identifier.value = "58406-055-01"
* packaging.packaging.quantity = 4
* packaging.packaging.containedItem.amount = 0.5 'mL' "mL"
* packaging.packaging.containedItem.item.reference = Reference(Enbrel25mgSolution)
* packaging.packaging.type = $NCI-T#C43202 "SYRINGE"

Instance: Enbrel055Marketing
InstanceOf: SubmittedMedicinalProductMarketing
Description: "Marketing information for Enbrel 055"
* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "NDA103795"
* subject = Reference(Enbrel055Definition)
* type = $NCI-T#C73594 "NDA"
* region = urn:iso:std:iso:3166#USA
