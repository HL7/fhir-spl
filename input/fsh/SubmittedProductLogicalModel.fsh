Instance: SubmittedProductLogicalModel
InstanceOf: StructureDefinition
Description: "FDA Submitted Product Logical Model"
Title: "FDA Submitted Product Logical Model"
Usage: #definition

* publisher = "HL7"
* status = #draft
* name = "SubmittedProductLogicalModel"
* url = "http://hl7.org/fhir/us/spl/StructureDefinition/SubmittedProductLogicalModel"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "SubmittedProduct"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization

* differential.element[0].id = "SubmittedProduct"
* differential.element[0].path = "SubmittedProduct"
* differential.element[0].definition = "Details about the product that is submitted to the FDA."
* differential.element[0].min = 1
* differential.element[0].max = "1"

