Instance: LantusInjectionLabelBundle
InstanceOf: ProductSubmissionBundle
Description: "A bundle containing all of the information for the Lantus Injection Label"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:4e455ace-94f4-4fa3-85eb-0152e5a06239"
* type = #document
* timestamp = "2021-01-27T00:00:00.0000Z"
* entry[0]
  * insert bundleEntry(Composition, LantusInjectionLabelComposition)
* entry[+]
  * insert bundleEntry(Organization, SanofiAventisUS)
* entry[+]
  * insert bundleEntry(Organization, SanofiAventisDeutschland)
* entry[+]
  * insert bundleEntry(Organization, SanofiAventisSRL)
* entry[+]
  * insert bundleEntry(MedicinalProductDefinition, LantusSyringeDefinition)
* entry[+]
  * insert bundleEntry(MedicinalProductDefinition, LantusVialDefinition)
* entry[+]
  * insert bundleEntry(Ingredient, LantusVialActiveIngredient)
* entry[+]
  * insert bundleEntry(SubstanceDefinition, LantusVialIngredientDefinition)
* entry[+]
  * insert bundleEntry(Ingredient, LantusVialIngredient1)
* entry[+]
  * insert bundleEntry(Ingredient, LantusVialIngredient2)
* entry[+]
  * insert bundleEntry(Ingredient, LantusVialIngredient3)
* entry[+]
  * insert bundleEntry(Ingredient, LantusVialIngredient4)
* entry[+]
  * insert bundleEntry(Ingredient, LantusVialIngredient5)
* entry[+]
  * insert bundleEntry(Ingredient, LantusVialIngredient6)
* entry[+]
  * insert bundleEntry(Ingredient, LantusVialIngredient7)
* entry[+]
  * insert bundleEntry(Ingredient, LantusSyringeActiveIngredient)
* entry[+]
  * insert bundleEntry(SubstanceDefinition, LantusSyringeIngredientDefinition)
* entry[+]
  * insert bundleEntry(Ingredient, LantusSyringeIngredient1)
* entry[+]
  * insert bundleEntry(Ingredient, LantusSyringeIngredient2)
* entry[+]
  * insert bundleEntry(Ingredient, LantusSyringeIngredient3)
* entry[+]
  * insert bundleEntry(Ingredient, LantusSyringeIngredient4)
* entry[+]
  * insert bundleEntry(Ingredient, LantusSyringeIngredient5)
* entry[+]
  * insert bundleEntry(Ingredient, LantusSyringeIngredient6)
* entry[+]
  * insert bundleEntry(PackagedProductDefinition, LantusVialPackage)
* entry[+]
  * insert bundleEntry(PackagedProductDefinition, LantusSyringePackage)
* entry[+]
  * insert bundleEntry(RegulatedAuthorization, LantusVialMarketing)
* entry[+]
  * insert bundleEntry(RegulatedAuthorization, LantusSyringeMarketing)

Instance: SanofiAventisUS
InstanceOf: IdentifiedLabeler
Description: "Sanifo-Aventis US - labeller for Lantus Injection"
* type = OrganizationTypes#Labeler
* name = "sanofi-aventis U.S. LLC"
* identifier.system = "urn:oid:1.3.6.1.4.1.519.1"
* identifier.value = "783243835"

Instance: SanofiAventisDeutschland
InstanceOf: IdentifiedEstablishment
Description: "Sanifo-Aventis Deutschland - establishment for Lantus Injection"
* type = OrganizationTypes#Establishment
* name = "Sanofi-Aventis Deutschland GmbH"
* identifier.system = "urn:oid:1.3.6.1.4.1.519.1"
* identifier.value = "313218430"

Instance: SanofiAventisSRL
InstanceOf: IdentifiedEstablishment
Description: "Sanifo-Aventis SRL - establishment for Lantus Injection"
* type = OrganizationTypes#Establishment
* name = "Sanofi S.r.l."
* identifier.system = "urn:oid:1.3.6.1.4.1.519.1"
* identifier.value = "338454274"

