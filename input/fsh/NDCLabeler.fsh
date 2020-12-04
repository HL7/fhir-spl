Profile: LabelerRequestBundle
Parent: Bundle
Description: "A profile that represents the Bundle that contains all of the resources for a Labeler NDC/NHRIC Code Request."

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
* entry ^slicing.description = "The specific bundle entries that are needed for a NDC/NHRIC Code Request."
* entry contains Labeler 1..1 MS and USAgent 0..1 MS and USAgentAffiliation 0..1 MS and BusinessOperation 1..* MS
* entry[Labeler].resource only LabelerOrganization
* entry[USAgent].resource only USAgentOrganization
* entry[USAgentAffiliation].resource only LabelerAffiliation
* entry[BusinessOperation].resource only LabelerBusinessOperation
// * obeys USAgentAndAffiliation

Invariant: USAgentAndAffiliation
Description: "resource of type USAgent exists if and only if resource of type LabelerAffiliation exists"
Severity: #error
Expression: "(Bundle.entry.exists(resource.conformsTo(USAgentOrganization)) implies Bundle.entry.exists(resource.conformsTo(LabelerAffiliation))) and (Bundle.entry.exists(resource.conformsTo(LabelerAffiliation)) implies Bundle.entry.exists(resource.conformsTo(USAgentOrganization)))"

Profile: LabelerOrganization
Parent: Organization
Description: "A profile for the data elements required to request an ID for a NDC/NHRIC Labeler organization."

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Require specific types of identifiers."
* identifier contains DUNSNumber 1..1 MS and NDCCode 0..1 MS
* identifier[DUNSNumber].system = "urn:oid:1.3.6.1.4.1.519.1"
* identifier[NDCCode].system = "urn:oid:2.16.840.1.113883.6.69"
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

Profile: USAgentOrganization
Parent: Organization
Description: "A profile for the data elements required for an organization fulfilling the role of a US Agent for a labeler."

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Require specific types of identifiers."
* identifier contains DUNSNumber 1..1 MS
* identifier[DUNSNumber].system = "http://example.org/ORGANIZATION_DUNS_NUMBER"
* name 1..1 MS
* telecom 2..* MS
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.description = "Require a telephone number and an email address."
* telecom contains Phone 1..1 MS and Email 1..1 MS
* telecom[Phone].system = #phone
* telecom[Email].system = #email

Profile: LabelerAffiliation
Parent: OrganizationAffiliation
Description: "A profile that associates a labeler to its US Agent."

* organization 1..1 MS
* organization only Reference(LabelerOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(USAgentOrganization)
* code 1..1 MS
* code = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C73330 "Foreign Facility's United States Agent" (exactly)

Profile: LabelerBusinessOperation
Parent: HealthcareService
Description: "A profile that associates a labeler to the set of business operations that it can perform."

* providedBy 1..1 MS
* providedBy only Reference(LabelerOrganization)
* type 1..1 MS
* type from BusinessOperations (required)
* serviceProvisionCode 1..1 MS
* serviceProvisionCode from BusinessOperationQualifiers (required)

Instance: NationalPharmaIndia
InstanceOf: LabelerOrganization
Description: "An example of a Labeler Organization."
* id = "a30accef-f437-4136-808c-9ed4ada5fcf8"
* identifier[DUNSNumber].value = "999999999"
* identifier[NDCCode].value = "55555"
* name = "National Pharma of India Inc."
* address.line = "Plot 102 Village Ave"
* address.city = "RangareddyDistrict"
* address.state = "Telangana"
* address.postalCode = "500002"
* address.country = "IND"
* contact.name.text = "Mr. John Doe_1"
* contact.telecom[Phone].value = "+9-140-11112222;ext=3333"
* contact.telecom[Email].value = "jdoe_1@npoiinc.net"
* contact.address.line = "Plot 101 First Street"
* contact.address.city = "RangareddyDistrict"
* contact.address.state = "Telangana"
* contact.address.postalCode = "500001"
* contact.address.country = "IND"

Instance: NationalPharmaIndiaUSAgent
InstanceOf: USAgentOrganization
Description: "An example of a US Agent Organization."
* identifier[DUNSNumber].value = "888888888"
* name = "National Pharma of India Inc. US Agent"
* telecom[Phone].value = "+1-908-999-1212;ext=444"
* telecom[Email].value = "jdoe_2@npoiinc.net"

Instance: NationalPharmaIndiaAffiliation
InstanceOf: LabelerAffiliation
Description: "An example of the linkage between a Labeler and a US Agent"
* organization = Reference(NationalPharmaIndia)
* participatingOrganization = Reference(NationalPharmaIndiaUSAgent)

Instance: NationalPharmaIndiaOperation
InstanceOf: LabelerBusinessOperation
Description: "An example of a Labeler's business operations."
* providedBy = Reference(NationalPharmaIndia)
* type = $NCI-T#C43360 "manufacture"
* serviceProvisionCode = $NCI-T#C106643 "Manufactures human prescription drug products"

Instance: NationalPharmaIndiaRequest
InstanceOf: LabelerRequestBundle
Description: "An example of a Bundle containing a set of Labeler Code Request resources."
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:50606941-3e5d-465c-b4e0-0f5a19eb41d4"
* timestamp = "2002-08-11T01:01:01.111+06:00"
* entry[Labeler].resource = NationalPharmaIndia
* entry[Labeler].fullUrl = "http://example.org/a30accef-f437-4136-808c-9ed4ada5fcf8"
* entry[USAgent].resource = NationalPharmaIndiaUSAgent
* entry[USAgent].fullUrl = "http://example.org/NationalPharmaIndiaUSAgent"
* entry[USAgentAffiliation].resource = NationalPharmaIndiaAffiliation
* entry[USAgentAffiliation].fullUrl = "http://example.org/NationalPharmaIndiaAffiliation"
* entry[BusinessOperation].resource = NationalPharmaIndiaOperation
* entry[BusinessOperation].fullUrl = "http://example.org/NationalPharmaIndiaOperation"
