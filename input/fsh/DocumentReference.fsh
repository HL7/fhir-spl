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
* content.attachment.data 1..1 MS

Extension: SPLDocumentDate
Id: splDocumentDate
Description: "Adding a SPL creation date to the document reference."
* value[x] only date
