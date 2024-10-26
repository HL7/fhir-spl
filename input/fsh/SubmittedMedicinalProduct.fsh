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
* name 2..* MS
* name.productName 1..1 MS
* name.type 1..1 MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type"
* name ^slicing.rules = #open
* name ^slicing.description = "Require specific name types"
* name contains Proprietary 1..1 and NonProprietary 1..*
* name[Proprietary].type = SubmittedMedicinalProductNameTypes#PROPRIETARY
* name[Proprietary].part 0..* MS
* name[Proprietary].part.part 1..1 MS
* name[Proprietary].part.type 1..1 MS
* name[Proprietary].part ^slicing.discriminator.type = #value
* name[Proprietary].part ^slicing.discriminator.path = "type"
* name[Proprietary].part ^slicing.rules = #open
* name[Proprietary].part ^slicing.description = "Specifically call out the Suffix name part"
* name[Proprietary].part contains Suffix 0..1
* name[Proprietary].part[Suffix].type = http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2#SFX
* name[NonProprietary].type = SubmittedMedicinalProductNameTypes#NONPROPRIETARY
* crossReference 0..1 MS
* crossReference.type 1..1 MS
* crossReference.type = $NCI-T#C64637
* crossReference.product 1..1 MS
* crossReference.product from AllNDCProducts
* crossReference.product.concept 1..1 MS
* crossReference.product.reference 0..0
* route 0..* MS
* route from SPLRouteOfAdministration (required)
* marketingStatus 0..1 MS
* marketingStatus.status 1..1 MS
* marketingStatus.status from SPLMarketingStatuses (required)
* marketingStatus.dateRange 1..1 MS
* specialMeasures 0..* MS
* specialMeasures from SPLSpecialMeasures (required)
* operation 0..* MS
* operation.type.concept 1..1 MS
* operation.type from SPLOperationType (required)
* operation.organization 1..1 MS
* operation.organization only Reference(IdentifiedEstablishment)
* contact MS
* contact.type MS
* contact.type from TopLevelOrganizationTypes
* contact.contact MS
* contact.contact only Reference(IdentifiedEstablishment or IdentifiedEstablishmentRegistrant)


Profile: SubmittedMedicinalProductMarketing
Parent: RegulatedAuthorization
Description: "Details around the marketing of a submitted medicinal product."
* identifier 0..1 MS
* subject 1..1 MS
* subject only Reference(SubmittedMedicinalProduct)
* type 1..1 MS
* type from SPLMarketingCategories (required)
* region 1..1 MS
* region = urn:iso:std:iso:3166#USA
* statusDate MS

Extension: PackagedProductReference
Id: packageInstanceOf
Title: "Packaged Product Reference"
Description: "A reference to a packaged product that is represented in a packaging element."
* value[x] 1..1 MS
* value[x] only Reference(SubmittedMedicinalPackaging)
* ^context[+].type = #element
* ^context[=].expression = "PackagedProductDefinition.packaging"

Profile: SubmittedMedicinalPackaging
Parent: PackagedProductDefinition
Description: "Details around the packaging of submitted medicinal products."
* packageFor 1..1 MS
* packageFor only Reference(SubmittedMedicinalProduct)
* marketingStatus 0..1 MS
* marketingStatus.status 1..1 MS
* marketingStatus.status from SPLMarketingStatuses (required)
* marketingStatus.dateRange 1..1 MS

* packaging 1..1 MS
* packaging.extension contains PackagedProductReference named packageInstanceOf 0..1 MS
* packaging.identifier MS
* packaging.type 1..1 MS
* packaging.type from SPLPackageTypes (required)
* packaging.quantity 0..1 MS
* packaging.property 0..* MS
* packaging.property.type 1..1 MS
* packaging.property.type = SubmittedMedicinalProductCharacteristicTypes#SPLCMBPRDTP
* packaging.property.value[x] 1..1 MS
* packaging.property.value[x] only CodeableConcept
* packaging.property.valueCodeableConcept from SPLComboProductType (required)
* packaging.containedItem 0..* MS
* packaging.containedItem.item 1..1 MS
* packaging.containedItem.item only CodeableReference(SubmittedManufacturedItem)
* packaging.containedItem.amount 1..1 MS
* packaging.packaging 0..* MS

Profile: SubmittedManufacturedItem
Parent: ManufacturedItemDefinition
Description: "Details around the actual item, i.e tablet, solution, etc. that is packaged as part of the medicinal product."
* status = #active
* manufacturedDoseForm 1..1 MS
* manufacturedDoseForm from SPLDoseForm (required)
* extension contains ItemMarketingStatusDates named marketingStatusDates 0..1 MS
* property 0..* MS
* property.type 1..1 MS
* property.type from SubmittedMedicinalProductCharacteristicTypes (required)
* property.value[x] 1..1 MS
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property ^slicing.description = "Require specific bindings for characteristic type."
* property contains Color 0..* and Imprint 0..1 and Score 0..1 and Shape 0..1 and Size 0..1 and Flavor 0..* and Image 0..*
* property[Color].type = SubmittedMedicinalProductCharacteristicTypes#SPLCOLOR
* property[Color].value[x] only CodeableConcept
* property[Color].valueCodeableConcept from SPLColor (required)
* property[Shape].type = SubmittedMedicinalProductCharacteristicTypes#SPLSHAPE
* property[Shape].value[x] only CodeableConcept
* property[Shape].valueCodeableConcept from SPLShape (required)
* property[Flavor].type = SubmittedMedicinalProductCharacteristicTypes#SPLFLAVOR
* property[Flavor].value[x] only CodeableConcept
* property[Flavor].valueCodeableConcept from SPLFlavor (required)
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
* role from http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity (required)
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

CodeSystem: SPLMarketingStatuses
Id: codesystem-splMarketingStatuses
Title: "SPL Marketing Statuses CodeSystem"
Description: "Marketing Status Status Codes"
* ^caseSensitive = true
* ^experimental = false
* #new "new" "Product Item code is being reserved for future use"
* #active "active" "on the market"
* #completed "completed" "no longer going to be available on the market"

ValueSet: SPLMarketingStatuses
Id: valueset-splMarketingStatuses
Title: "SPL Marketing Statuses ValueSet"
Description: "Marketing Status Status Codes"
* ^experimental = false
* include codes from system SPLMarketingStatuses

CodeSystem: SubmittedMedicinalProductNameTypes
Id: codesystem-submittedMedicinalProductNameTypes
Title: "Medicinal Product Name Types CodeSystem"
Description: "Codes that types of names for a medicinal product."
* ^caseSensitive = true
* ^experimental = false
* #PROPRIETARY "Proprietary Name"
* #NONPROPRIETARY "Generic Name (Non-Proprietary)"

CodeSystem: SubmittedMedicinalProductCharacteristicTypes
Id: codesystem-characteristicTypes
Title: "SPL Product Characteristic Types CodeSystem"
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
Title: "SPL Product Characteristic Types ValueSet"
* ^experimental = false
* include codes from system SubmittedMedicinalProductCharacteristicTypes

ValueSet: AllNDCProducts
Id: valueset-AllNDCProducts
Description: "A value set that is all of the NDC codesystem, i.e. all NDC products"
Title: "All NDC Products"
* ^experimental = false
* include codes from system http://hl7.org/fhir/sid/ndc