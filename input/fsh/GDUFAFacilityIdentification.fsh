Profile: GDUFAFacilityIdentificationBundle
Parent: Bundle
Description: "A profile that represents the Bundle that contains all of the resources for a GDUFA Facility Identification Request."
* type 1..1 MS
* type = #message (exactly)
* timestamp 1..1 MS
* entry 2..*
* entry.resource 1..1 MS
* entry.fullUrl 0..0
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a GDUFA Facility Identification Request."
* entry contains Message 1..1 MS and Registrant 1..1 MS and GDUFAFacility 0..* MS
* entry[Message].resource only OrganizationMessage
* entry[Registrant].resource only RegistrantOrganization
* entry[GDUFAFacility].resource only GDUFAFacilityOrganization

Profile: GDUFAFacilityOrganization
Parent: Organization
Description: "A profile for the data elements required to identify an organization that is identified as a GDUFA Facility."
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #closed
* contained ^slicing.description = "The specific resources that are needed for a GDUFA Facility organization."
* contained contains BusinessOperation 1..* MS
* contained[BusinessOperation] only GDUFAFacilityBusinessOperation
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

Instance: ExampleGDUFAFacility
InstanceOf: GDUFAFacilityOrganization
Description: "An example of an GDUFA Facility Organization."
* contained[BusinessOperation] = ExampleGDUFAFacilityOperation
* contained[BusinessOperation].providedBy.reference = "#"
* identifier[DUNSNumber].value = "222222222"
* name = "EXAMPLE GDUFA FACILITY INC."
* type = SPLOrganizationTypes#GenericDrugUseFacility
* address.line = "111 SOUTH PARK STREET"
* address.city = "YAKIMA"
* address.state = "WA"
* address.postalCode = "23456"
* address.country = "USA"
* contact.name.text = "Charles Smith"
* contact.telecom[Phone].value = "+703-362-1280"
* contact.telecom[Email].value = "charles@anywhere.com"
* contact.address.line = "123 IVY LANE ROAD"
* contact.address.city = "SMITH FALLS"
* contact.address.state = "MD"
* contact.address.postalCode = "12345"
* contact.address.country = "USA"

Instance: ExampleGDUFAFacilityOperation
InstanceOf: GDUFAFacilityBusinessOperation
Description: "An example of a GDUFA Facility's business operations."
* providedBy = Reference(ExampleGDUFAFacility)
* type = $NCI-T#C82401 "API Manufacture"
* serviceProvisionCode = $NCI-T#C101886 "manufactures non-generics"

Instance: GDUFAFacilityIdentificationMessage
InstanceOf: OrganizationMessage
Description: "An example of a GDUFA Facility Identification message"
* eventCoding = http://loinc.org#72090-4
* source.endpoint = "http://example.org/"
* focus[0] = Reference(ExampleRegistrant)
* focus[1] = Reference(ExampleGDUFAFacility)

Instance: ExampleGDUFAFacilityIdentification
InstanceOf: GDUFAFacilityIdentificationBundle
Description: "An example of a Bundle containing a set of GDUFA Facility Identification resources."
* timestamp = "2002-08-11T01:01:01.111+06:00"
* entry[Message].resource = GDUFAFacilityIdentificationMessage
* entry[Message].fullUrl = "http://example.org/MessageHeader/GDUFAFacilityIdentificationMessage"
* entry[Registrant].resource = ExampleRegistrant
* entry[Registrant].fullUrl = "http://example.org/Organization/ExampleRegistrant"
* entry[GDUFAFacility].resource = ExampleGDUFAFacility
* entry[GDUFAFacility].fullUrl = "http://example.org/Organization/ExampleGDUFAFacility"

