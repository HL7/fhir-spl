Profile: EstablishmentRegistrationBundle
Parent: Bundle
Description: "A profile that represents the Bundle that contains all of the resources for an Estabishment Registration Request."
* type 1..1 MS
* type = #message (exactly)
* timestamp 1..1 MS
* entry 2..*
* entry.resource 1..1 MS
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Establishment Registration Request."
* entry contains Message 1..1 MS and Registrant 1..1 MS and Establishment 1..* MS
* entry[Message].resource only EstablishmentRegistrationMessage
* entry[Registrant].resource only EstablishmentRegistrantOrganization
* entry[Establishment].resource only EstablishmentOrganization

Profile: EstablishmentRegistrationMessage
Parent: OrganizationMessage
Description: "A profile of an Establishment Registration message"
* eventCoding = http://loinc.org#51725-0
* source.endpoint = "http://example.org/"
* focus ^slicing.discriminator.type = #profile
* focus ^slicing.discriminator.path = "$this.resolve()"
* focus ^slicing.rules = #open
* focus contains Registrant 1..1 MS and Establishment 1..* MS
* focus[Registrant] only Reference(EstablishmentRegistrantOrganization)
* focus[Establishment] only Reference(EstablishmentOrganization)

Profile: EstablishmentInactivationBundle
Parent: Bundle
Description: "A profile that represents the Bundle that contains all of the resources for an Estabishment Inactivation Request."
* type 1..1 MS
* type = #message (exactly)
* timestamp 1..1 MS
* entry 2..*
* entry.resource 1..1 MS
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Establishment Inactivation Request."
* entry contains Message 1..1 MS and Registrant 1..1 MS and Establishment 1..* MS
* entry[Message].resource only EstablishmentInactivationMessage
* entry[Registrant].resource only IdentifiedEstablishmentRegistrant
* entry[Establishment].resource only IdentifiedEstablishment

Profile: EstablishmentInactivationMessage
Parent: OrganizationMessage
Description: "A profile of an Establishment Inactivation message"
* eventCoding = FHIRSpecificSPLMessageTypes#01
* source.endpoint = "http://example.org/"
* focus ^slicing.discriminator.type = #profile
* focus ^slicing.discriminator.path = "$this.resolve()"
* focus ^slicing.rules = #open
* focus contains Registrant 1..1 MS and Establishment 1..* MS
* focus[Registrant] only Reference(IdentifiedEstablishmentRegistrant)
* focus[Establishment] only Reference(IdentifiedEstablishment)

Profile: IdentifiedEstablishmentRegistrant
Parent: IdentifiedOrganization
Description: "A profile for an identified establishment registrant."
* type = SPLOrganizationTypes#EstablishmentRegistrant

Profile: IdentifiedEstablishment
Parent: IdentifiedOrganization
Description: "A profile for an identified establishment."
* type = SPLOrganizationTypes#Establishment

