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

ValueSet: SPLSectionCodes
Id: splSectionCodes
Title: "SPL Section Codes"
Description: "Section Codes for SPL Product Submission documents"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* ^experimental = false
* include codes from system http://loinc.org where SYSTEM = "^FDA package insert"
* include codes from system http://loinc.org where SYSTEM = "^FDA product label" and COMPONENT regex "^Package label.*$"
* $LOINC#51945-4
* $LOINC#100382-1
* $LOINC#103572-4
* $LOINC#103573-2
* $LOINC#34066-1
* $LOINC#34067-9
* $LOINC#34068-7
* $LOINC#34069-5
* $LOINC#34070-3
* $LOINC#34071-1
* $LOINC#34072-9
* $LOINC#34073-7
* $LOINC#34074-5
* $LOINC#34075-2
* $LOINC#34076-0
* $LOINC#34077-8
* $LOINC#34078-6
* $LOINC#34079-4
* $LOINC#34080-2
* $LOINC#34081-0
* $LOINC#34082-8
* $LOINC#34083-6
* $LOINC#34084-4
* $LOINC#34085-1
* $LOINC#34086-9
* $LOINC#34087-7
* $LOINC#34088-5
* $LOINC#34089-3
* $LOINC#34090-1
* $LOINC#34091-9
* $LOINC#34092-7
* $LOINC#34093-5
* $LOINC#38056-8
* $LOINC#42227-9
* $LOINC#42228-7
* $LOINC#42229-5
* $LOINC#42230-3
* $LOINC#42231-1
* $LOINC#42232-9
* $LOINC#43678-2
* $LOINC#43679-0
* $LOINC#43680-8
* $LOINC#43681-6
* $LOINC#43682-4
* $LOINC#43683-2
* $LOINC#43684-0
* $LOINC#43685-7
* $LOINC#44425-7
* $LOINC#48779-3
* $LOINC#48780-1
* $LOINC#49489-8
* $LOINC#54433-8
* $LOINC#59845-8
* $LOINC#60555-0
* $LOINC#60556-8
* $LOINC#60557-6
* $LOINC#60558-4
* $LOINC#60559-2
* $LOINC#60560-0
* $LOINC#60561-8
* $LOINC#60562-6
* $LOINC#60563-4
* $LOINC#60685-5
* $LOINC#64123-3
* $LOINC#64124-1
* $LOINC#66105-8
* $LOINC#66106-6
* $LOINC#69758-1
* $LOINC#69759-9
* $LOINC#69760-7
* $LOINC#69761-5
* $LOINC#69762-3
* $LOINC#69763-1
* $LOINC#71446-9
* $LOINC#71681-1
* $LOINC#71682-9
* $LOINC#71683-7
* $LOINC#71684-5
* $LOINC#71685-2
* $LOINC#71686-0
* $LOINC#71687-8
* $LOINC#71688-6
* $LOINC#71744-7
* $LOINC#73815-3
* $LOINC#77288-9
* $LOINC#77289-7
* $LOINC#77290-5
* $LOINC#77291-3
* $LOINC#77292-1
* $LOINC#82336-9
* $LOINC#82344-3
* $LOINC#82345-0
* $LOINC#82346-8
* $LOINC#82347-6
* $LOINC#82348-4
* $LOINC#82349-2
* $LOINC#82350-0
* $LOINC#82351-8
* $LOINC#82352-6
* $LOINC#82353-4
* $LOINC#82598-4
* $LOINC#85273-1
* $LOINC#85274-9
* $LOINC#86445-4
* $LOINC#87523-7
* $LOINC#87524-5
* $LOINC#87525-2
* $LOINC#87526-0
* $LOINC#88436-1
* $LOINC#88437-9
* $LOINC#88828-9
* $LOINC#88829-7
* $LOINC#88830-5
* $LOINC#90374-0
* $LOINC#90375-7

ValueSet: SPLDocumentCodes
Id: splDocumentCodes
Title: "SPL Document Codes"
Description: "Document Codes for SPL Product Submission documents"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* ^experimental = false
* include codes from system http://loinc.org where SYSTEM = "^FDA product label"
* $LOINC#104086-4
* $LOINC#104087-2
* $LOINC#104088-0
* $LOINC#104089-8
* $LOINC#104090-6
* $LOINC#104091-4
* $LOINC#34390-5
* $LOINC#34391-3
* $LOINC#45129-4
* $LOINC#50565-1
* $LOINC#50566-9
* $LOINC#50567-7
* $LOINC#50568-5
* $LOINC#50569-3
* $LOINC#50570-1
* $LOINC#50571-9
* $LOINC#50572-7
* $LOINC#50573-5
* $LOINC#50574-3
* $LOINC#50575-0
* $LOINC#50576-8
* $LOINC#50577-6
* $LOINC#50578-4
* $LOINC#50740-0
* $LOINC#50741-8
* $LOINC#50742-6
* $LOINC#50743-4
* $LOINC#50744-2
* $LOINC#50745-9
* $LOINC#51725-0
* $LOINC#51726-8
* $LOINC#51727-6
* $LOINC#51941-3
* $LOINC#51942-1
* $LOINC#51943-9
* $LOINC#51944-7
* $LOINC#51945-4
* $LOINC#51946-2
* $LOINC#51947-0
* $LOINC#51948-8
* $LOINC#53404-0
* $LOINC#53405-7
* $LOINC#53406-5
* $LOINC#53407-3
* $LOINC#53408-1
* $LOINC#53409-9
* $LOINC#53410-7
* $LOINC#53411-5
* $LOINC#53412-3
* $LOINC#53413-1
* $LOINC#53414-9
* $LOINC#55105-1
* $LOINC#55106-9
* $LOINC#55439-4
* $LOINC#58474-8
* $LOINC#58475-5
* $LOINC#58476-3
* $LOINC#60682-2
* $LOINC#60683-0
* $LOINC#60684-8
* $LOINC#63417-0
* $LOINC#68498-5
* $LOINC#69403-4
* $LOINC#69404-2
* $LOINC#69718-5
* $LOINC#69719-3
* $LOINC#69968-6
* $LOINC#70097-1
* $LOINC#71743-9
* $LOINC#72090-4
* $LOINC#72871-7
* $LOINC#75030-7
* $LOINC#75031-5
* $LOINC#77573-4
* $LOINC#77647-6
* $LOINC#77648-4
* $LOINC#78744-0
* $LOINC#78745-7
* $LOINC#81203-2
* $LOINC#81204-0
* $LOINC#85480-2
* $LOINC#85481-0
* $LOINC#85482-8
* $LOINC#85484-4
* $LOINC#86444-7
* $LOINC#86446-2
* $LOINC#86447-0
* $LOINC#86448-8
* $LOINC#89600-1
* $LOINC#93372-1
* $LOINC#93723-5
* $LOINC#98075-5
* $LOINC#99282-6