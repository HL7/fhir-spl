Profile: EstablishmentRequestBundle
Parent: Bundle
Description: "A profile that represents the Bundle that contains all of the resources for an Estabishment Registration Request."
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
* entry ^slicing.description = "The specific bundle entries that are needed for a Establishment Registration Request."
* entry contains Registrant 1..1 MS and Establishment 0..* MS and EstablishmentAffiliation 0..* MS and SourceSPL 0..1 MS
* entry[Registrant].resource 1..1
* entry[Registrant].resource only RegistrantOrganization
* entry[Registrant].request.method from RegistrantRequestMethod (required)
* entry[Establishment].resource 1..1
* entry[Establishment].resource only EstablishmentOrganization
* entry[Establishment].request.method from EstablishmentRequestMethod (required)
* entry[EstablishmentAffiliation].resource 1..1
* entry[EstablishmentAffiliation].resource only EstablishmentAffiliation
* entry[EstablishmentAffiliation].request.method from RegistrantRequestMethod (required)
* entry[SourceSPL].resource 1..1
* entry[SourceSPL].resource only SPLDocumentReference
* entry[SourceSPL].request.method = http://hl7.org/fhir/http-verb#POST (exactly)

ValueSet: RegistrantRequestMethod
Id: valueset-registrantRequestMethod
Description: "Only PUTs and POSTs are allowed when submitting a Registrant Organization."
* http://hl7.org/fhir/http-verb#POST
* http://hl7.org/fhir/http-verb#PUT

ValueSet: EstablishmentRequestMethod
Id: valueset-establishmentRequestMethod
Description: "Only PUTs and POSTs are allowed when submitting a Establishment Organization."
* http://hl7.org/fhir/http-verb#POST
* http://hl7.org/fhir/http-verb#PUT
* http://hl7.org/fhir/http-verb#DELETE

Profile: EstablishmentAffiliation
Parent: OrganizationAffiliation
Description: "A profile that associates an registrant to the establishments it is registering."
* organization 1..1 MS
* organization only Reference(RegistrantOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(EstablishmentOrganization)
* code 1..1 MS
* code = http://hl7.org/fhir/us/spl/CodeSystem/codesystem-organizationAffiliationCodes#ESTABLISHMENT (exactly)

Profile: EstablishmentOrganization
Parent: Organization
Description: "A profile for the data elements required to identify an organization that is registered as an Establishment."
* contained ^slicing.discriminator.type = #type
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

Instance: DenmarServicesRegistrant
InstanceOf: RegistrantOrganization
Description: "An example of a Registrant Organization."
* identifier[DUNSNumber].value = "100682066"
* name = "DENMAR SERVICES INC"
* type = SPLOrganizationTypes#Registrant
* contact.name.text = "Charles Smith"
* contact.telecom[Phone].value = "+703-362-1280"
* contact.telecom[Email].value = "charles@anywhere.com"
* contact.address.line = "605 SW B AVE STE 2"
* contact.address.city = "LAWTON"
* contact.address.state = "OK"
* contact.address.postalCode = "73501"
* contact.address.country = "USA"

Instance: EditorialExpertsEstablishmentAffiliation
InstanceOf: EstablishmentAffiliation
Description: "An example of an affiliation between a registrant and an establishment."
* organization = Reference(DenmarServicesRegistrant)
* participatingOrganization = Reference(EditorialExpertsEstablishment)

Instance: EditorialExpertsEstablishment
InstanceOf: EstablishmentOrganization
Description: "An example of an Establishment Organization."
* contained[BusinessOperation] = EditorialExpertsOperation
* contained[BusinessOperation].providedBy.reference = "#"
* identifier[DUNSNumber].value = "084919489"
* type = SPLOrganizationTypes#Establishment
* name = "EDITORIAL EXPERTS, INC."
* address.line = "6301 IVY LN STE 250"
* address.city = "GREENBELT"
* address.state = "MD"
* address.postalCode = "20770"
* address.country = "USA"
* contact.name.text = "Charles Smith"
* contact.telecom[Phone].value = "+703-362-1280"
* contact.telecom[Email].value = "charles@anywhere.com"
* contact.address.line = "605 SW B AVE STE 2"
* contact.address.city = "LAWTON"
* contact.address.state = "OK"
* contact.address.postalCode = "73501"
* contact.address.country = "USA"

Instance: EditorialExpertsOperation
InstanceOf: EstablishmentBusinessOperation
Description: "An example of a Establishment's business operations."
* providedBy = Reference(EditorialExpertsEstablishment)
* type = $NCI-T#C43360 "manufacture"
* serviceProvisionCode = $NCI-T#C131708 "manufactures human over-the-counter drug products produced under a monograph"

Instance: DenmarServicesRegistration
InstanceOf: EstablishmentRequestBundle
Description: "An example of a Bundle containing a set of Establishment Registration resources."
* timestamp = "2002-08-11T01:01:01.111+06:00"
* entry[Registrant].resource = DenmarServicesRegistrant
* entry[Registrant].request.method = #POST
* entry[Registrant].request.url = "Organization"
* entry[Registrant].fullUrl = "http://example.org/Organization/DenmarServicesRegistrant"
* entry[EstablishmentAffiliation].resource = EditorialExpertsEstablishmentAffiliation
* entry[EstablishmentAffiliation].request.method = #POST
* entry[EstablishmentAffiliation].request.url = "OrganizationAffiliation"
* entry[EstablishmentAffiliation].fullUrl = "http://example.org/OrganizationAffiliation/EditorialExpertsEstablishmentAffiliation"
* entry[Establishment].resource = EditorialExpertsEstablishment
* entry[Establishment].request.method = #POST
* entry[Establishment].request.url = "Organization"
* entry[Establishment].fullUrl = "http://example.org/Organization/EditorialExpertsEstablishment"
* entry[3].request.method = #DELETE
* entry[3].request.url = "Organization?identifier=urn:oid:1.3.6.1.4.1.519.1|112343211"
