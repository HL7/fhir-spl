Logical: SubmittedProductLogicalModel
Parent: Element
Id: SubmittedProductLogicalModel
Description: "Details about the product that is submitted to the FDA."
Title: "Submitted Product"
* ^type = "SubmittedProduct"

* ndcCode 0..1 CodeableConcept "NDC Code" "The NDC Code that uniquely identifies this product."
* proprietaryName 1..1 string "Proprietary Name" "The name of the product as used in product labeling or in a catalog."
* proprietaryNameSuffix 0..1 string "Proprietary Name Suffix" "An optional suffix that is part of the proprietary name."
* nonProprietaryName 0..1 string "Non-Proprietary Name" "An optional name of the product that is used to refer to this product."
* form 0..1 CodeableConcept "Product Form" "A code that indicates the dose form of the product."
* sourceProductCode 0..1 CodeableConcept "Source Product" "An NDC code that indicates a product that is the source of this product."
* productIdentifier 0..* Identifier "Additional Identifiers" "Additional identifiers that are customer facing and can be used to refer to this product."
* deaSchedule 0..1 CodeableConcept "DEA Schedule Code" "A code that indicates the specific DEA schedule that this product belongs to."
* route 0..* CodeableConcept "Route of Administration" "A code that indicates the route by which the product is administered."

* ingredient 0..* BackboneElement "Product Ingredients" "Ingredient information for this product."
* ingredient.type 1..1 code "Ingredient Type" "A code that indicates the role the ingredient has in this product, eg. active, flavouring, base, etc."
* ingredient.unii 1..1 CodeableConcept "Ingredient Code" "The UNII that identifies the ingredient substance."
* ingredient.name 1..1 string "Ingredient Name" "The name of the ingredient."
* ingredient.strength 0..1 Ratio "Ingredient Strength" "How much of the ingredient is present in the product."
* ingredient.activeMoiety 1..2 BackboneElement "Ingredient Active Moiety" "The active moeity that corresponds to this ingredient."
* ingredient.activeMoiety.unii 1..1 CodeableConcept "Active Moiety Code" "The UNII that identifies the ingredient's active moiety."
* ingredient.activeMoiety.name 1..1 string "Active Moiety Name" "The name of the ingredient's active moiety."
* ingredient.strengthReference 0..1 BackboneElement "Reference Ingredient for Strength" "An ingredient that is used as the reference for the strength."
* ingredient.strengthReference.unii 1..1 CodeableConcept "Reference Ingredient Code" "The UNII that identifies the reference ingredient."
* ingredient.strengthReference.name 1..1 string "Reference Ingredient Name" "The name of the reference ingredient."

* packaging 0..1 BackboneElement "Product Packaging" "Information about the various packaging of the product."
* packaging.quantity 1..1 Quantity "Amount of product in the package."
* packaging.type 1..1 CodeableConcept "Packaging Type" "The type of the packaging."
* packaging.code 0..1 CodeableConcept "Packaging Identifier" "The NDC package code that corresponds to this packaging."
* packaging.sample 1..1 boolean "Drug Sample Flag" "Indicates whether the package is a drug sample."
* packaging.combinationProductType 0..1 CodeableConcept "Combination Product Type" "Indicates the type of combination product, if applicable."
* packaging.marketingStatusPeriod 0..1 Period "Marketing Status Period" "The start and end date of when this package is on the market."
* packaging.characteristic 0..* BackboneElement "Packaging Characteristics" "Properties that provide extra information about the packaging."
* packaging.characteristic ^contentReference = "http://hl7.org/fhir/us/spl/StructureDefinition/SubmittedProductLogicalModel#SubmittedProduct.characteristic"
* packaging.packaging 0..1 BackboneElement "Outer Packaging" "Packaging that contains this package."
* packaging.packaging ^contentReference = "http://hl7.org/fhir/us/spl/StructureDefinition/SubmittedProductLogicalModel#SubmittedProduct.packaging"

* part 0..* BackboneElement "Product Part" "Information about parts of the product."
* part.quantity 1..1 Quantity "Part Quantity" "Amount of parts in the product."
* part.product 1..1 Reference(SubmittedProductLogicalModel) "Part Product" "Product information for this part."
* part.marketing 0..1 BackboneElement "Part Marketing" "Marketing Information about this part."
* part.marketing ^contentReference = "http://hl7.org/fhir/us/spl/StructureDefinition/SubmittedProductLogicalModel#SubmittedProduct.marketing"

* marketing 0..1 BackboneElement "Marketing Application Information" "Information about the marketing category and an associated application."
* marketing.number 0..1 Identifier "Markting Application Number" "The application number for this product."
* marketing.category 0..1 CodeableConcept "Marketing Category" "The marketing category for this product."
* marketing.approvalDate 0..1 dateTime "Marketing Approval Date" "The approval date of the marketing applicaiton."

* marketingStatusPeriod 1..1 Period "Marketing Status Period" "The start and end date of when the product is on the market."

* characteristic 0..* BackboneElement "Product Characteristics" "Properties that provide extra information about the product."
* characteristic.type 1..1 CodeableConcept "Characteristic Type" "A code that identifies the characteristic."
* characteristic.value[x] 1..1 Quantity or integer or Range or CodeableConcept or string or base64Binary or boolean "Characteristic Value" "The value of the characteristic."