Instance: LantusInjectionLabelComposition
InstanceOf: ProductSubmissionDocument
Description: "Header information for the Lantus Injection Label"
* extension[versionNumber].valueString = "11"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6328c99d-d75f-43ef-b19e-7e71f91e57f6"
* status = #final
* type = http://loinc.org#34391-3 "HUMAN PRESCRIPTION DRUG LABEL"
* date = "2021-01-27"
* author = Reference(SanofiAventisUS)
* title = "These highlights do not include all the information needed to use LANTUS safely and effectively. See full prescribing information for LANTUS. <br/>
      <br/>LANTUS<sup>®</sup> (insulin glargine injection) for subcutaneous injection <br/>Initial U.S. Approval: 2000"
* section[0]
  * id = "68224803-d32c-4438-9439-9c210668e295"
  * code = http://loinc.org#34067-9 "INDICATIONS &amp; USAGE SECTION"
  * title = "1 INDICATIONS AND USAGE"
  * extension[sectionTime].valueDateTime = "2021-01-27"
  * extension[highlights].valueString = """<div xmlns="http://www.w3.org/1999/xhtml">
    <p>LANTUS is a long-acting human insulin analog indicated to improve glycemic control in adults and pediatric patients with type 1 diabetes mellitus and in adults with type 2 diabetes mellitus. (<a href="#S1">1</a>)</p>
    <p>
        <span style="text-decoration: underline">Limitations of Use</span>
    </p>
    <p>Not recommended for treating diabetic ketoacidosis. (<a href="#S1">1</a>)</p>
    </div>"""
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
    <p>LANTUS is indicated to improve glycemic control in adults and pediatric patients with type 1 diabetes mellitus and in adults with type 2 diabetes mellitus.</p>
  </div>"""
  * section[0]
    * id = "0230cfa8-ff67-4666-ba57-bbad268ac6fe"
    * code = http://loinc.org#42229-5 "SPL UNCLASSIFIED SECTION"
    * text.status = #additional
    * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
                       <p>
                           <span style="text-decoration: underline">Limitations of Use</span>
                        </p>
                        <p>LANTUS is not recommended for the treatment of diabetic ketoacidosis.</p>
     </div>"""
* section[ProductSection]
  * entry[0] = Reference(LantusSyringeDefinition)
  * entry[1] = Reference(LantusVialDefinition)
  * code = http://loinc.org#48780-1 "SPL LISTING DATA ELEMENTS SECTION"
  * id = "f65bb254-5018-4af5-b02a-38d5d51ed901"
  * extension[sectionTime].valueDateTime = "2021-01-27"
* section[LabelDisplay][0]
  * code = http://loinc.org#51945-4 "PACKAGE LABEL.PRINCIPAL DISPLAY PANEL"
  * title = "PRINCIPAL DISPLAY PANEL - 10 mL Vial Package"
  * id = "ff673a31-f676-444c-a009-8d4a2645fd19"
  * extension[sectionTime].valueDateTime = "2021-01-27"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
                  <p>NDC 0088-5021-01<br/>                     Rx only</p>
                  <p>                     Lantus<sup>®</sup>
                     <br/>                     insulin glargine<br/>injection</p>
                  <p>                     100 units/mL<br/>(U-100)<br/>                  For subcutaneous<br/>injection only</p>
                  <p>                     Do not mix with<br/>other insulins</p>
                  <p>Use only if solution<br/>is clear and colorless<br/>with no particles visible</p>
                  <p>Use with U-100<br/>syringe only</p>
                  <p>                     One 10 mL multiple-dose vial</p>
                  <p>                     novaplus <sub>™</sub>
                  </p>
                  <img src="lantusnova-20.jpg" alt="PRINCIPAL DISPLAY PANEL - 10 mL Vial Package"/>
  </div>"""
* section[LabelDisplay][+]
  * code = http://loinc.org#51945-4 "PACKAGE LABEL.PRINCIPAL DISPLAY PANEL"
  * title = "PRINCIPAL DISPLAY PANEL - 3 mL Syringe Package"
  * id = "8ce1b409-6067-4c9d-8e21-bdb6df850c24"
  * extension[sectionTime].valueDateTime = "2021-01-27"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
                  <p>NDC 0088-5020-05<br/>                     Rx only</p>
                  <p>                     Lantus<sup>®</sup> SoloStar<sup>®</sup>
                     <br/>insulin glargine injection <br/>   For Single Patient Use Only  <br/> 100 units/mL (U-100)<br/> Five 3 mL Prefilled Pens</p>
                  <p>Solution for injection in a disposable insulin delivery device <br/> Do not mix with other insulins <br/>For subcutaneous injection only 					  <br/>Use only if solution is clear and colorless with no particles visible <br/>Use within 28 days after initial use     *Needles not include  (see back panel)</p>
                  <p>                     novaplus <sub>™</sub>
                  </p>
                  <img src="lantusnova-21.jpg" alt="PRINCIPAL DISPLAY PANEL - 3 mL Syringe Package"/>
  </div>"""

