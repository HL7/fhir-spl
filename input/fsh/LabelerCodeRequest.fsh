Profile: LabelerCodeRequestBundle
Parent: OrganizationBundle
Description: "A profile that represents the Bundle that contains all of the resources for a Labeler NDC Code Request."
* entry 2..2
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a NDC Labeler Code Request."
* entry contains Message 1..1 MS and Labeler 1..1 MS
* entry[Message].resource 1..1
* entry[Message].resource only LabelerCodeRequestMessage
* entry[Labeler].resource 1..1
* entry[Labeler].resource only LabelerOrganization

Profile: LabelerCodeRequestMessage
Parent: OrganizationMessage
Description: "An example of a message header for a Labeler Code Request"
* eventCoding = http://loinc.org#51726-8
* focus only Reference(LabelerOrganization)

Profile: LabelerInactivationBundle
Parent: OrganizationBundle
Description: "A profile that represents the Bundle that contains all of the resources for a Labeler Inactivation."
* entry 2..2
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Labeler Inactivation."
* entry contains Message 1..1 MS and Labeler 1..1 MS
* entry[Message].resource 1..1
* entry[Message].resource only LabelerInactivationMessage
* entry[Labeler].resource 1..1
* entry[Labeler].resource only IdentifiedLabeler

Profile: LabelerInactivationMessage
Parent: OrganizationMessage
Description: "A profile for the Labeler Inactivation Message."
* eventCoding = http://loinc.org#69968-6
* focus only Reference(IdentifiedLabeler)

Profile: IdentifiedLabeler
Parent: IdentifiedOrganization
Description: "A profile for an identified labeler."
* type = OrganizationTypes#Labeler

Profile: LabelerOrganization
Parent: Organization
Description: "A profile for the data elements required to identify a NDC Labeler organization."
* obeys spl-5.1.4.1
* obeys spl-5.1.5.6
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #closed
* contained ^slicing.description = "The specific resources that are needed for a Labeler organization."
* contained contains BusinessOperation 1..* MS and USAgentAffiliation 0..1 MS and USAgent 0..1 MS
* contained[BusinessOperation] only LabelerBusinessOperation
* contained[USAgentAffiliation] only LabelerUSAgentAffiliation
* contained[USAgent] only USAgentOrganization
* insert DUNSNumber
* identifier contains NDCCode 0..1 MS
* identifier[NDCCode].system = "urn:oid:2.16.840.1.113883.6.69"
* identifier[NDCCode] obeys spl-5.1.2.8
* identifier[NDCCode] obeys spl-5.1.2.9
* identifier[NDCCode] obeys spl-5.1.2.10
* type 1..1 MS
* type = OrganizationTypes#Labeler
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

CodeSystem: OrganizationContactType
Id: codesystem-organizationContactType
Title: "Organization Contact Type"
Description: "A code that will distinguish the organizations's address from the contact party information."
* ^caseSensitive = false
* ^experimental = false
* #ADDRESS "Organization Address"

Invariant: spl-5.1.2.8
Description: "NDC Labeler code is 4 or 5 digits"
Expression: "system = 'urn:oid:2.16.840.1.113883.6.69' implies (value.length() = 4 or value.length() = 5)"
Severity: #error

Invariant: spl-5.1.2.9
Description: "If NDC Labeler code is 5 digits, it does not start with a '0'"
Expression: "system = 'urn:oid:2.16.840.1.113883.6.69' implies (value.length() = 4 or value.startsWith('0').not())"
Severity: #error

Invariant: spl-5.1.2.10
Description: "NDC Labeler code is not one of 0000,0001,1500,1800,1900"
Expression: "system = 'urn:oid:2.16.840.1.113883.6.69' implies (value in ('0000'|'0001'|'1500'|'1800'|'1900')).not()"
Severity: #error

Invariant: spl-5.1.4.1
Description: "If country is USA, then US agent is not allowed"
Expression: "contact.where(purpose.coding.where(code = 'ADDRESS').count()=1).address.where(country = 'USA').count() > 0 implies contained.ofType(Organization).where(type.coding.where(code = 'USAgent').count() = 1).count() = 0" 
Severity: #error

Invariant: spl-5.1.5.6
Description: "Each business operation code is mentioned only once."
Expression: "contained.ofType(HealthcareService).type.coding.code.isDistinct()"
Severity: #error

Profile: LabelerBusinessOperation
Parent: HealthcareService
Description: "A profile that associates a Labeler to the set of business operations that it can perform."
* obeys spl-5.1.5.7
* obeys spl-5.1.5.11
* obeys spl-5.1.5.12
* obeys spl-5.1.5.13
* providedBy 1..1 MS
* providedBy only Reference(LabelerOrganization)
* type 1..1 MS
* type from LabelerBusinessOperations (required)
* serviceProvisionCode 0..* MS
* serviceProvisionCode from BusinessOperationQualifiers (required)

Invariant: spl-5.1.5.7
Description: "Qualifier is mandatory unless operation is analysis (C25391) or API manufacture (C82401)"
Expression: "type.coding.where(code = 'C25391').exists() or type.coding.where(code = 'C82401').exists() or serviceProvisionCode.count() > 0"
Severity: #error

