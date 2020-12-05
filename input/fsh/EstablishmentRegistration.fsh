Profile: EstablishmentRequestBundle
Parent: Bundle
Description: "A profile that represents the Bundle that contains all of the resources for an Estabishment Registration Request."
* identifier 1..1 MS
* type 1..1 MS
* type = #collection (exactly)
* timestamp 1..1 MS
* entry 1..*
* entry.fullUrl 1..1 MS
* entry.resource 1..1 MS
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Establishment Registration Request."
* entry contains Registrant 1..1 MS and Establishment 1..* MS and EstablishmentAffiliation 1..* MS and USAgent 0..* MS and USAgentAffiliation 0..* MS and Importer 0..* MS and ImporterAffiliation 0..* MS and BusinessOperation 1..* MS
* entry[Registrant].resource only RegistrantOrganization
* entry[Establishment].resource only EstablishmentOrganization
* entry[EstablishmentAffiliation].resource only EstablishmentAffiliation
* entry[USAgent].resource only USAgentOrganization
* entry[USAgentAffiliation].resource only USAgentAffiliation
* entry[Importer].resource only ImporterOrganization
* entry[ImporterAffiliation].resource only ImporterAffiliation
* entry[BusinessOperation].resource only EstablishmentBusinessOperation

Profile: EstablishmentOrganization
Parent: Organization
Description: "A profile for the data elements required to identify an organization that is registered as an Establishment."
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Require specific types of identifiers."
* identifier contains DUNSNumber 1..1 MS and FEINumber 0..1 MS
* identifier[DUNSNumber].system = "urn:oid:1.3.6.1.4.1.519.1"
* identifier[FEINumber].system = "urn:oid:2.16.840.1.113883.4.82"
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

Profile: EstablishmentAffiliation
Parent: OrganizationAffiliation
Description: "A profile that associates an establishment to its registrant."
* organization 1..1 MS
* organization only Reference(RegistrantOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(EstablishmentOrganization)
* code 1..1 MS
* code = http://hl7.org/fhir/us/spl/CodeSystem/codesystem-organizationAffiliationCodes#ESTABLISHMENT (exactly)

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
* code = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C73599 "Import" (exactly)

Profile: EstablishmentBusinessOperation
Parent: HealthcareService
Description: "A profile that associates an establishment to the set of business operations that it can perform."
* providedBy 1..1 MS
* providedBy only Reference(EstablishmentOrganization)
* type 1..1 MS
* type from EstablishmentBusinessOperations (required)
* serviceProvisionCode 1..1 MS
* serviceProvisionCode from BusinessOperationQualifiers (required)
