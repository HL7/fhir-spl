Profile: EstablishmentRegistrationBundle
Parent: OrganizationBundle
Description: "A profile that represents the Bundle that contains all of the resources for an Estabishment Registration Request."
* obeys spl-6.1.3.4-13.1.3.3
* entry 3..*
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
* focus ^slicing.discriminator.type = #profile
* focus ^slicing.discriminator.path = "$this.resolve()"
* focus ^slicing.rules = #open
* focus contains Registrant 1..1 MS and Establishment 1..* MS
* focus[Registrant] only Reference(EstablishmentRegistrantOrganization)
* focus[Establishment] only Reference(EstablishmentOrganization)

Profile: EstablishmentInactivationBundle
Parent: OrganizationBundle
Description: "A profile that represents the Bundle that contains all of the resources for an Establishment Inactivation Request."
* entry 2..*
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
* focus ^slicing.discriminator.type = #profile
* focus ^slicing.discriminator.path = "$this.resolve()"
* focus ^slicing.rules = #open
* focus contains Registrant 1..1 MS and Establishment 1..* MS
* focus[Registrant] only Reference(IdentifiedEstablishmentRegistrant)
* focus[Establishment] only Reference(IdentifiedEstablishment)

Profile: IdentifiedEstablishmentRegistrant
Parent: IdentifiedOrganization
Description: "A profile for an identified establishment registrant."
* type = OrganizationTypes#EstablishmentRegistrant

Profile: IdentifiedEstablishment
Parent: IdentifiedOrganization
Description: "A profile for an identified establishment."
* type = OrganizationTypes#Establishment

