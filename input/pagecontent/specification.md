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
1. All submissions will be packaged as a Bundle with type of ‘document’.
2.	The incoming document Bundle will be stored as a whole. (See http://hl7.org/fhir/documents.html for the rationale of storing documents as a whole, specifically section 3.3.3 Document Handling Obligations)
3.	The POC FHIR Server endpoint for Document submissions will be [baseurl]/Bundle with the Bundle as the body of the request.
4.	The FHIR Composition will contain the FHIR Submission Type.  This Submission Type may or may not be mapped 1-to-1 to the SPL Document Types (more analysis needed).
5.	The source SPL document or the converted SPL document will be referenced via a FHIR DocumentReference resource.  A Provenance record will be created by the POC FHIR Server that ties the original submission to the converted submission.  If the original submission is SPL, then the Provenance record will point to the DocumentReference as an entity with role of ‘derivation’ and the converted FHIR Bundle as the target.  If the original submission is FHIR, then the Provenance record will point to the DocumentReference as the target and the submitted FHIR Bundle as an entity with role of ‘derivation’.
6.	The FHIR Metadata fields will be the following:
	- FHIR Submission ID – Composition.identifier
	- FHIR Submission Version – Composition.meta.versionId
	- FHIR Submission Type – Composition.type and Provenance.activity
	- FHIR Submission DateTime – Composition.date and Provenance.occurred
	- FHIR Original Submission?  This will be distinguished by whether the Provenance record shows that FHIR was derived from SPL or SPL was derived from FHIR.
		- No? (SPL transformed to FHIR)
			- Provenance[with target = FHIR document Bundle].entity.role = derivation
			- Provenance.entity.what = DocumentReference with SPL document reference and SPL metadata
			- Provenance.entity.agent.who = reference to Labeler
			- Provenance.recorded = SPL-to-FHIR Conversion DateTime
		- Yes? (FHIR transformed to SPL)
			- DocumentReference with SPL document reference and SPL metadata
			- Provenance[with target = DocumentReference].entity.role = derivation
			- Provenance.entity.what = FHIR document Bundle
			- Provenance.entity.agent.who = reference to Labeler
			- Provenance.recorded = FHIR-to-SPL Conversion DateTime
7.	The SPL Metadata will be the following:
	- SPL Set ID – DocumentReference.masterIdentifier 
	- SPL Document ID – DocumentReference.identifier
	- SPL Document Version – DocumentReference.extension(DocumentVersion)
	- SPL Document Type – DocumentReference.type
	- SPL Submission DateTime – DocumentReference.date

##### Product Bundle submission process
The Product submission operation is executed by POSTing a FHIR Bundle to the [base url]/Bundle endpoint.  The Bundle can be encoded in either JSON or XML.  The first entry in the Bundle SHALL be a Composition resource complying with the profile defined in this IG.  Additional Bundle entries SHALL be populated with any resources referenced by the Compositoin resource (and any resources referenced by *those* resources, fully traversing all references and complying with all identified profiles).  Note that even if a given resource instance is referenced multiple times, it SHALL only appear in the Bundle once.

* details of how the product submission process will be validated and processed>

#### Organization Submissions
1. All submissions will be packaged as a Bundle with type of ‘transaction’ and the main Bundle entry will be the Organization being registered
2. The Bundle will be processed using a custom operation, as the POC FHIR Server will not handle generic/arbitrary transactions.  The POC FHIR Server endpoint for Transaction submissions will be [baseurl]/$processBundle?submissionType=XXX with the Bundle as the body of the request.
3. The incoming Bundle will be stored for auditing purposes and the Organization being registered and its related resources will be stored in the POC FHIR Server.
4. The FHIR Submission Type will be passed as a parameter to the FHIR server call.  This Submission Type may or may not be mapped 1-to-1 to the SPL Document Types (more analysis needed).
5. The source SPL document or the converted SPL document will be referenced via a FHIR DocumentReference resource.  A Provenance record will be created by the POC FHIR Server that ties the original submission to the converted submission.  If the original submission is SPL, then the Provenance record will point to the DocumentReference as an entity with role of ‘derivation’ and all of the created Organization resources as the target.  If the original submission is FHIR, then the Provenance record will point to the DocumentReference as the target and the created Organization resources as entities with role of ‘derivation’.  As well, the original Bundle will be referenced in the Provenance record as an entity with a role of ‘source’.
6. The FHIR Metadata fields will be the following:
	- FHIR Submission Type – Provenance.activity
	- FHIR Submission DateTime – Provenance.occurred
	- FHIR Original Submission?  This will be distinguished by whether the Provenance record shows that FHIR was derived from SPL or SPL was derived from FHIR.
		- No?
			- Provenance[with target = Organization].entity.role = derivation
			- Provenance.entity.what = DocumentReference with SPL document reference and SPL metadata
			- Provenance.entity.agent.who = reference to Organization being registered
			- Provenance.recorded = SPL-to-FHIR Conversion DateTime
		- Yes?
			- DocumentReference with SPL document reference and SPL metadata
			- Provenance[with target = DocumentReference].entity.role = derivation
			- Provenance.entity.what = Organization being registered
			- Provenance.entity.agent.who = reference to Registrant
			- Provenance.recorded = FHIR-to-SPL Conversion DateTime
7. The SPL Metadata will be the following:
	- SPL Set ID – DocumentReference.masterIdentifier
	- SPL Document ID – DocumentReference.identifier
	- SPL Document Version – DocumentReference.extension(DocumentVersion)
	- SPL Document Type – DocumentReference.type
	- SPL Submission DateTime – DocumentReference.date

##### Organization Bundle submission process
The Organization registration operations are executed by POSTing a FHIR Bundle to the [base url]/$processBundle?submissionType=XXX endpoint.  The 'submissionType' parameter will indicate the specific registration operation that is being requested.  The Bundle can be encoded in either JSON or XML.  The first entry in the Bundle SHALL be an Organization resource complying with the profile defined in this IG.  Additional Bundle entries SHALL be populated with any resources referenced by the Compositoin resource (and any resources referenced by *those* resources, fully traversing all references and complying with all identified profiles).  Note that even if a given resource instance is referenced multiple times, it SHALL only appear in the Bundle once.

* details of how the organization registration process will be validated and processed>


#### Submission responses
The response to the FHIR submission will return information about the processing of the appropriate resources contained in the submitted Bundle.

It is possible that the incoming Bundle can not be processed due to validation errors or other non-business-errors.  In these instances, the receiving system SHALL return OperationOutcome intances that detail why the Bundle could not be processed.

The resulting Bundle is returned as the HTTP body of the POST response.

##### Organization request and response example

##### Product request and response example
