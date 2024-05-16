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
* $LOINC#100382-1 "REMS addressed risk"
* $LOINC#103572-4 "Cosmetic product listing"
* $LOINC#103573-2 "Cosmetic facility registration"
* $LOINC#34066-1 "Boxed warning section"
* $LOINC#34067-9 "Indications and usage section"
* $LOINC#34068-7 "Dosage and administration section"
* $LOINC#34069-5 "How supplied section"
* $LOINC#34070-3 "Contraindications section"
* $LOINC#34071-1 "Warnings section"
* $LOINC#34072-9 "General precautions section"
* $LOINC#34073-7 "Drug interactions section"
* $LOINC#34074-5 "Drug/laboratory test interactions section"
* $LOINC#34075-2 "Laboratory tests section"
* $LOINC#34076-0 "Information for patients section"
* $LOINC#34077-8 "Teratogenic effects section"
* $LOINC#34078-6 "Nonteratogenic effects section"
* $LOINC#34079-4 "Labor and delivery section"
* $LOINC#34080-2 "Nursing mothers section"
* $LOINC#34081-0 "Pediatric use section"
* $LOINC#34082-8 "Geriatric use section"
* $LOINC#34083-6 "Carcinogenesis and mutagenesis and impairment of fertility section"
* $LOINC#34084-4 "Adverse reactions section"
* $LOINC#34085-1 "Controlled substance section"
* $LOINC#34086-9 "Abuse section"
* $LOINC#34087-7 "Dependence section"
* $LOINC#34088-5 "Overdosage section"
* $LOINC#34089-3 "Description section"
* $LOINC#34090-1 "Clinical pharmacology section"
* $LOINC#34091-9 "Animal pharmacology/toxicology section"
* $LOINC#34092-7 "Clinical studies section"
* $LOINC#34093-5 "References section"
* $LOINC#38056-8 "Structured product laballing supplemental patient material"
* $LOINC#42227-9 "Drug abuse and dependence section"
* $LOINC#42228-7 "Pregnancy section"
* $LOINC#42229-5 "Structured patient labelling unclassified section"
* $LOINC#42230-3 "Structured product laballing patient package insert section"
* $LOINC#42231-1 "Structured product labelling medguide section"
* $LOINC#42232-9 "Precautions section"
* $LOINC#43678-2 "Dosage forms and strengths section"
* $LOINC#43679-0 "Mechanism of action section"
* $LOINC#43680-8 "Nonclinical toxicology section"
* $LOINC#43681-6 "Pharmacodynamics section"
* $LOINC#43682-4 "Pharmacokinetics section"
* $LOINC#43683-2 "Recent major changes section"
* $LOINC#43684-0 "Use in specific populations section"
* $LOINC#43685-7 "Warnings and precautions section"
* $LOINC#44425-7 "Storage and handling section"
* $LOINC#48779-3 "Structured product labelling indexing data elements section"
* $LOINC#48780-1 "Structured product labelling listing data elements section"
* $LOINC#49489-8 "Microbiology section"
* $LOINC#54433-8 "User safety warnings section"
* $LOINC#59845-8 "Instructions for use section"
* $LOINC#60555-0 "Accessories"
* $LOINC#60556-8 "Assembly or installation instructions"
* $LOINC#60557-6 "Calibration instructions"
* $LOINC#60558-4 "Cleaning, disinfecting, and sterilization instructions"
* $LOINC#60559-2 "Components"
* $LOINC#60560-0 "Intended use of the device"
* $LOINC#60561-8 "Other safety information"
* $LOINC#60562-6 "Route, method and frequency of administration"
* $LOINC#60563-4 "Summary of safety and effectiveness"
* $LOINC#60685-5 "Indexing - pharmacologic class"
* $LOINC#64123-3 "Indexing - adverse reaction"
* $LOINC#64124-1 "Indexing - substance"
* $LOINC#66105-8 "Lot distribution data"
* $LOINC#66106-6 "Pharmacogenomics section"
* $LOINC#69758-1 "Diagram of device"
* $LOINC#69759-9 "Risks"
* $LOINC#69760-7 "Compatible accessories"
* $LOINC#69761-5 "Alarms"
* $LOINC#69762-3 "Troubleshooting"
* $LOINC#69763-1 "Disposal and waste handling"
* $LOINC#71446-9 "Indexing - billing unit"
* $LOINC#71681-1 "PMI - Common side effects section"
* $LOINC#71682-9 "PMI - Get emergency medical help section"
* $LOINC#71683-7 "PMI - Stop taking and call your doctor section"
* $LOINC#71684-5 "PMI - Directions for use section"
* $LOINC#71685-2 "PMI - Tell your doctor before taking section"
* $LOINC#71686-0 "PMI - Do not take section"
* $LOINC#71687-8 "PMI - Important information section"
* $LOINC#71688-6 "PMI - Uses section"
* $LOINC#71744-7 "Health care provider letter"
* $LOINC#73815-3 "Indexing - product concept"
* $LOINC#77288-9 "Indexing - warning letter alert"
* $LOINC#77289-7 "Identification of suspect product and notification"
* $LOINC#77290-5 "Lactation"
* $LOINC#77291-3 "Females and males reproductive potential"
* $LOINC#77292-1 "eFacility"
* $LOINC#82336-9 "REMS header"
* $LOINC#82344-3 "REMS communication plan"
* $LOINC#82345-0 "REMS elements to assure safe use"
* $LOINC#82346-8 "REMS material"
* $LOINC#82347-6 "REMS summary"
* $LOINC#82348-4 "REMS elements"
* $LOINC#82349-2 "REMS goals"
* $LOINC#82350-0 "REMS implementation system"
* $LOINC#82351-8 "Risk evaluation and mitigation strategies"
* $LOINC#82352-6 "REMS timetable for submission assessments"
* $LOINC#82353-4 "Indexing - risk evaluation and mitigation strategies"
* $LOINC#82598-4 "REMS medication guide"
* $LOINC#85273-1 "REMS conversion to shared system"
* $LOINC#85274-9 "REMS release"
* $LOINC#86445-4 "Blanket no changes certification of product listing"
* $LOINC#87523-7 "REMS administrative information"
* $LOINC#87524-5 "REMS requirements"
* $LOINC#87525-2 "REMS participant requirements"
* $LOINC#87526-0 "REMS applicant requirements"
* $LOINC#88436-1 "Patient counseling information"
* $LOINC#88437-9 "How supplied and storage and handling section"
* $LOINC#88828-9 "Renal Impairment subsection"
* $LOINC#88829-7 "Hepatic Impairment subsection"
* $LOINC#88830-5 "Immunogenicity"
* $LOINC#90374-0 "Clinical trials experience section"
* $LOINC#90375-7 "Postmarketing experience section"
* $LOINC#51945-4 "Principal display panel of package"

