Profile: ProductSubmissionBundle
Parent: Bundle
Description: "A profile that represents the Bundle that contains the Product Submission document."
* identifier 1..1 MS
* type MS
* type = #document
* timestamp 1..1 MS
* entry 2..*
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Product Submission document."
* entry.fullUrl 1..1 MS
* entry.resource 1..1 MS
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
* entry contains Composition 1..1 MS and Labeler 1..1 MS and Registrant 0..1 MS and Establishment 0..* MS and Product 0..* MS and Marketing 0..* MS and Packaging 0..* MS and Ingredient 0..* MS and Substance 0..* MS and Item 0..* MS
* entry[Composition].resource 1..1 MS
* entry[Composition].resource only ProductSubmissionDocument
* entry[Labeler].resource 1..1 MS
* entry[Labeler].resource only IdentifiedLabeler
* entry[Registrant].resource 1..1 MS
* entry[Registrant].resource only IdentifiedEstablishmentRegistrant
* entry[Establishment].resource 1..1 MS
* entry[Establishment].resource only IdentifiedEstablishment
* entry[Product].resource 1..1 MS
* entry[Product].resource only SubmittedMedicinalProduct
* entry[Ingredient].resource 1..1 MS
* entry[Ingredient].resource only SubmittedMedicinalProductIngredient
* entry[Marketing].resource 1..1 MS
* entry[Marketing].resource only SubmittedMedicinalProductMarketing
* entry[Packaging].resource 1..1 MS
* entry[Packaging].resource only SubmittedMedicinalPackaging
* entry[Substance].resource 1..1 MS
* entry[Substance].resource only SubmittedIngredientDefinition
* entry[Item].resource 1..1 MS
* entry[Item].resource only SubmittedManufacturedItem


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
  * extension contains SectionEffectiveTime named sectionTime 0..1 MS and SectionLinkId named linkId 0..1 MS
  * code 1..1 MS
  * code from SPLSectionCodes (required)
  * title MS
  * text MS
  * entry MS
  * section 0..* MS
    * extension contains SectionEffectiveTime named sectionTime 0..1 MS and SectionLinkId named linkId 0..1 MS
    * code 1..1 MS
    * code from SPLSectionCodes (required)
    * title MS
    * text MS
    * entry 0..0
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the different sections that are needed in a SPL document."
* section contains ProductSection 0..1 and LabelDisplay 0..*
* section[ProductSection].entry 1..* MS
* section[ProductSection].entry only Reference(SubmittedMedicinalProduct)
* section[ProductSection].code 1..1 MS
* section[ProductSection].code = http://loinc.org#48780-1
* section[ProductSection].title 0..0
* section[ProductSection].text 0..1 MS
* section[ProductSection].section 0..0
* section[LabelDisplay].entry 0..0
* section[LabelDisplay].code = http://loinc.org#51945-4
* section[LabelDisplay].code 1..1 MS
* section[LabelDisplay].text 1..1 MS
* section[LabelDisplay].entry 0..0
* section[LabelDisplay].section 0..0

Extension: VersionNumber
Id: versionNumber
Description: "Adding a version number to documents."
* value[x] only string
* ^context[+].type = #element
* ^context[=].expression = "Composition"
* ^context[+].type = #element
* ^context[=].expression = "DocumentReference"

Extension: SectionEffectiveTime
Id: sectionEffectiveTime
Description: "Providing an effective time for a section."
* value[x] only dateTime or Period
* ^context[+].type = #element
* ^context[=].expression = "Composition.section"
* ^context[+].type = #element
* ^context[=].expression = "Composition.section.section"
* ^context[+].type = #element
* ^context[=].expression = "Composition.section.section.section"
 
Extension: SectionLinkId
Id: sectionLinkId
Description: "Provide the ID that is using for linking between sections.  NOTE: This will also be contained in the section text as a link."
* value[x] only string
* ^context[+].type = #element
* ^context[=].expression = "Composition.section"
* ^context[+].type = #element
* ^context[=].expression = "Composition.section.section"
* ^context[+].type = #element
* ^context[=].expression = "Composition.section.section.section"
