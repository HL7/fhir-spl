Profile: SubmittedMedicinalProduct
Parent: MedicinalProductDefinition
Description: "A profile that allows for the submission of Medicinal Product information to the FDA."
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Require specific types of identifiers."
* identifier contains NDCCode 1..1 MS
* identifier[NDCCode].system = "http://hl7.org/fhir/sid/ndc"
* name 1..* MS
* name.productName 1..1 MS
* name.type 1..1 MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type"
* name ^slicing.rules = #open
* name ^slicing.description = "Require specific name types"
* name contains Proprietary 1..1 and NonProprietary 0..1
* name[Proprietary].type = SubmittedMedicinalProductNameTypes#PROPRIETARY
* name[Proprietary].namePart 0..* MS
* name[Proprietary].namePart.part 1..1 MS
* name[Proprietary].namePart.type 1..1 MS
* name[Proprietary].namePart ^slicing.discriminator.type = #value
* name[Proprietary].namePart ^slicing.discriminator.path = "type"
* name[Proprietary].namePart ^slicing.rules = #open
* name[Proprietary].namePart ^slicing.description = "Specifically call out the Suffix name part"
* name[Proprietary].namePart contains Suffix 0..1
* name[Proprietary].namePart[Suffix].type = http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#SFX
* name[NonProprietary].type = SubmittedMedicinalProductNameTypes#NONPROPRIETARY
* crossReference 0..1 MS
* crossReference.type 1..1 MS
* crossReference.type = $NCI-T#C64637
* crossReference.product 1..1 MS
* crossReference.product from AllNDCProducts
* crossReference.product.concept 1..1 MS
* crossReference.product.reference 0..0
* route 0..* MS
* route from http://evs.nci.nih.gov/valueset/FDA/C54455 (required)
* marketingStatus 0..1 MS
* marketingStatus.dateRange 1..1 MS
* specialMeasures 0..* MS
* specialMeasures from http://evs.nci.nih.gov/valueset/FDA/C54459 (required)
* operation 0..* MS
* operation.type.concept 1..1 MS
* operation.type from http://evs.nci.nih.gov/valueset/FDA/C73600 (required)
* operation.organization 1..1 MS
* operation.organization only Reference(IdentifiedEstablishment)

Profile: SubmittedMedicinalProductMarketing
Parent: RegulatedAuthorization
Description: "Details around the marketing of a submitted medicinal product."
* identifier 1..* MS
* subject 1..1 MS
* subject only Reference(SubmittedMedicinalProduct)
* type 0..1 MS
* region 0..* MS
* status MS
* statusDate MS

Extension: PackagedProductReference
Id: packageInstanceOf
Title: "Packaged Product Reference"
Description: "A reference to a packaged product that is represented in a packaging element."
* value[x] 1..1 MS
* value[x] only Reference(SubmittedMedicinalPackaging)
* ^context[+].type = #element
* ^context[=].expression = "PackagedProductDefinition.package"

Profile: SubmittedMedicinalPackaging
Parent: PackagedProductDefinition
Description: "Details around the packaging of submitted medicinal products."
* packageFor 1..1 MS
* packageFor only Reference(SubmittedMedicinalProduct)
* marketingStatus 0..1 MS
* marketingStatus.dateRange 1..1 MS
* package 1..1 MS
* package.extension contains PackagedProductReference named packageInstanceOf 0..1 MS
* package.identifier MS
* package.type 1..1 MS
* package.quantity 0..1 MS
* package.property 0..* MS
* package.property.type 1..1 MS
* package.property.type = SubmittedMedicinalProductCharacteristicTypes#SPLCMBPRDTP
* package.property.value[x] 1..1 MS
* package.property.value[x] only CodeableConcept
* package.property.valueCodeableConcept from http://evs.nci.nih.gov/valueset/FDA/C102833 (required)
* package.containedItem 0..* MS
* package.containedItem.item 1..1 MS
* package.containedItem.item only CodeableReference(SubmittedManufacturedItem)
* package.containedItem.amount 1..1 MS
* package.package 0..* MS

