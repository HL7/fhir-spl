Profile: GDUFAFacilityIdentificationBundle
Parent: Bundle
Description: "A profile that represents the Bundle that contains all of the resources for a GDUFA Facility Identification Request."
* type 1..1 MS
* type = #message (exactly)
* timestamp 1..1 MS
* entry 3..*
* entry.resource 1..1 MS
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a GDUFA Facility Identification Request."
* entry contains Message 1..1 MS and Registrant 1..1 MS and GDUFAFacility 1..* MS
* entry[Message].resource only GDUFAFacilityIdentificationMessage
* entry[Registrant].resource only GDUFARegistrantOrganization
* entry[GDUFAFacility].resource only GDUFAFacilityOrganization

Profile: GDUFAFacilityIdentificationMessage
Parent: OrganizationMessage
Description: "A profile of a GDUFA Facility Identification message"
* eventCoding from SPLGenericFacilityMessageTypes
* focus ^slicing.discriminator.type = #profile
* focus ^slicing.discriminator.path = "$this.resolve()"
* focus ^slicing.rules = #open
* focus contains Registrant 1..1 MS and GDUFAFacility 1..* MS
* focus[Registrant] only Reference(GDUFARegistrantOrganization)
* focus[GDUFAFacility] only Reference(GDUFAFacilityOrganization)

Profile: GDUFAFacilityInactivationBundle
Parent: Bundle
Description: "A profile that represents the Bundle that contains all of the resources for an GDUFA Facility Inactivation Request."
* type 1..1 MS
* type = #message (exactly)
* timestamp 1..1 MS
* entry 3..*
* entry.resource 1..1 MS
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a GDUFA Facility Inactivation Request."
* entry contains Message 1..1 MS and Registrant 1..1 MS and GDUFAFacility 1..* MS
* entry[Message].resource only GDUFAFacilityInactivationMessage
* entry[Registrant].resource only IdentifiedGDUFARegistrant
* entry[GDUFAFacility].resource only IdentifiedGDUFAFacility

Profile: GDUFAFacilityInactivationMessage
Parent: OrganizationMessage
Description: "A profile of an GDUFA Facility Inactivation message"
* eventCoding = FHIRSpecificSPLMessageTypes#02
* source.endpoint = "http://example.org/"
* focus ^slicing.discriminator.type = #profile
* focus ^slicing.discriminator.path = "$this.resolve()"
* focus ^slicing.rules = #open
* focus contains Registrant 1..1 MS and GDUFAFacility 1..* MS
* focus[Registrant] only Reference(IdentifiedGDUFARegistrant)
* focus[GDUFAFacility] only Reference(IdentifiedGDUFAFacility)

Profile: IdentifiedGDUFARegistrant
Parent: IdentifiedOrganization
Description: "A profile for an identified GDUFA facility registrant."
* type = SPLOrganizationTypes#GDUFARegistrant

Profile: IdentifiedGDUFAFacility
Parent: IdentifiedOrganization
Description: "A profile for an identified GDUFA facility."
* type = SPLOrganizationTypes#GenericDrugUseFacility

Profile: GDUFARegistrantOrganization
Parent: RegistrantOrganization
Description: "A specialization of the RegistrantOrganization profile that fixes the type to GDUFARegistrant."
* type = SPLOrganizationTypes#GDUFARegistrant

Profile: GDUFAFacilityOrganization
Parent: Organization
Description: "A profile for the data elements required to identify an organization that is identified as a GDUFA Facility."
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #closed
* contained ^slicing.description = "The specific resources that are needed for a GDUFA Facility organization."
* contained contains BusinessOperation 1..* MS
* contained[BusinessOperation] only GDUFAFacilityBusinessOperation
* identifier 2..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Require specific types of identifiers."
* identifier contains DUNSNumber 1..1 MS and FEINumber 1..1 MS
* identifier[DUNSNumber].system = "urn:oid:1.3.6.1.4.1.519.1"
* identifier[DUNSNumber] obeys spl-2.1.5.2
* identifier[FEINumber].system = "urn:oid:2.16.840.1.113883.4.82"
* identifier[FEINumber] obeys spl-6.1.3.7
* type 1..1 MS
* type = SPLOrganizationTypes#GenericDrugUseFacility
* name 1..1 MS
* address 1..1 MS
* address only SPLAddress
* contact 1..1 MS
* contact.name 1..1 MS
* contact.address 1..1 MS
* contact.address only SPLAddress
* contact.telecom 2..* MS
* contact.telecom ^slicing.discriminator.type = #value
* contact.telecom ^slicing.discriminator.path = "system"
* contact.telecom ^slicing.rules = #open
* contact.telecom ^slicing.description = "Require a telephone number and an email address."
* contact.telecom contains Phone 1..1 MS and Email 1..1 MS
* contact.telecom[Phone] only SPLContactPoint
* contact.telecom[Phone].system = #phone
* contact.telecom[Email] only SPLContactPoint
* contact.telecom[Email].system = #email

