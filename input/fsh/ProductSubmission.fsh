Profile: ProductSubmissionBundle
Parent: Bundle
Description: "A profile that represents the Bundle that contains the Product Submission document."
* identifier 1..1 MS
* type MS
* type = #document
* timestamp 1..1 MS
* entry 2..*
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Product Submission document."
* entry.fullUrl 1..1 MS
* entry.resource 1..1 MS
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
* entry contains Composition 1..1 MS and Labeler 1..1 MS and Product 0..* MS and Marketing 0..* MS and Packaging 0..* MS and Ingredient 0..* MS and Substance 0..* MS
* entry[Composition].resource only ProductSubmissionDocument
* entry[Labeler].resource only IdentifiedLabeler
* entry[Product].resource only SubmittedMedicinalProduct
* entry[Ingredient].resource only SubmittedMedicinalProductIngredient
* entry[Marketing].resource only SubmittedMedicinalProductMarketing
* entry[Packaging].resource only SubmittedMedicinalPackaging
* entry[Substance].resource only SubmittedIngredientDefinition


Profile: ProductSubmissionDocument
Parent: Composition
Description: "A profile that represents a document that is required for Product Submission to the FDA."

* extension contains VersionNumber named versionNumber 1..1 MS
* type MS
* type from SPLDocumentCodes (required)
* title MS
* identifier 1..1 MS
* author 1..1 MS
* author only Reference(IdentifiedLabeler)
* section 1..* MS
  * extension contains SectionEffectiveTime named sectionTime 0..1 MS
  * code 1..1 MS
  * code from SPLSectionCodes (required)
  * title MS
  * text MS
  * entry MS
  * section 0..* MS
    * extension contains SectionEffectiveTime named sectionTime 0..1 MS
    * code 1..1 MS
    * code from SPLSectionCodes (required)
    * title MS
    * text 1..1 MS
    * entry 0..0
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the different sections that are needed in a SPL document."
* section contains ProductSection 0..1 and LabelDisplay 0..1
* section[ProductSection].entry 1..* MS
* section[ProductSection].entry ^slicing.discriminator.type = #type
* section[ProductSection].entry ^slicing.discriminator.path = "$this.resolve()"
* section[ProductSection].entry ^slicing.rules = #open
* section[ProductSection].entry ^slicing.description = "Slice based on the resources that go into a product submission."
* section[ProductSection].entry contains ProductDefinition 1..1 MS
* section[ProductSection].entry[ProductDefinition] only Reference(SubmittedMedicinalProduct)
* section[ProductSection].code = http://loinc.org#48780-1
* section[ProductSection].title 0..0
* section[ProductSection].text 0..1
* section[LabelDisplay].entry 0..0
* section[LabelDisplay].code = http://loinc.org#51945-4
* section[LabelDisplay].text 1..1
* section[LabelDisplay].entry 0..0

Extension: VersionNumber
Id: versionNumber
Description: "Adding a version number to documents."
* value[x] only string

Extension: SectionEffectiveTime
Id: sectionEffectiveTime
Description: "Providing an effective time for a section."
* value[x] only dateTime or Period
 
ValueSet: SPLSectionCodes
Id: splSectionCodes
Title: "SPL Section Codes"
Description: "Section Codes for SPL Product Submission documents"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* include codes from system http://loinc.org where SYSTEM = "^FDA package insert"
* include codes from system http://loinc.org where SYSTEM = "^FDA package label" and COMPONENT regex "^Package label.*$"

ValueSet: SPLDocumentCodes
Id: splDocumentCodes
Title: "SPL Document Codes"
Description: "Document Codes for SPL Product Submission documents"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* include codes from system http://loinc.org where SYSTEM = "^FDA product label"
