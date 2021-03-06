This section of the implementation guide defines the specific conformance requirements for systems wishing to conform to this SPL to FHIR implementation guide.


### Context

#### Pre-reading
Before reading this formal specification, implementers should first familiarize themselves with the other key portions of the specification:

* The [Use Cases & Overview](usecases.html) page provides context for what this formal specification is trying to accomplish and will give a sense of both the business context and general process flow enabled by the formal specification below.


#### Conventions
This implementation guide uses specific terminology to flag statements that have relevance for the evaluation of conformance with the guide:

* **SHALL** indicates requirements that must be met to be conformant with the specification.

* **SHOULD** indicates behaviors that are strongly recommended (and which may result in interoperability issues or sub-optimal behavior if not adhered to), but which do not, for this version of the specification, affect the determination of specification conformance.

* **MAY** describes optional behaviors that are free to consider but where the is no recommendation for or against adoption.


#### Systems

This implementation guide sets expectations for two types of systems:

* **Client** systems are drug labelling systems that are submitting their labels and supporting information as required to bring their products to market
* **Regulatory** systems are systems that receive the label submissions and the other supporting interactions


#### Profiles
This specification makes significant use of [FHIR profiles]({{site.data.fhir.path}}profiling.html) and terminology artifacts to describe the content to be shared as part of regulatory submission requests and responses.

The full set of profiles defined in this implementation guide can be found by following the links on the [Artifacts](artifacts.html) page.

### Detailed Requirements

#### Product Submissions
1.	All submissions will be packaged as a Bundle with type of ‘document’.
2.	The POC FHIR Server endpoint for Document submissions will be [baseurl]/Bundle with the Bundle as the body of the request.
3.	The incoming document Bundle will be stored as a whole. (See http://hl7.org/fhir/documents.html for the rationale of storing documents as a whole, specifically section 3.3.3 Document Handling Obligations)
4.	The FHIR Composition will contain the FHIR Submission Type.  This Submission Type may or may not be mapped 1-to-1 to the SPL Document Types (more analysis needed).
5.	The SPL document, either the source or the converted document, will be referenced via a FHIR DocumentReference resource that will be stored in the FHIR server.  A Provenance record will be created by the POC FHIR Server that ties the original submission to the converted submission.
6.	The FHIR Metadata fields will be the following:
	- FHIR Submission ID – Composition.identifier
	- FHIR Submission Version – Composition.meta.versionId
	- FHIR Submission Type – Composition.type
	- FHIR Submission DateTime – Composition.date
	- FHIR Original Submission?  This will be distinguished by whether the Provenance record shows that FHIR was derived from SPL or SPL was derived from FHIR.
7.	The SPL Metadata will be the following:
	- SPL Set ID – DocumentReference.identifier 
	- SPL Document ID – DocumentReference.masterIdentifier
	- SPL Document Version – DocumentReference.extension(DocumentVersion)
	- SPL Document Type – DocumentReference.type
	- SPL Submission DateTime – DocumentReference.extension(SPLDocumentDate)
8.	The FHIR Provenance instance will have the following elements:
	- Provenance.occurredDateTime = Submission DateTime
	- Provenance.recorded = Conversion DateTime
	- Provenance.activity = Submission Type, CREATE/UPDATE as appropriate
	- Provenance.agent.type = assembler
	- Provenance.agent.who.display = SPL FHIR POC II Software
	- Provenance.entity.role = source
	- SPL transformed to FHIR:
		- Provenance.target = FHIR document Bundle
		- Provenance.entity.what = DocumentReference with SPL document reference and SPL metadata
	- FHIR transformed to SPL:
		- Provenance.target = DocumentReference with SPL document reference and SPL metadata
		- Provenance.entity.what = FHIR document Bundle

##### Product Bundle submission process
The Product submission operation is executed by POSTing a FHIR Bundle to the [base url]/Bundle endpoint.  The Bundle can be encoded in either JSON or XML.  The first entry in the Bundle SHALL be a Composition resource complying with the profile defined in this IG.  Additional Bundle entries SHALL be populated with any resources referenced by the Composition resource (and any resources referenced by *those* resources, fully traversing all references and complying with all identified profiles).  Note that even if a given resource instance is referenced multiple times, it SHALL only appear in the Bundle once.

#### Organization Submissions
1. All submissions will be packaged as a Bundle with type of ‘message’ and the message focus entry will be the Organization being registered.
2. The POC FHIR Server endpoint for Transaction submissions will be [baseurl]/$process-message with the Bundle as the body of the request.
3. The incoming Bundle will be stored for auditing purposes.
4. The following resources will be stored in the FHIR server:
	- Labeler Code Request – Labeler Organization
	- Establishment Registration – Registrant Organization, each Establishment Organization and an OrganizationAffiliation linking the Registrant and the Establishments
	- GDUFA Facility Identification – Registrant Organization, each GDUFA Facility Organization and an OrganizationAffiliation linking the Registrant and the Establishments
5.	All other resources will be captured as contained resources.
6. The FHIR Submission Type will be passed as the MessageHeader.eventCoding.  This Submission Type may or may not be mapped 1-to-1 to the SPL Document Types (more analysis needed).
7. The SPL document, either the source or the converted document, will be referenced via a FHIR DocumentReference resource that will be stored in the FHIR server.  A Provenance record will be created by the POC FHIR Server that ties the original submission to the converted submission.
8.	The FHIR Metadata fields will be the following:
	- FHIR Original Submission?  This will be distinguished by whether the Provenance record shows that FHIR was derived from SPL or SPL was derived from FHIR.
9. The SPL Metadata will be the following:
	- SPL Set ID – DocumentReference.identifier
	- SPL Document ID – DocumentReference.masterIdentifier
	- SPL Document Version – DocumentReference.extension(DocumentVersion)
	- SPL Document Type – DocumentReference.type
	- SPL Submission DateTime – DocumentReference.date
10.	The FHIR Provenance instance will have the following elements:
	- Provenance.occurredDateTime = Submission DateTime
	- Provenance.recorded = Conversion DateTime
	- Provenance.activity = Submission Type, CREATE/UPDATE/DELETE as appropriate
	- Provenance.agent.type = assembler
	- Provenance.agent.who.display = SPL FHIR POC II Software
	- Provenance.entity.role = source
	- SPL transformed to FHIR:
		- Provenance.target = stored Organization resources
		- Provenance.entity.what = DocumentReference with SPL document reference and SPL metadata
	- FHIR transformed to SPL:
		- Provenance.target = DocumentReference with SPL document reference and SPL metadata
		- Provenance.entity.what = stored Organization resources


##### Organization Bundle submission process
The Organization registration operations are executed by POSTing a FHIR Bundle to the [base url]/$process-message endpoint.  The 'submissionType' parameter will indicate the specific registration operation that is being requested.  The Bundle can be encoded in either JSON or XML.  The first entry in the Bundle SHALL be an Organization resource complying with the profile defined in this IG.  Additional Bundle entries SHALL be populated with any resources referenced by the Composition resource (and any resources referenced by *those* resources, fully traversing all references and complying with all identified profiles).  Note that even if a given resource instance is referenced multiple times, it SHALL only appear in the Bundle once.

#### Asynchronous Processing
* put information about how errors and valid responses will be returned
