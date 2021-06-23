// DOCUMENT AND PROVENANCE EXAMPLES

Instance: ExampleSPLDocumentReference
InstanceOf: SPLDocumentReference
Description: "An example of an SPL document that will be attached to a FHIR Provenance."
* extension[versionNumber].valueString = "7"
* extension[splDocumentDate].valueDate = "2020-04-21"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:uuid:af87107d-11d1-46ae-9ffb-f2ba572d7ff9"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7ad19579-7b2f-4c0a-931c-4ba25f73b296"
* status = #current
* type = $LOINC#51725-0
* date = "2021-04-21T14:28:00.00+06:00"
* content.attachment.contentType = #application/xml
* content.attachment.data = "PHNhbXBsZT48L3NhbXBsZT4="

Instance: ExampleLabelerFHIRtoSPLProvenance
InstanceOf: DualSubmissionProvenance
Description: "A Provenance record that associates a set of FHIR Labeler Organizations with a generated SPL document."
* target = Reference(ExampleSPLDocumentReference)
* occurredDateTime = "2021-04-21"
* recorded = "2021-04-21T14:28:00.00+06:00"
* activity.coding[0] = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE
* activity.coding[1] = $LOINC#51726-8
* agent.who.display = "SPL To FHIR Converter Program"
* entity.what = Reference(SampleLabelerOrganization)

Instance: ExampleLabelerSPLtoFHIRProvenance
InstanceOf: DualSubmissionProvenance
Description: "A Provenance record that associates a set of FHIR Labeler Organizations with a submitted SPL document."
* target = Reference(SampleLabelerOrganization)
* occurredDateTime = "2021-04-21"
* recorded = "2021-04-21T14:28:00.00+06:00"
* activity.coding[0] = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE
* activity.coding[1] = $LOINC#51726-8
* agent.who.display = "SPL To FHIR Converter Program"
* entity.what = Reference(ExampleSPLDocumentReference)

Instance: ExampleEstablishmentFHIRtoSPLProvenance
InstanceOf: DualSubmissionProvenance
Description: "A Provenance record that associates a set of FHIR Registrant and Establishment Organizations with a generated SPL document."
* target = Reference(ExampleSPLDocumentReference)
* occurredDateTime = "2021-04-21"
* recorded = "2021-04-21T14:28:00.00+06:00"
* activity.coding[0] = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE
* activity.coding[1] = $LOINC#51725-0
* agent.who.display = "SPL To FHIR Converter Program"
* entity[0].what = Reference(ExampleEstablishmentRegistrant)
* entity[1].what = Reference(ExampleEstablishment)

Instance: ExampleEstablishmentSPLtoFHIRProvenance
InstanceOf: DualSubmissionProvenance
Description: "A Provenance record that associates a set of FHIR Registrant and Establishment Organizations with a submitted SPL document."
* target[0] = Reference(ExampleEstablishmentRegistrant)
* target[1] = Reference(ExampleEstablishment)
* occurredDateTime = "2021-04-21"
* recorded = "2021-04-21T14:28:00.00+06:00"
* activity.coding[0] = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE
* activity.coding[1] = $LOINC#51725-0
* agent.who.display = "SPL To FHIR Converter Program"
* entity.what = Reference(ExampleSPLDocumentReference)
