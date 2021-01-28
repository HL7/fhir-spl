Profile: GDUFAFacilityIdentificationBundle
Parent: Bundle
Description: "A profile that represents the Bundle that contains all of the resources for a GDUFA Facility Identification Request."
* type 1..1 MS
* type = #transaction (exactly)
* timestamp 1..1 MS
* entry 2..*
* entry.resource 0..1 MS
* entry.search 0..0
* entry.request 1..1
* entry.response 0..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a GDUFA Facility Identification Request."
* entry contains Registrant 1..1 MS and GDUFAFacility 0..* MS and GDUFAFacilityAffiliation 0..* MS and SourceSPL 0..1 MS
* entry[Registrant].resource 1..1
* entry[Registrant].resource only RegistrantOrganization
* entry[Registrant].request.method from RegistrantRequestMethod (required)
* entry[GDUFAFacility].resource 0..1
* entry[GDUFAFacility].resource only GDUFAFacilityOrganization
* entry[GDUFAFacility].request.method from GDUFAFacilityRequestMethod (required)
* entry[GDUFAFacilityAffiliation].resource 1..1
* entry[GDUFAFacilityAffiliation].resource only GDUFAFacilityAffiliation
* entry[GDUFAFacilityAffiliation].request.method from RegistrantRequestMethod (required)
* entry[SourceSPL].resource 1..1
* entry[SourceSPL].resource only SPLDocumentReference
* entry[SourceSPL].request.method = http://hl7.org/fhir/http-verb#POST (exactly)

ValueSet: GDUFAFacilityRequestMethod
Id: valueset-gdufaFacilityRequestMethod
Description: "Only PUTs and POSTs are allowed when submitting a Establishment Organization."
* http://hl7.org/fhir/http-verb#POST
* http://hl7.org/fhir/http-verb#PUT


Profile: GDUFAFacilityOrganization
Parent: Organization
Description: "A profile for the data elements required to identify an organization that is identified as a GDUFA Facility."
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #closed
* contained ^slicing.description = "The specific resources that are needed for a GDUFA Facility organization."
* contained contains BusinessOperation 1..* MS
* contained[BusinessOperation] only EstablishmentBusinessOperation
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Require specific types of identifiers."
* identifier contains DUNSNumber 1..1 MS and FEINumber 0..1 MS
* identifier[DUNSNumber].system = "urn:oid:1.3.6.1.4.1.519.1"
* identifier[FEINumber].system = "urn:oid:2.16.840.1.113883.4.82"
* type = SPLOrganizationTypes#GenericDrugUseFacility
* name 1..1 MS
* address 1..1 MS
* address.line 1..2 MS
* address.city 1..1 MS
* address.state 0..1 MS
* address.postalCode 1..1 MS
* address.country 1..1 MS
* contact 1..1 MS
* contact.name 1..1 MS
* contact.address 1..1 MS
* contact.address.line 1..2 MS
* contact.address.city 1..1 MS
* contact.address.state 0..1 MS
* contact.address.postalCode 1..1 MS
* contact.address.country 1..1 MS
* contact.telecom 2..* MS
* contact.telecom ^slicing.discriminator.type = #value
* contact.telecom ^slicing.discriminator.path = "system"
* contact.telecom ^slicing.rules = #open
* contact.telecom ^slicing.description = "Require a telephone number and an email address."
* contact.telecom contains Phone 1..1 MS and Email 1..1 MS
* contact.telecom[Phone].system = #phone
* contact.telecom[Email].system = #email

Profile: GDUFAFacilityAffiliation
Parent: OrganizationAffiliation
Description: "A profile that associates a GDUFA facility to its registrant."
* organization 1..1 MS
* organization only Reference(RegistrantOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(GDUFAFacilityOrganization)
* code 1..1 MS
* code = http://hl7.org/fhir/us/spl/CodeSystem/codesystem-organizationAffiliationCodes#GDUFA (exactly)

Profile: GDUFAFacilityBusinessOperation
Parent: HealthcareService
Description: "A profile that associates an establishment to the set of business operations that it can perform."
* providedBy 1..1 MS
* providedBy only Reference(GDUFAFacilityOrganization)
* type 1..1 MS
* type from GDUFAFacilityBusinessOperations (required)
* serviceProvisionCode 1..1 MS
* serviceProvisionCode from GDUFAFacilityBusinessOperationQualifiers (required)