Profile: SubmittedManufacturedItem
Parent: ManufacturedItemDefinition
Description: "Details around the actual item, i.e tablet, solution, etc. that is packaged as part of the medicinal product."
* status = #active
* manufacturedDoseForm 1..1 MS
* manufacturedDoseForm from http://evs.nci.nih.gov/valueset/FDA/C54456 (required)
* extension contains ItemMarketingStatusDates named marketingStatusDates 0..1 MS
* property 0..* MS
* property.type 1..1 MS
* property.type from SubmittedMedicinalProductCharacteristicTypes (required)
* property.value[x] 1..1 MS
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property ^slicing.description = "Require specific bindings for characteristic type."
* property contains Color 0..1 and Imprint 0..1 and Score 0..1 and Shape 0..1 and Size 0..1 and Flavor 0..1 and Image 0..1
* property[Color].type = SubmittedMedicinalProductCharacteristicTypes#SPLCOLOR
* property[Color].value[x] only CodeableConcept
* property[Color].valueCodeableConcept from http://evs.nci.nih.gov/valueset/FDA/C54453 (required)
* property[Shape].type = SubmittedMedicinalProductCharacteristicTypes#SPLSHAPE
* property[Shape].value[x] only CodeableConcept
* property[Shape].valueCodeableConcept from http://evs.nci.nih.gov/valueset/FDA/C54454 (required)
* property[Flavor].type = SubmittedMedicinalProductCharacteristicTypes#SPLFLAVOR
* property[Flavor].value[x] only CodeableConcept
* property[Flavor].valueCodeableConcept from http://evs.nci.nih.gov/valueset/FDA/C73339 (required)
* property[Imprint].type = SubmittedMedicinalProductCharacteristicTypes#SPLIMPRINT
* property[Imprint].value[x] only CodeableConcept
* property[Imprint].valueCodeableConcept ^short = "Text is only allowed as the imprint is a string."
* property[Imprint].valueCodeableConcept.text 1..1
* property[Imprint].valueCodeableConcept.coding 0..0
* property[Score].type = SubmittedMedicinalProductCharacteristicTypes#SPLSCORE
* property[Score].value[x] only Quantity
* property[Size].type = SubmittedMedicinalProductCharacteristicTypes#SPLSIZE
* property[Size].value[x] only Quantity
* property[Image].type = SubmittedMedicinalProductCharacteristicTypes#SPLIMAGE
* property[Image].value[x] only Attachment


Extension: ItemMarketingStatusDates
Id: itemMarketingStatusDates
Title: "Manufactured Item Marketing Status Date Range"
Description: "Used to indicate the date range of the marketing status of a manufactured item.  This is being added in R5."
* value[x] 1..1 MS
* value[x] only Period
* ^context[+].type = #element
* ^context[=].expression = "ManufacturedItemDefinition"

Profile: SubmittedMedicinalProductIngredient
Parent: Ingredient
Description: "Details around the ingredients of a submitted medicinal product."
* status = #active
* for 1..1 MS
* for only Reference(SubmittedManufacturedItem)
* role 1..1 MS
* substance 1..1 MS
* substance.code 1..1 MS
* substance.code only CodeableReference(SubmittedIngredientDefinition)
* substance.strength 0..1 MS
* substance.strength.presentation[x] 1..1 MS
* substance.strength.presentation[x] only Ratio
* substance.strength.referenceStrength 0..1 MS
* substance.strength.referenceStrength.substance 1..1 MS
* substance.strength.referenceStrength.substance.concept 1..1 MS
* substance.strength.referenceStrength.substance.reference 0..0
* substance.strength.referenceStrength.strength[x] 1..1 MS
* substance.strength.referenceStrength.strength[x] only Ratio

Profile: SubmittedIngredientDefinition
Parent: SubstanceDefinition
Description: "Used to represent an substance's active moiety."
* identifier 1..* MS
* name 1..1 MS
* name.name 1..1 MS
* moiety 1..2 MS
* moiety.identifier 1..1 MS
* moiety.name 1..1 MS


CodeSystem: SubmittedMedicinalProductNameTypes
Id: codesystem-submittedMedicinalProductNameTypes
Title: "Medicinal Product Name Types"
Description: "Codes that types of names for a medicinal product."
* ^caseSensitive = true
* ^experimental = false
* #PROPRIETARY "Proprietary Name"
* #NONPROPRIETARY "Generic Name (Non-Proprietary)"

CodeSystem: SubmittedMedicinalProductCharacteristicTypes
Id: codesystem-characteristicTypes
Title: "SPL Product Characteristic Types"
Description: "Codes that were specified in the SPL guide for characteristic types."
* ^caseSensitive = false
* ^experimental = false
* #SPLCOLOR "Color"
* #SPLIMPRINT "Imprint"
* #SPLSCORE "Score"
* #SPLSHAPE "Shape"
* #SPLSIZE "Size"
* #SPLCMBPRDTP "Combination Product Type"
* #SPLFLAVOR "Flavor"
* #SPLIMAGE "Image"

ValueSet: SubmittedMedicinalProductCharacteristicTypes
Id: valueset-SubmittedMedicinalProductCharacteristicTypes
Description: "Codes that identify the types of characteristics allowed for Submitted Medicinal Product."
Title: "SPL Product Characteristic Types"
* ^experimental = false
* include codes from system SubmittedMedicinalProductCharacteristicTypes

ValueSet: AllNDCProducts
Id: valueset-AllNDCProducts
Description: "A value set that is all of the NDC codesystem, i.e. all NDC products"
Title: "All NDC Products"
* ^experimental = false
* include codes from system http://hl7.org/fhir/sid/ndc