ValueSet: SPLDocumentCodes
Id: splDocumentCodes
Title: "SPL Document Codes"
Description: "Document Codes for SPL Product Submission documents"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* ^experimental = false
* $LOINC#101437-2 "Intentional animal genomic alteration label"
* $LOINC#104085-6 "Cosmetic facility registration"
* $LOINC#104086-4 "Cosmetic facility registration-amendment"
* $LOINC#104087-2 "Cosmetic facility registration-abbreviated renewal"
* $LOINC#104088-0 "Cosmetic facility registration-cancellation"
* $LOINC#104089-8 "Cosmetic facility registration-biennial renewal"
* $LOINC#104090-6 "Cosmetic-abbreviated renewal"
* $LOINC#104091-4 "Animal drug for further processing"
* $LOINC#34390-5 "Human OTC drug label"
* $LOINC#34391-3 "Human prescription drug label"
* $LOINC#45129-4 "Human prescription drug label with highlights"
* $LOINC#50565-1 "OTC - Keep out of reach of children section"
* $LOINC#50566-9 "OTC - Stop use section"
* $LOINC#50567-7 "OTC - When using section"
* $LOINC#50568-5 "OTC - Ask doctor or pharmacist section"
* $LOINC#50569-3 "OTC - Ask doctor section"
* $LOINC#50570-1 "OTC - Do not use section"
* $LOINC#50571-9 "VFD Type C medicated feed animal drug label"
* $LOINC#50572-7 "VFD Type B medicated feed animal drug label"
* $LOINC#50573-5 "OTC Type C medicated feed animal drug label"
* $LOINC#50574-3 "OTC Type B medicated feed animal drug label"
* $LOINC#50575-0 "VFD Type A medicated article animal drug label"
* $LOINC#50576-8 "OTC Type A medicated article animal drug label"
* $LOINC#50577-6 "OTC animal drug label"
* $LOINC#50578-4 "Prescription animal drug label"
* $LOINC#50740-0 "Guaranteed analysis of feed section"
* $LOINC#50741-8 "Safe handling warning section"
* $LOINC#50742-6 "Environmental warning section"
* $LOINC#50743-4 "Food safety warning section"
* $LOINC#50744-2 "Information for owners or caregivers section"
* $LOINC#50745-9 "Veterinary indications section"
* $LOINC#51725-0 "Establishment registration"
* $LOINC#51726-8 "NDC labeler code request"
* $LOINC#51727-6 "Inactive ingredient section"
* $LOINC#51941-3 "Back panel of package"
* $LOINC#51942-1 "Side panel of package Right"
* $LOINC#51943-9 "Side panel of package Left"
* $LOINC#51944-7 "Side panel of package"
* $LOINC#51945-4 "Principal display panel of package"
* $LOINC#51946-2 "Top panel of package"
* $LOINC#51947-0 "Bottom panel of package"
* $LOINC#51948-8 "Flap panel of package"
* $LOINC#53404-0 "Vaccine label"
* $LOINC#53405-7 "Non-standardized allergenic label"
* $LOINC#53406-5 "Licensed vaccine bulk intermediate label"
* $LOINC#53407-3 "Licensed blood intermediate/paste label"
* $LOINC#53408-1 "Licensed minimally manipulated cells label"
* $LOINC#53409-9 "Bulk ingredient"
* $LOINC#53410-7 "No change notification"
* $LOINC#53411-5 "Out of business notification"
* $LOINC#53412-3 "Residue warning section"
* $LOINC#53413-1 "OTC - Questions section"
* $LOINC#53414-9 "OTC - Pregnancy or breast feeding section"
* $LOINC#55105-1 "OTC - Purpose section"
* $LOINC#55106-9 "OTC - Active ingredient section"
* $LOINC#55439-4 "Medical device"
* $LOINC#58474-8 "Cosmetic"
* $LOINC#58475-5 "Medical food"
* $LOINC#58476-3 "Dietary supplement"
* $LOINC#60682-2 "Standardized allergenic"
* $LOINC#60683-0 "Plasma derivative"
* $LOINC#60684-8 "Cellular therapy"
* $LOINC#63417-0 "Indexing - Indication"
* $LOINC#68498-5 "Patient medication information section"
* $LOINC#69403-4 "OTC medical device label"
* $LOINC#69404-2 "Prescription medical device label"
* $LOINC#69718-5 "Statement of identity section"
* $LOINC#69719-3 "Health claim section"
* $LOINC#69968-6 "NDC labeler code inactivation"
* $LOINC#70097-1 "Establishment de-registration"
* $LOINC#71743-9 "Generic drug facility identification submission"
* $LOINC#72090-4 "Identification of CBER-regulated generic drug facility"
* $LOINC#72871-7 "NDC labeler code request - animal drug"
* $LOINC#75030-7 "Wholesale drug distributors and third-party logistics facility registration"
* $LOINC#75031-5 "Human compounded drug label"
* $LOINC#77573-4 "Withdrawal of wholesale drug distributors and third-party logistics facility report"
* $LOINC#77647-6 "Animal compounded drug label"
* $LOINC#77648-4 "Indexing - biologic or drug substance"
* $LOINC#78744-0 "Drug for further processing label"
* $LOINC#78745-7 "Recombinant deoxyribonucleic acid construct label"
* $LOINC#81203-2 "Bulk ingredient - animal drug"
* $LOINC#81204-0 "NDC labeler code inactivation - animal drug"
* $LOINC#85480-2 "Establishment registration exempt notification"
* $LOINC#85481-0 "Blood establishment registration and product listing"
* $LOINC#85482-8 "Human cell and tissue establishment registration and product listing"
* $LOINC#85484-4 "Establishment temporary inactivation notification"
* $LOINC#86444-7 "Manufacturing establishment information"
* $LOINC#86446-2 "Blood establishment registration and product listing change in information"
* $LOINC#86447-0 "Human cell and tissue establishment registration and product listing change in information"
* $LOINC#86448-8 "Human salvaged drug"
* $LOINC#89600-1 "FDA-initiated compliance action drug registration and listing inactivation"
* $LOINC#93372-1 "Indexing - national clinical trial number"
* $LOINC#93723-5 "Indexing - drug interactions"
* $LOINC#98075-5 "Animal cells, tissues, and cell and tissue based product label"
* $LOINC#99282-6 "FDA-initiated compliance action drug registration and listing inactivation - animal drug"