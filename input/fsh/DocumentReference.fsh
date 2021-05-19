Profile: SPLDocumentReference
Parent: DocumentReference
Description: "A profile that represents the SPL document that was either created by or was the source for the Organization FHIR Bundle."
* extension contains VersionNumber named versionNumber 0..1 MS and SPLDocumentDate named splDocumentDate 0..1 MS
* masterIdentifier 1..1 MS
* identifier 1..* MS
* status = #current (exactly)
* type 1..1 MS
* date 1..1 MS
* content MS
* content.attachment MS
* content.attachment.contentType MS
* content.attachment.data 1..1 MS

Extension: SPLDocumentDate
Id: splDocumentDate
Description: "Adding a SPL creation date to the document reference."
* value[x] only date

Profile: DualSubmissionProvenance
Parent: Provenance
Description: "A profile that links changes made to a FHIR system either via a converted SPL document or that are sent to a SPL system"
* target MS
* target only Reference(SPLDocumentReference or ProductSubmissionDocument or RegistrantOrganization or LabelerOrganization or EstablishmentOrganization or GDUFAFacilityOrganization)
* occurred[x] 1..1 MS
* recorded MS
* activity 1..1 MS
* agent 1..1 MS
* agent.type 1..1 MS
* agent.type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#assembler
* agent.who MS
* entity 1..* MS
* entity.role MS
* entity.role = #source
* entity.what only Reference(SPLDocumentReference or ProductSubmissionDocument or RegistrantOrganization or LabelerOrganization or EstablishmentOrganization or GDUFAFacilityOrganization)

Instance: ProvenanceActivitySearchParameter
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/spl/SearchParameter/ProvenanceActivitySearchParameter"
* name = "activity"
* status = #active
* description = "A search parameter to allow searching for Provenance records by activity type."
* code = #activity
* base = #Provenance
* type = #token
* expression = "Provenance.activity"

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
* entity.what = Reference(NationalPharmaIndia)

Instance: ExampleLabelerSPLtoFHIRProvenance
InstanceOf: DualSubmissionProvenance
Description: "A Provenance record that associates a set of FHIR Labeler Organizations with a submitted SPL document."
* target = Reference(NationalPharmaIndia)
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