Instance: LantusVialDefinition
InstanceOf: SubmittedMedicinalProduct
Description: "Structured information for the Lantus Vial product"
* identifier.system = "http://hl7.org/fhir/sid/ndc"
* identifier.value = "0088-5021"
* name[0].productName = "Lantus"
* name[0].type = SubmittedMedicinalProductNameTypes#PROPRIETARY
* name[1].productName = "insulin glargine"
* name[1].type = SubmittedMedicinalProductNameTypes#NONPROPRIETARY
* combinedPharmaceuticalDoseForm = http://ncimeta.nci.nih.gov#C42945 "INJECTION, SOLUTION"
* marketingStatus.status = http://hl7.org/fhir/publication-status#active
* marketingStatus.dateRange.start = "2017-06-04"
* route = $NCI-T#C38299 "SUBCUTANEOUS"
* operation[0]
  * type.concept = http://ncimeta.nci.nih.gov#C25391 "ANALYSIS"
  * organization = Reference(SanofiAventisDeutschland)
* operation[+]
  * type.concept = http://ncimeta.nci.nih.gov#C82401 "API MANUFACTURE"
  * organization = Reference(SanofiAventisDeutschland)
* operation[+]
  * type.concept = http://ncimeta.nci.nih.gov#C84732 "LABEL"
  * organization = Reference(SanofiAventisDeutschland)
* operation[+]
  * type.concept = http://ncimeta.nci.nih.gov#C43360 "MANUFACTURE"
  * organization = Reference(SanofiAventisDeutschland)
* operation[+]
  * type.concept = http://ncimeta.nci.nih.gov#C84731 "PACK"
  * organization = Reference(SanofiAventisDeutschland)
* operation[+]
  * type.concept = http://ncimeta.nci.nih.gov#C25391 "ANALYSIS"
  * organization = Reference(SanofiAventisSRL)
* operation[+]
  * type.concept = http://ncimeta.nci.nih.gov#C84732 "LABEL"
  * organization = Reference(SanofiAventisSRL)
* operation[+]
  * type.concept = http://ncimeta.nci.nih.gov#C43360 "MANUFACTURE"
  * organization = Reference(SanofiAventisSRL)
* operation[+]
  * type.concept = http://ncimeta.nci.nih.gov#C84731 "PACK"
  * organization = Reference(SanofiAventisSRL)

Instance: LantusSyringeDefinition
InstanceOf: SubmittedMedicinalProduct
Description: "Structured information for the Lantus Syringe product"
* identifier.system = "http://hl7.org/fhir/sid/ndc"
* identifier.value = "0088-5020"
* name[0].productName = "Lantus Solostar"
* name[0].type = SubmittedMedicinalProductNameTypes#PROPRIETARY
* name[1].productName = "insulin glargine"
* name[1].type = SubmittedMedicinalProductNameTypes#NONPROPRIETARY
* combinedPharmaceuticalDoseForm = http://ncimeta.nci.nih.gov#C42945 "INJECTION, SOLUTION"
* marketingStatus.status = http://hl7.org/fhir/publication-status#active
* marketingStatus.dateRange.start = "2017-06-04"
* route = $NCI-T#C38299 "SUBCUTANEOUS"
* operation[0]
  * type.concept = http://ncimeta.nci.nih.gov#C25391 "ANALYSIS"
  * organization = Reference(SanofiAventisDeutschland)