Profile: EstablishmentAffiliation
Parent: OrganizationAffiliation
Description: "A profile that associates an registrant to the establishments it is registering."
* organization 1..1 MS
* organization only Reference(EstablishmentRegistrantOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(EstablishmentOrganization)
* code 1..1 MS
* code = http://hl7.org/fhir/us/spl/CodeSystem/codesystem-organizationAffiliationCodes#ESTABLISHMENT (exactly)

Profile: EstablishmentRegistrantOrganization
Parent: RegistrantOrganization
Description: "A specialization of the RegistrantOrganization profile that fixes the type to EstablishmentRegistrant"
* type = SPLOrganizationTypes#EstablishmentRegistrant (exactly)

Profile: EstablishmentOrganization
Parent: Organization
Description: "A profile for the data elements required to identify an organization that is registered as an Establishment."
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #closed
* contained ^slicing.description = "The specific resources that are needed for a Establishment organization."
* contained contains BusinessOperation 1..* MS and USAgentAffiliation 0..1 MS and USAgent 0..1 MS and ImporterAffiliation 0..1 MS and Importer 0..1 MS
* contained[BusinessOperation] only EstablishmentBusinessOperation
* contained[USAgentAffiliation] only USAgentAffiliation
* contained[USAgent] only USAgentOrganization
* contained[ImporterAffiliation] only ImporterAffiliation
* contained[Importer] only ImporterOrganization
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Require specific types of identifiers."
* identifier contains DUNSNumber 1..1 MS and FEINumber 0..1 MS
* identifier[DUNSNumber].system = "urn:oid:1.3.6.1.4.1.519.1"
* identifier[FEINumber].system = "urn:oid:2.16.840.1.113883.4.82"
* type = SPLOrganizationTypes#Establishment
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

Profile: ImporterOrganization
Parent: Organization
Description: "A profile for the data elements required for an organization fulfilling the role of an importer for another organization."
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Require specific types of identifiers."
* identifier contains DUNSNumber 1..1 MS
* identifier[DUNSNumber].system = "urn:oid:1.3.6.1.4.1.519.1"
* type = SPLOrganizationTypes#Importer
* name 1..1 MS
* telecom 2..* MS
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.description = "Require a telephone number and an email address."
* telecom contains Phone 1..1 MS and Email 1..1 MS
* telecom[Phone].system = #phone
* telecom[Email].system = #email

Profile: ImporterAffiliation
Parent: OrganizationAffiliation
Description: "A profile that associates an organization to its import organization."
* organization 1..1 MS
* organization only Reference(EstablishmentOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(ImporterOrganization)
* code 1..1 MS
* code = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C73599 "Import"

Profile: EstablishmentBusinessOperation
Parent: HealthcareService
Description: "A profile that associates an establishment to the set of business operations that it can perform."
* providedBy 1..1 MS
* providedBy only Reference(EstablishmentOrganization)
* type 1..1 MS
* type from EstablishmentBusinessOperations (required)
* serviceProvisionCode 1..1 MS
* serviceProvisionCode from BusinessOperationQualifiers (required)

Instance: ExampleEstablishmentRegistrant
InstanceOf: EstablishmentRegistrantOrganization
Description: "An example of a Registrant Organization."
* identifier[DUNSNumber].value = "111111111"
* name = "REGISTRANT SERVICES INC"
* type = SPLOrganizationTypes#EstablishmentRegistrant
* contact.name.text = "Charles Smith"
* contact.telecom[Phone].value = "+703-362-1280"
* contact.telecom[Email].value = "charles@anywhere.com"
* contact.address.line = "123 IVY LANE ROAD"
* contact.address.city = "SMITH FALLS"
* contact.address.state = "MD"
* contact.address.postalCode = "12345"
* contact.address.country = "USA"

Instance: ExampleEstablishmentAffiliation
InstanceOf: EstablishmentAffiliation
Description: "An example of an affiliation between a registrant and an establishment."
* organization = Reference(ExampleEstablishmentRegistrant)
* participatingOrganization = Reference(ExampleEstablishment)

Instance: ExampleEstablishment
InstanceOf: EstablishmentOrganization
Description: "An example of an Establishment Organization."
* contained[BusinessOperation] = ExampleEstablishmentOperation
* contained[BusinessOperation].providedBy.reference = "#"
* identifier[DUNSNumber].value = "222222222"
* name = "EXAMPLE ESTABLISHMENT INC."
* type = SPLOrganizationTypes#Establishment
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

Instance: ExampleEstablishmentOperation
InstanceOf: EstablishmentBusinessOperation
Description: "An example of a Establishment's business operations."
* providedBy = Reference(ExampleEstablishment)
* type = $NCI-T#C43360 "manufacture"
* serviceProvisionCode = $NCI-T#C131708 "manufactures human over-the-counter drug products produced under a monograph"

Instance: ExampleImporter
InstanceOf: ImporterOrganization
Description: "An example of an Importer Organization."
* identifier[DUNSNumber].value = "888888888"
* type = SPLOrganizationTypes#Importer
* name = "Example Importer"
* telecom[Phone].value = "+1-908-999-1212;ext=444"
* telecom[Email].value = "jdoe_2@npoiinc.net"

Instance: ExampleImporterAffiliation
InstanceOf: ImporterAffiliation
Description: "An example of the linkage between an Establishment and an Importer"
* organization = Reference(ExampleEstablishment)
* participatingOrganization = Reference(ExampleImporter)

Instance: SampleEstablishmentRegistrationMessage
InstanceOf: EstablishmentRegistrationMessage
Description: "An example of an Establishment Registration message"
* eventCoding = http://loinc.org#51725-0
* source.endpoint = "http://example.org/"
* focus[0] = Reference(ExampleEstablishmentRegistrant)
* focus[1] = Reference(ExampleEstablishment)

Instance: ExampleEstablishmentRegistration
InstanceOf: EstablishmentRegistrationBundle
Description: "An example of a Bundle containing a set of Establishment Registration resources to register."
* timestamp = "2002-08-11T01:01:01.111+06:00"
* entry[Message].resource = SampleEstablishmentRegistrationMessage
* entry[Message].fullUrl = "http://example.org/MessageHeader/EstablishmentRegistrationMessage"
* entry[Registrant].resource = ExampleEstablishmentRegistrant
* entry[Registrant].fullUrl = "http://example.org/Organization/ExampleEstablishmentRegistrant"
* entry[Establishment].resource = ExampleEstablishment
* entry[Establishment].fullUrl = "http://example.org/Organization/ExampleEstablishment"

Instance: SampleEstablishmentInactivationMessage
InstanceOf: EstablishmentInactivationMessage
Description: "An example of a message header for a Labeler Inactivation"
* eventCoding = FHIRSpecificSPLMessageTypes#01
* source.endpoint = "http://example.org/"
* focus[0] = Reference(SampleIdentifiedEstablishmentRegistrant)
* focus[1] = Reference(SampleIdentifiedEstablishment)

Instance: SampleIdentifiedEstablishmentRegistrant
InstanceOf: IdentifiedEstablishmentRegistrant
Description: "A sample Establishment Registrant organization that just has the DUNS number and name."
* identifier[DUNSNumber].value = "111111111"
* name = "REGISTRANT SERVICES INC"
* type = SPLOrganizationTypes#EstablishmentRegistrant

Instance: SampleIdentifiedEstablishment
InstanceOf: IdentifiedEstablishment
Description: "A sample Establishment organizaiton that just has the DUNS number and name."
* identifier[DUNSNumber].value = "222222222"
* name = "EXAMPLE ESTABLISHMENT INC."
* type = SPLOrganizationTypes#Establishment

Instance: SampleEstablishmentInactivationBundle
InstanceOf: EstablishmentInactivationBundle
Description: "An example of a Bundle containing a set of Establishment resources to inactivate."
* timestamp = "2002-08-11T01:01:01.111+06:00"
* entry[Message].resource = SampleEstablishmentInactivationMessage
* entry[Message].fullUrl = "http://example.org/MessageHeader/SampleEstablishmentInactivationMessage"
* entry[Registrant].resource = SampleIdentifiedEstablishmentRegistrant
* entry[Registrant].fullUrl = "http://example.org/Organization/SampleIdentifiedEstablishmentRegistrant"
* entry[Establishment].resource = SampleIdentifiedEstablishment
* entry[Establishment].fullUrl = "http://example.org/Organization/SampleIdentifiedEstablishment"
