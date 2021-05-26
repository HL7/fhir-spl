Profile: LabelerCodeRequestBundle
Parent: Bundle
Description: "A profile that represents the Bundle that contains all of the resources for a Labeler NDC Code Request."
* type 1..1 MS
* type = #message (exactly)
* timestamp 1..1 MS
* entry 2..2
* entry.resource 1..1 MS
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
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
Parent: Bundle
Description: "A profile that represents the Bundle that contains all of the resources for a Labeler Inactivation."
* type 1..1 MS
* type = #message (exactly)
* timestamp 1..1 MS
* entry 2..2
* entry.resource 1..1 MS
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
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
* focus only Reference(IdentifiedOrganization)

Profile: IdentifiedLabeler
Parent: IdentifiedOrganization
Description: "A profile for an identified labeler."
* type = SPLOrganizationTypes#Labeler

Profile: LabelerOrganization
Parent: Organization
Description: "A profile for the data elements required to identify a NDC Labeler organization."
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #closed
* contained ^slicing.description = "The specific resources that are needed for a Labeler organization."
* contained contains BusinessOperation 1..* MS and USAgentAffiliation 0..1 MS and USAgent 0..1 MS
* contained[BusinessOperation] only LabelerBusinessOperation
* contained[USAgentAffiliation] only USAgentAffiliation
* contained[USAgent] only USAgentOrganization
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Require specific types of identifiers."
* identifier contains DUNSNumber 1..1 MS and NDCCode 0..1 MS
* identifier[DUNSNumber].system = "urn:oid:1.3.6.1.4.1.519.1"
* identifier[NDCCode].system = "urn:oid:2.16.840.1.113883.6.69"
* type 1..1 MS
* type = SPLOrganizationTypes#Labeler
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

Profile: LabelerBusinessOperation
Parent: HealthcareService
Description: "A profile that associates a Labeler to the set of business operations that it can perform."
* providedBy 1..1 MS
* providedBy only Reference(LabelerOrganization)
* type 1..1 MS
* type from LabelerBusinessOperations (required)
* serviceProvisionCode 1..1 MS
* serviceProvisionCode from BusinessOperationQualifiers (required)

Instance: NationalPharmaIndia
InstanceOf: LabelerOrganization
Description: "An example of a Labeler Organization."
* contained[USAgentAffiliation] = NationalPharmaIndiaAffiliation
* contained[USAgentAffiliation].organization.reference = "#"
* contained[USAgentAffiliation].participatingOrganization.reference = "#usagent"
* contained[USAgent] = NationalPharmaIndiaUSAgent
* contained[USAgent].id = "usagent"
* contained[BusinessOperation] = NationalPharmaIndiaOperation
* contained[BusinessOperation].providedBy.reference = "#"
* identifier[DUNSNumber].value = "999999999"
* identifier[NDCCode].value = "55555"
* type = SPLOrganizationTypes#Labeler
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
* type = SPLOrganizationTypes#USAgent
* name = "National Pharma of India Inc. US Agent"
* telecom[Phone].value = "+1-908-999-1212;ext=444"
* telecom[Email].value = "jdoe_2@npoiinc.net"

Instance: NationalPharmaIndiaAffiliation
InstanceOf: USAgentAffiliation
Description: "An example of the linkage between a Labeler and a US Agent"
* organization = Reference(NationalPharmaIndia)
* participatingOrganization = Reference(NationalPharmaIndiaUSAgent)

Instance: NationalPharmaIndiaOperation
InstanceOf: LabelerBusinessOperation
Description: "An example of a Labeler's business operations."
* providedBy = Reference(NationalPharmaIndia)
* type = $NCI-T#C43360 "manufacture"
* serviceProvisionCode = $NCI-T#C106643 "Manufactures human prescription drug products"

Instance: SampleLabelerCodeRequestMessage
InstanceOf: LabelerCodeRequestMessage
Description: "An example of a message header for a Labeler Code Request"
* eventCoding = http://loinc.org#51726-8 "FDA product label NDC labeler code request"
* source.endpoint = "http://example.org/"
* focus[0] = Reference(NationalPharmaIndia)

Instance: SampleLabelerCodeRequestBundle
InstanceOf: LabelerCodeRequestBundle
Description: "An example of a Bundle containing a Labeler Code Request resource to register."
* timestamp = "2002-08-11T01:01:01.111+06:00"
* entry[Message].resource = SampleLabelerCodeRequestMessage
* entry[Message].fullUrl = "http://example.org/MessageHeader/LabelerCodeRequestMessage"
* entry[Labeler].resource = NationalPharmaIndia
* entry[Labeler].fullUrl = "http://example.org/Organization/NationalPharmaIndia"

Instance: SampleLabelerInactivationMessage
InstanceOf: LabelerInactivationMessage
Description: "An example of a message header for a Labeler Inactivation"
* eventCoding = http://loinc.org#69968-6 "FDA product label NDC labeler code inactivation"
* source.endpoint = "http://example.org/"
* focus[0] = Reference(IdentifiedLabelerOrganization)

Instance: IdentifiedLabelerOrganization
InstanceOf: IdentifiedLabeler
Description: "A sample Labeler organizaiton that just has the DUNS number and name."
* identifier[DUNSNumber].value = "999999999"
* type = SPLOrganizationTypes#Labeler
* name = "National Pharma of India Inc."

Instance: SampleLabelerInactivationBundle
InstanceOf: LabelerInactivationBundle
Description: "An example of a Bundle containing a Labeler Code Request resource to inactivate."
* timestamp = "2002-08-11T01:01:01.111+06:00"
* entry[Message].resource = SampleLabelerInactivationMessage
* entry[Message].fullUrl = "http://example.org/MessageHeader/SampleLabelerInactivationMessage"
* entry[Labeler].resource = IdentifiedLabelerOrganization
* entry[Labeler].fullUrl = "http://example.org/Organization/IdentifiedLabelerOrganization"