* operation[+]
  * type.concept = http://ncimeta.nci.nih.gov#C82401 "API MANUFACTURE"
  * organization = Reference(SanofiAventisDeutschland)
* operation[+]
  * type.concept = http://ncimeta.nci.nih.gov#C84732 "LABEL"
  * organization = Reference(SanofiAventisDeutschland)
* operation[+]
  * type.concept = http://ncimeta.nci.nih.gov#C43360 "MANUFACTURE"
  * organization = Reference(SanofiAventisDeutschland)
* operation[+]
  * type.concept = http://ncimeta.nci.nih.gov#C84731 "PACK"
  * organization = Reference(SanofiAventisDeutschland)

Instance: LantusVialActiveIngredient
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Active Ingredient Strength for Lantus Vial"
* for = Reference(LantusVialDefinition)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB
* substance.code.reference = Reference(LantusVialIngredientDefinition)
* substance.strength.presentationRatio.numerator = 100 '[iU]' "iU"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"

Instance: LantusVialIngredientDefinition
InstanceOf: SubmittedIngredientDefinition
Description: "Active Ingredient Information for Lantus Vial"
* identifier.system = "http://fdasis.nlm.nih.gov"
* identifier.value = "2ZM8CX04RZ"
* moiety.identifier.system = "http://fdasis.nlm.nih.gov"
* moiety.identifier.value = "2ZM8CX04RZ"
* moiety.name = "INSULIN GLARGINE"
* name.name = "INSULIN GLARGINE"

Instance: LantusVialIngredient1
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #1 for Lantus Vial"
* for = Reference(LantusVialDefinition)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#J41CSQ7QDS "ZINC"
* substance.strength.presentationRatio.numerator = 30 'ug' "ug"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"
Instance: LantusVialIngredient2
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #2 for Lantus Vial"
* for = Reference(LantusVialDefinition)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#GGO4Y809LO "METACRESOL"
* substance.strength.presentationRatio.numerator = 2.7 'mg' "mg"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"
Instance: LantusVialIngredient3
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #3 for Lantus Vial"
* for = Reference(LantusVialDefinition)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#PDC6A3C0OX "GLYCERIN"
* substance.strength.presentationRatio.numerator = 20 'mg' "mg"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"
Instance: LantusVialIngredient4
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #4 for Lantus Vial"
* for = Reference(LantusVialDefinition)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#7T1F30V5YH "POLYSORBATE 20"
* substance.strength.presentationRatio.numerator = 20 'ug' "ug"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"
Instance: LantusVialIngredient5
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #5 for Lantus Vial"
* for = Reference(LantusVialDefinition)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#059QF0KO0R "WATER"
Instance: LantusVialIngredient6
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #6 for Lantus Vial"
* for = Reference(LantusVialDefinition)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#QTT17582CB "HYDROCHLORIC ACID"
Instance: LantusVialIngredient7
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #7 for Lantus Vial"
* for = Reference(LantusVialDefinition)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#55X04QC32I "SODIUM HYDROXIDE"

Instance: LantusSyringeActiveIngredient
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Active Ingredient Strength for Lantus Syringe"
* for = Reference(LantusVialDefinition)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB
* substance.code.reference = Reference(LantusSyringeIngredientDefinition)
* substance.strength.presentationRatio.numerator = 100 '[iU]' "iU"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"

Instance: LantusSyringeIngredientDefinition
InstanceOf: SubmittedIngredientDefinition
Description: "Active Ingredient Information for Lantus Syringe"
* identifier.system = "http://fdasis.nlm.nih.gov"
* identifier.value = "2ZM8CX04RZ"
* moiety.identifier.system = "http://fdasis.nlm.nih.gov"
* moiety.identifier.value = "2ZM8CX04RZ"
* moiety.name = "INSULIN GLARGINE"
* name.name = "INSULIN GLARGINE"

