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
* combinedPharmaceuticalDoseForm 1..1 MS
* combinedPharmaceuticalDoseForm from http://evs.nci.nih.gov/valueset/FDA/C54456 (required)
* crossReference 0..1 MS
* crossReference.type 1..1 MS
* crossReference.type = $NCI-T#C64637 (exactly)
* crossReference.product 1..1 MS
* crossReference.product from http://hl7.org/fhir/sid/ndc
* route 0..* MS
* route from http://evs.nci.nih.gov/valueset/FDA/C54455 (required)
* marketingStatus 0..1 MS
* marketingStatus.dateRange 1..1 MS
* specialMeasures 0..* MS
* specialMeasures from http://evs.nci.nih.gov/valueset/FDA/C54459 (required)
* characteristic 0..* MS
* characteristic.type 1..1 MS
* characteristic.type from SubmittedMedicinalProductCharacteristicTypes (required)
* characteristic.value[x] 1..1 MS

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

Profile: SubmittedMedicinalPackaging
Parent: PackagedProductDefinition
Description: "Details around the packaging of submitted medicinal products."
* packageFor 1..1 MS
* packageFor only Reference(SubmittedMedicinalProduct)
* marketingStatus 0..1 MS
* marketingStatus.dateRange 1..1 MS
* package 1..1 MS
* package.identifier 1..* MS
* package.type 1..1 MS
* package.quantity 1..1 MS
* package.property 0..* MS
* package.property.type 1..1 MS
* package.property.value[x] 1..1 MS
* package.containedItem 0..* MS
* package.containedItem.item 1..1 MS
* package.containedItem.item only Reference(SubmittedMedicinalPackaging)
* package.containedItem.amount 1..1 MS
* package.package 0..* MS

Profile: SubmittedMedicinalProductIngredients
Parent: Ingredient
Description: "Details around the ingredients of a submitted medicinal product."
* status = #active (exactly)
* for 1..1 MS
* for only Reference(MedicinalProductDefinition)
* role 1..1 MS
* substance 1..1 MS
* substance.code 1..1 MS
* substance.code.reference only Reference(SubstanceMoiety)
* substance.strength 0..1 MS
* substance.strength.presentation[x] 1..1 MS
* substance.strength.presentation[x] only Ratio
* substance.strength.referenceStrength 0..1 MS
* substance.strength.referenceStrength.substance 1..1 MS
* substance.strength.referenceStrength.strength[x] 1..1 MS
* substance.strength.referenceStrength.strength[x] only Ratio

Profile: SubstanceMoiety
Parent: SubstanceDefinition
Description: "Used to represent an substance's active moiety."
* identifier 1..* MS
* name 1..1 MS
* name.name 1..1 MS
* moiety 1..1 MS
* moiety.identifier 1..1 MS
* moiety.name 1..1 MS


CodeSystem: SubmittedMedicinalProductNameTypes
Id: codesystem-submittedMedicinalProductNameTypes
Description: "Codes that identify the relationship between two organizations."
* ^caseSensitive = true
* #PROPRIETARY "Proprietary Name"
* #NONPROPRIETARY "Generic Name (Non-Proprietary)"

ValueSet: SubmittedMedicinalProductCharacteristicTypes
Id: valueset-SubmittedMedicinalProductCharacteristicTypes
Description: "Codes that identify the types of characteristics allowed for Submitted Medicinal Product."
* urn:oid:2.16.840.1.113883.1.11.19255#SPLCOLOR
* urn:oid:2.16.840.1.113883.1.11.19255#SPLIMPRINT
* urn:oid:2.16.840.1.113883.1.11.19255#SPLSCORE
* urn:oid:2.16.840.1.113883.1.11.19255#SPLSHAPE
* urn:oid:2.16.840.1.113883.1.11.19255#SPLSIZE
