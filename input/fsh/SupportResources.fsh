Profile: SPLDocumentReference
Parent: DocumentReference
Description: "A profile that represents the SPL document that was either created by or was the source for the Organization FHIR Bundle."
* extension contains VersionNumber named versionNumber 0..1 MS and SPLDocumentDate named splDocumentDate 0..1 MS
* identifier 1..* MS
* status = #current
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
* name = "Activity"
* status = #active
* description = "A search parameter to allow searching for Provenance records by activity type."
* code = #activity
* base = #Provenance
* type = #token
* expression = "Provenance.activity"