Profile: GDUFAFacilityAffiliation
Parent: OrganizationAffiliation
Description: "A profile that associates a GDUFA facility to its registrant."
* organization 1..1 MS
* organization only Reference(GDUFARegistrantOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(GDUFAFacilityOrganization)
* code 1..1 MS
* code = http://hl7.org/fhir/us/spl/CodeSystem/codesystem-organizationAffiliationCodes#GDUFA

Profile: GDUFAFacilityBusinessOperation
Parent: HealthcareService
Description: "A profile that associates an establishment to the set of business operations that it can perform."
* obeys spl-5.1.5.6
* providedBy 1..1 MS
* providedBy only Reference(GDUFAFacilityOrganization)
* type 1..1 MS
* type from GDUFAFacilityBusinessOperations (required)
* serviceProvisionCode 1..1 MS
* serviceProvisionCode from GDUFAFacilityBusinessOperationQualifiers (required)

Instance: ExampleGDUFARegistrant
InstanceOf: GDUFARegistrantOrganization
Description: "An example of a Registrant Organization."
* identifier[DUNSNumber].value = "111111111"
* name = "REGISTRANT SERVICES INC"
* type = SPLOrganizationTypes#GDUFARegistrant
* contact.name.text = "Charles Smith"
* contact.telecom[Phone].value = "+1-703-362-1280"
* contact.telecom[Email].value = "charles@anywhere.com"
* contact.address.line = "123 IVY LANE ROAD"
* contact.address.city = "SMITH FALLS"
* contact.address.state = "MD"
* contact.address.postalCode = "12345"
* contact.address.country = "USA"

Instance: SampleIdentifiedGDUFARegistrant
InstanceOf: IdentifiedGDUFARegistrant
Description: "An example of a Identified Registrant Organization."
* identifier[DUNSNumber].value = "111111111"
* name = "REGISTRANT SERVICES INC"
* type = SPLOrganizationTypes#GDUFARegistrant

Instance: ExampleGDUFAFacilityAffiliation
InstanceOf: GDUFAFacilityAffiliation
Description: "An example of an affiliation between a registrant and a GDUFA facility."
* organization = Reference(ExampleGDUFARegistrant)
* participatingOrganization = Reference(ExampleGDUFAFacility)

Instance: SampleIdentifiedGDUFAFacility
InstanceOf: IdentifiedGDUFAFacility
Description: "An example of an Identified GDUFA Facility Organization."
* identifier[DUNSNumber].value = "222222222"
* name = "EXAMPLE GDUFA FACILITY INC."
* type = SPLOrganizationTypes#GenericDrugUseFacility

Instance: ExampleGDUFAFacility
InstanceOf: GDUFAFacilityOrganization
Description: "An example of an GDUFA Facility Organization."
* contained[BusinessOperation] = ExampleGDUFAFacilityOperation
* contained[BusinessOperation].providedBy.reference = "#"
* identifier[DUNSNumber].value = "222222222"
* identifier[FEINumber].value = "1234567"
* name = "EXAMPLE GDUFA FACILITY INC."
* type = SPLOrganizationTypes#GenericDrugUseFacility
* address.line = "111 SOUTH PARK STREET"
* address.city = "YAKIMA"
* address.state = "WA"
* address.postalCode = "23456"
* address.country = "USA"
* contact.name.text = "Charles Smith"
* contact.telecom[Phone].value = "+1-703-362-1280"
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

Instance: SampleGDUFAFacilityIdentificationMessage
InstanceOf: GDUFAFacilityIdentificationMessage
Description: "An example of a GDUFA Facility Identification message"
* eventCoding = http://loinc.org#72090-4 "FDA product label Identification of CBER-regulated generic drug facility"
* source.endpoint = "http://example.org/"
* focus[0] = Reference(ExampleGDUFARegistrant)
* focus[1] = Reference(ExampleGDUFAFacility)

Instance: ExampleGDUFAFacilityIdentification
InstanceOf: GDUFAFacilityIdentificationBundle
Description: "An example of a Bundle containing a set of GDUFA Facility resources to identify."
* timestamp = "2002-08-11T01:01:01.111+06:00"
* entry[Message].resource = SampleGDUFAFacilityIdentificationMessage
* entry[Message].fullUrl = "http://example.org/MessageHeader/SampleGDUFAFacilityIdentificationMessage"
* entry[Registrant].resource = ExampleGDUFARegistrant
* entry[Registrant].fullUrl = "http://example.org/Organization/ExampleGDUFARegistrant"
* entry[GDUFAFacility].resource = ExampleGDUFAFacility
* entry[GDUFAFacility].fullUrl = "http://example.org/Organization/ExampleGDUFAFacility"

Instance: SampleGDUFAFacilityInactivationMessage
InstanceOf: GDUFAFacilityInactivationMessage
Description: "An example of a GDUFA Facility Identification message"
* eventCoding = FHIRSpecificSPLMessageTypes#02 "GDUFA Facility inactivation"
* source.endpoint = "http://example.org/"
* focus[0] = Reference(SampleIdentifiedGDUFARegistrant)
* focus[1] = Reference(SampleIdentifiedGDUFAFacility)

Instance: ExampleGDUFAFacilityInactivation
InstanceOf: GDUFAFacilityInactivationBundle
Description: "An example of a Bundle containing a set of GDUFA Facility resources to inactivate."
* timestamp = "2002-08-11T01:01:01.111+06:00"
* entry[Message].resource = SampleGDUFAFacilityInactivationMessage
* entry[Message].fullUrl = "http://example.org/MessageHeader/SampleGDUFAFacilityInactivationMessage"
* entry[Registrant].resource = SampleIdentifiedGDUFARegistrant
* entry[Registrant].fullUrl = "http://example.org/Organization/SampleIdentifiedGDUFARegistrant"
* entry[GDUFAFacility].resource = SampleIdentifiedGDUFAFacility
* entry[GDUFAFacility].fullUrl = "http://example.org/Organization/SampleIdentifiedGDUFAFacility"