Invariant: spl-5.1.5.11
Description: "If operation is C43360, then qualifier is C106643, C131710, C131708, and/or C131709"
Expression: "type.coding.where(code = 'C43360').exists() implies serviceProvisionCode.coding.select(code in ('C106643' | 'C131710' | 'C131708' | 'C131709')).allTrue()"
Severity: #error

Invariant: spl-5.1.5.12
Description: "If operation is C73608, then qualifier is C111077 and/or C111078"
Expression: "type.coding.where(code = 'C73608').exists() implies serviceProvisionCode.coding.select(code in ('C111077' | 'C111078')).allTrue()"
Severity: #error

Invariant: spl-5.1.5.13
Description: "If operation is C112113, then qualifier is C112087, C112091, C112092, C112093, C112094 and/or C112095"
Expression: "type.coding.where(code = 'C112113').exists() implies serviceProvisionCode.coding.select(code in ('C112087' | 'C112091' | 'C112092' | 'C112093' | 'C112094' | 'C112095')).allTrue()"
Severity: #error

Instance: SampleLabelerOrganization
InstanceOf: LabelerOrganization
Description: "An example of a Labeler Organization."
* contained[USAgentAffiliation] = SampleLabelerUSAgentAffiliation
* contained[USAgentAffiliation].organization.reference = "#"
* contained[USAgentAffiliation].participatingOrganization.reference = "#usagent"
* contained[USAgent] = SampleUSAgent
* contained[USAgent].id = "usagent"
* contained[BusinessOperation] = SampleLabelerBusinessOperation
* contained[BusinessOperation].providedBy.reference = "#"
* identifier[DUNSNumber].value = "999999999"
* identifier[NDCCode].value = "55555"
* type = OrganizationTypes#Labeler
* name = "National Pharma of India Inc."
* contact[OrgContact].name.text = "Charles Smith"
* contact[OrgContact].telecom[Phone].value = "+011-703-362-1280"
* contact[OrgContact].telecom[Email].value = "charles@anywhere.com"
* contact[OrgContact].address.line = "123 IVY LANE ROAD"
* contact[OrgContact].address.city = "SMITH FALLS"
* contact[OrgContact].address.state = "MD"
* contact[OrgContact].address.postalCode = "12345"
* contact[OrgContact].address.country = "USA"
* contact[OrgAddress].address.line = "123 JOHN STREET"
* contact[OrgAddress].address.city = "EDMONTON"
* contact[OrgAddress].address.state = "AB"
* contact[OrgAddress].address.postalCode = "T5E3B6"
* contact[OrgAddress].address.country = "CAN"

Instance: SampleUSAgent
InstanceOf: USAgentOrganization
Description: "An example of a US Agent Organization."
* identifier[DUNSNumber].value = "888888888"
* type = OrganizationTypes#USAgent
* name = "National Pharma of India Inc. US Agent"
* contact.telecom[Phone].value = "+1-908-999-1212"
* contact.telecom[Email].value = "jdoe_2@npoiinc.net"

Instance: SampleLabelerUSAgentAffiliation
InstanceOf: LabelerUSAgentAffiliation
Description: "An example of the linkage between a Labeler and a US Agent"
* organization = Reference(SampleLabelerOrganization)
* participatingOrganization = Reference(SampleUSAgent)

Instance: SampleLabelerBusinessOperation
InstanceOf: LabelerBusinessOperation
Description: "An example of a Labeler's business operations."
* providedBy = Reference(SampleLabelerOrganization)
* type = $NCI-T#C43360 "manufacture"
* serviceProvisionCode = $NCI-T#C106643 "Manufactures human prescription drug products"

Instance: SampleLabelerCodeRequestMessage
InstanceOf: LabelerCodeRequestMessage
Description: "An example of a message header for a Labeler Code Request"
* eventCoding = http://loinc.org#51726-8 "NDC labeler code request"
* source.endpointUrl = "http://example.org/"
* focus[0] = Reference(SampleLabelerOrganization)

Instance: SampleLabelerCodeRequestBundle
InstanceOf: LabelerCodeRequestBundle
Description: "An example of a Bundle containing a Labeler Code Request resource to register."
* timestamp = "2025-08-11T01:01:01.111+06:00"
* entry[0]
  * insert bundleEntry(MessageHeader, SampleLabelerCodeRequestMessage)
* entry[+]
  * insert bundleEntry(Organization, SampleLabelerOrganization)

Instance: SampleLabelerInactivationMessage
InstanceOf: LabelerInactivationMessage
Description: "An example of a message header for a Labeler Inactivation"
* eventCoding = http://loinc.org#69968-6 "NDC labeler code inactivation"
* source.endpointUrl = "http://example.org/"
* focus[0] = Reference(IdentifiedLabelerOrganization)

Instance: IdentifiedLabelerOrganization
InstanceOf: IdentifiedLabeler
Description: "A sample Labeler organizaiton that just has the DUNS number and name."
* identifier[DUNSNumber].value = "999999999"
* type = OrganizationTypes#Labeler
* name = "National Pharma of India Inc."

Instance: SampleLabelerInactivationBundle
InstanceOf: LabelerInactivationBundle
Description: "An example of a Bundle containing a Labeler Code Request resource to inactivate."
* timestamp = "2025-08-11T01:01:01.111+06:00"
* entry[0]
  * insert bundleEntry(MessageHeader, SampleLabelerInactivationMessage)
* entry[+]
  * insert bundleEntry(Organization, IdentifiedLabelerOrganization)