Instance: LantusSyringeIngredient1
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #1 for Lantus Syringe"
* for = Reference(LantusSyringeDefinition)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#J41CSQ7QDS "ZINC"
* substance.strength.presentationRatio.numerator = 30 'ug' "ug"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"
Instance: LantusSyringeIngredient2
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #2 for Lantus Syringe"
* for = Reference(LantusSyringeDefinition)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#GGO4Y809LO "METACRESOL"
* substance.strength.presentationRatio.numerator = 2.7 'mg' "mg"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"
Instance: LantusSyringeIngredient3
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #3 for Lantus Syringe"
* for = Reference(LantusSyringeDefinition)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#PDC6A3C0OX "GLYCERIN"
* substance.strength.presentationRatio.numerator = 20 'mg' "mg"
* substance.strength.presentationRatio.denominator = 1 'mL' "mL"
Instance: LantusSyringeIngredient4
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #4 for Lantus Syringe"
* for = Reference(LantusSyringeDefinition)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#059QF0KO0R "WATER"
Instance: LantusSyringeIngredient5
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #5 for Lantus Syringe"
* for = Reference(LantusSyringeDefinition)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#QTT17582CB "HYDROCHLORIC ACID"
Instance: LantusSyringeIngredient6
InstanceOf: SubmittedMedicinalProductIngredient
Description: "Inactive Ingredient #6 for Lantus Syringe"
* for = Reference(LantusSyringeDefinition)
* role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#IACT
* substance.code.concept = http://fdasis.nlm.nih.gov#55X04QC32I "SODIUM HYDROXIDE"

Instance: LantusVialPackage
InstanceOf: SubmittedMedicinalPackaging
Description: "Lantus Vial Packaging"
* packageFor = Reference(LantusVialDefinition)
* marketingStatus.status = http://hl7.org/fhir/publication-status#active
* marketingStatus.dateRange.start = "2017-06-04"
* package.identifier.system = "http://hl7.org/fhir/sid/ndc"
* package.identifier.value = "0088-5021-01"
* package.type = $NCI-T#C43169 "PACKAGE"
* package.property.type = SubmittedMedicinalProductCharacteristicTypes#SPLCMBPRDTP
* package.property.valueCodeableConcept = $NCI-T#C112160 "Type 0: Not a Combination Product"
* package.package.type = $NCI-T#C43209 "VIAL, GLASS"
* package.package.quantity = 1
* package.package.containedItem.amount = 10 'mL' "mL"
* package.package.containedItem.item.concept = http://hl7.org/fhir/sid/ndc#0088-5021

Instance: LantusVialMarketing
InstanceOf: SubmittedMedicinalProductMarketing
Description: "Marketing information for Lantus Vial"
* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "BLA021081"
* subject = Reference(LantusVialDefinition)
* type = $NCI-T#C73585 "BLA"
* region = urn:iso:std:iso:3166#USA

Instance: LantusSyringePackage
InstanceOf: SubmittedMedicinalPackaging
Description: "Lantus Syringe Packaging"
* packageFor = Reference(LantusSyringeDefinition)
* marketingStatus.status = http://hl7.org/fhir/publication-status#active
* marketingStatus.dateRange.start = "2017-06-04"
* package.identifier.system = "http://hl7.org/fhir/sid/ndc"
* package.identifier.value = "0088-5020-01"
* package.type = $NCI-T#C43169 "PACKAGE"
* package.property.type = SubmittedMedicinalProductCharacteristicTypes#SPLCMBPRDTP
* package.property.valueCodeableConcept = $NCI-T#C102835 "Type 2: Prefilled Drug Delivery Device/System (syringe, patch, etc.)"
* package.package.identifier.system = "http://hl7.org/fhir/sid/ndc"
* package.package.identifier.value = "0088-5020-04"
* package.package.type = $NCI-T#C43202 "SYRINGE"
* package.package.quantity = 5
* package.package.containedItem.amount = 3 'mL' "mL"
* package.package.containedItem.item.concept = http://hl7.org/fhir/sid/ndc#0088-5020

Instance: LantusSyringeMarketing
InstanceOf: SubmittedMedicinalProductMarketing
Description: "Marketing information for Lantus Syringe"
* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "BLA021081"
* subject = Reference(LantusSyringeDefinition)
* type = $NCI-T#C73585 "BLA"
* region = urn:iso:std:iso:3166#USA