Profile: EstablishmentAffiliation
Parent: OrganizationAffiliation
Description: "A profile that associates an registrant to the establishments it is registering."
* organization 1..1 MS
* organization only Reference(EstablishmentRegistrantOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(EstablishmentOrganization)
* code 1..1 MS
* code = OrganizationAffiliationCodes#ESTABLISHMENT

Profile: EstablishmentRegistrantOrganization
Parent: RegistrantOrganization
Description: "A specialization of the RegistrantOrganization profile that fixes the type to EstablishmentRegistrant"
* type = OrganizationTypes#EstablishmentRegistrant

Profile: EstablishmentOrganization
Parent: Organization
Description: "A profile for the data elements required to identify an organization that is registered as an Establishment."
* obeys spl-6.1.4.1
* obeys spl-6.1.4.3
* obeys spl-6.1.5.3
* obeys spl-5.1.5.6
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #closed
* contained ^slicing.description = "The specific resources that are needed for a Establishment organization."
* contained contains BusinessOperation 1..* MS and USAgentAffiliation 0..1 MS and USAgent 0..1 MS and ImporterAffiliation 0..* MS and Importer 0..* MS
* contained[BusinessOperation] only EstablishmentBusinessOperation
* contained[USAgentAffiliation] only EstablishmentUSAgentAffiliation
* contained[USAgent] only USAgentOrganization
* contained[ImporterAffiliation] only ImporterAffiliation
* contained[Importer] only ImporterOrganization
* insert DUNSNumber
* identifier contains FEINumber 0..1 MS
* insert FEINumberSlice
* type 1..1 MS
* type = OrganizationTypes#Establishment
* name 1..1 MS
* contact 2..2 MS
* contact ^slicing.discriminator.type = #value
* contact ^slicing.discriminator.path = "purpose"
* contact ^slicing.rules = #closed
* contact ^slicing.description = "The different contact information that are included for a Labeler organization."
* contact contains OrgAddress 1..1 MS and OrgContact 1..1 MS
* contact[OrgContact]
  * purpose 1..1 MS
  * purpose = http://terminology.hl7.org/CodeSystem/contactentity-type#ADMIN
  * name 1..1 MS
  * address 1..1 MS
  * address only SPLAddress
  * insert PhoneNumberAndEmail
* contact[OrgAddress]
  * purpose 1..1 MS
  * purpose = OrganizationContactType#ADDRESS
  * address 1..1 MS
  * name 0..0

Invariant: spl-6.1.3.7
Description: "FEI number is 7 or 10 digits"
Expression: "system = 'urn:oid:2.16.840.1.113883.4.82' implies (value.length() = 7 or value.length() = 10)"
Severity: #error

Invariant: spl-6.1.4.3
Description: "If country is USA, then US agent is not allowed."
Expression: "contact.where(purpose.coding.where(code = 'ADDRESS').count()=1).address.where(country = 'USA').count() > 0 implies contained.ofType(Organization).where(type.coding.where(code = 'USAgent').count() = 1).count() = 0" 
Severity: #error

Invariant: spl-6.1.4.1
Description: "If country is not USA, then US agent is mandatory."
Expression: "contact.where(purpose.coding.where(code = 'ADDRESS').count()=1).address.where(country = 'USA').count() = 0 implies contained.ofType(Organization).where(type.coding.where(code = 'USAgent').count() = 1).count() = 1" 
Severity: #error

Invariant: spl-6.1.5.3
Description: "If country is USA, then import business is not allowed."
Expression: "contact.where(purpose.coding.where(code = 'ADDRESS').count()=1).address.where(country = 'USA').count() > 0 implies contained.ofType(Organization).where(type.coding.where(code = 'Importer').count() = 1).count() = 0" 
Severity: #error

Profile: ImporterOrganization
Parent: Organization
Description: "A profile for the data elements required for an organization fulfilling the role of an importer for another organization."
* insert DUNSNumber
* type 1..1 MS
* type = OrganizationTypes#Importer
* name 1..1 MS
* contact 1..1 MS
  * insert PhoneNumberAndEmail

Profile: ImporterAffiliation
Parent: OrganizationAffiliation
Description: "A profile that associates an organization to its import organization."
* organization 1..1 MS
* organization only Reference(EstablishmentOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(ImporterOrganization)
* code 1..1 MS
* code = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C73599

Profile: EstablishmentBusinessOperation
Parent: HealthcareService
Description: "A profile that associates an establishment to the set of business operations that it can perform."
* obeys spl-6.1.6.8
* obeys spl-6.1.7.1-5-6-7
* obeys spl-6.1.7.9
* obeys spl-6.1.7.10
* obeys spl-6.1.7.11
* providedBy 1..1 MS
* providedBy only Reference(EstablishmentOrganization)
* type 1..1 MS
* type from EstablishmentBusinessOperations (required)
* serviceProvisionCode 0..* MS
* serviceProvisionCode from BusinessOperationQualifiers (required)

Invariant: spl-6.1.6.8
Description: "If operation is C125710, then qualifier is C126091"
Expression: "type.coding.where(code = 'C125710').exists() implies serviceProvisionCode.coding.select(code = 'C126091').allTrue()"
Severity: #error

Invariant: spl-6.1.7.1-5-6-7
Description: "If operation is C112113, then specific qualifiers need to exist"
Expression: "type.coding.where(code = 'C112113').exists() implies 
	(serviceProvisionCode.coding.where(code = 'C112087') xor serviceProvisionCode.coding.where(code = 'C112091')) and
	(serviceProvisionCode.coding.where(code = 'C112092') xor serviceProvisionCode.coding.where(code = 'C112093'))"
Severity: #error

Invariant: spl-6.1.7.9
Description: "If qualifier is C112093, then C112094 and C112095 should not be included"
Expression: "serviceProvisionCode.coding.where(code = 'C112093').exists() implies serviceProvisionCode.coding.where(code in ('C112094'|'C112095')).count() = 0"
Severity: #error

Invariant: spl-6.1.7.10
Description: "If qualifier is a compounding qualifier, the operation is C112113"
Expression: "serviceProvisionCode.coding.where(code in ('C112087'|'C112091'|'C112092'|'C112093'|'C112094'|'C112095')).exists() implies type.coding.where(code = 'C112113').count() = 1"
Severity: #error

Invariant: spl-6.1.7.11
Description: "There are one or more qualifiers unless the operation is C25391, C82401, or C84635"
Expression: "type.coding.where(code in ('C25391'|'C82401'|'C84635')).count() = 1 xor serviceProvisionCode.count() > 0"
Severity: #error

Instance: ExampleEstablishmentRegistrant
InstanceOf: EstablishmentRegistrantOrganization
Description: "An example of a Registrant Organization."
* identifier[DUNSNumber].value = "111111111"
* name = "REGISTRANT SERVICES INC"
* type = OrganizationTypes#EstablishmentRegistrant
* contact.name.text = "Charles Smith"
* contact.telecom[Phone].value = "+1-703-362-1280;ext=1234"
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
* contained[ImporterAffiliation] = ExampleImporterAffiliation
* contained[ImporterAffiliation].organization.reference = "#"
* contained[ImporterAffiliation].participatingOrganization.reference = "#ExampleImporter"
* contained[Importer] = ExampleImporter
* contained[USAgentAffiliation] = ExampleEstablishmentUSAgentAffiliation
* contained[USAgentAffiliation].organization.reference = "#"
* contained[USAgentAffiliation].participatingOrganization.reference = "#SampleUSAgent"
* contained[USAgent] = SampleUSAgent
* identifier[DUNSNumber].value = "222222222"
* name = "EXAMPLE ESTABLISHMENT INC."
* type = OrganizationTypes#Establishment
* contact[OrgContact].name.text = "Charles Smith"
* contact[OrgContact].telecom[Phone].value = "+011-703-362-1280"
* contact[OrgContact].telecom[Email].value = "charles@anywhere.com"
* contact[OrgContact].address.line = "123 IVY LANE ROAD"
* contact[OrgContact].address.city = "SMITH FALLS"
* contact[OrgContact].address.state = "MD"
* contact[OrgContact].address.postalCode = "12345"
* contact[OrgContact].address.country = "USA"
* contact[OrgAddress].address.line = "123 IVY LANE ROAD"
* contact[OrgAddress].address.city = "SMITH FALLS"
* contact[OrgAddress].address.state = "ONT"
* contact[OrgAddress].address.postalCode = "12345"
* contact[OrgAddress].address.country = "CAN"

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
* type = OrganizationTypes#Importer
* name = "Example Importer"
* contact.telecom[Phone].value = "+1-908-999-1212;ext=444"
* contact.telecom[Email].value = "jdoe_2@npoiinc.net"

Instance: ExampleImporterAffiliation
InstanceOf: ImporterAffiliation
Description: "An example of the linkage between an Establishment and an Importer"
* organization = Reference(ExampleEstablishment)
* participatingOrganization = Reference(ExampleImporter)

Instance: ExampleEstablishmentUSAgentAffiliation
InstanceOf: EstablishmentUSAgentAffiliation
Description: "An example of the linkage between an Establishment and a US Agent"
* organization = Reference(ExampleEstablishment)
* participatingOrganization = Reference(SampleUSAgent)

Instance: SampleEstablishmentRegistrationMessage
InstanceOf: EstablishmentRegistrationMessage
Description: "An example of an Establishment Registration message"
* eventCoding = http://loinc.org#51725-0  "Establishment registration"
* source.endpointUrl = "http://source.com/endpoint/"
* focus[0] = Reference(ExampleEstablishmentRegistrant)
* focus[1] = Reference(ExampleEstablishment)

Instance: ExampleEstablishmentRegistration
InstanceOf: EstablishmentRegistrationBundle
Description: "An example of a Bundle containing a set of Establishment Registration resources to register."
* timestamp = "2025-08-11T01:01:01.111+06:00"
* entry[Message].resource = SampleEstablishmentRegistrationMessage
* entry[Message].fullUrl = "http://example.org/MessageHeader/SampleEstablishmentRegistrationMessage"
* entry[Registrant].resource = ExampleEstablishmentRegistrant
* entry[Registrant].fullUrl = "http://example.org/Organization/ExampleEstablishmentRegistrant"
* entry[Establishment].resource = ExampleEstablishment
* entry[Establishment].fullUrl = "http://example.org/Organization/ExampleEstablishment"

Instance: SampleEstablishmentInactivationMessage
InstanceOf: EstablishmentInactivationMessage
Description: "An example of a message header for a Establishment Inactivation"
* eventCoding = FHIRSpecificSPLMessageTypes#01 "Establishment inactivation"
* source.endpointUrl = "http://example.org/"
* focus[0] = Reference(SampleIdentifiedEstablishmentRegistrant)
* focus[1] = Reference(SampleIdentifiedEstablishment)

Instance: SampleIdentifiedEstablishmentRegistrant
InstanceOf: IdentifiedEstablishmentRegistrant
Description: "A sample Establishment Registrant organization that just has the DUNS number and name."
* identifier[DUNSNumber].value = "111111111"
* name = "REGISTRANT SERVICES INC"
* type = OrganizationTypes#EstablishmentRegistrant

Instance: SampleIdentifiedEstablishment
InstanceOf: IdentifiedEstablishment
Description: "A sample Establishment organizaiton that just has the DUNS number and name."
* identifier[DUNSNumber].value = "222222222"
* name = "EXAMPLE ESTABLISHMENT INC."
* type = OrganizationTypes#Establishment

Instance: SampleEstablishmentInactivationBundle
InstanceOf: EstablishmentInactivationBundle
Description: "An example of a Bundle containing a set of Establishment resources to inactivate."
* timestamp = "2025-08-11T01:01:01.111+06:00"
* entry[Message].resource = SampleEstablishmentInactivationMessage
* entry[Message].fullUrl = "http://example.org/MessageHeader/SampleEstablishmentInactivationMessage"
* entry[Registrant].resource = SampleIdentifiedEstablishmentRegistrant
* entry[Registrant].fullUrl = "http://example.org/Organization/SampleIdentifiedEstablishmentRegistrant"
* entry[Establishment].resource = SampleIdentifiedEstablishment
* entry[Establishment].fullUrl = "http://example.org/Organization/SampleIdentifiedEstablishment"


