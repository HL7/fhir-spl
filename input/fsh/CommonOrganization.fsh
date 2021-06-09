Profile: OutOfBusinessBundle
Parent: Bundle
Description: "A profile that represents the Bundle that contains all of the resources for an Out of Business Notifcation."
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
* entry ^slicing.description = "The specific bundle entries that are needed for an Out of Business Notification."
* entry contains Message 1..1 MS and Registrant 1..1 MS
* entry[Message].resource 1..1
* entry[Message].resource only OutOfBusinessMessage
* entry[Registrant].resource 1..1
* entry[Registrant].resource only IdentifiedOrganization

Profile: OutOfBusinessMessage
Parent: OrganizationMessage
Description: "A profile of an Establishment Registration message"
* eventCoding = $LOINC#53411-5
* focus ^slicing.discriminator.type = #profile
* focus ^slicing.discriminator.path = "$this.resolve()"
* focus ^slicing.rules = #open
* focus contains Registrant 1..1 MS
* focus[Registrant] only Reference(IdentifiedOrganization)

Profile: OrganizationMessage
Parent: MessageHeader
Description: "A profile that indicates what type of request is being made."
* event[x] MS
* event[x] only Coding
* eventCoding from SPLFHIRMessageTypes (required)
* eventCoding.display 1..1 MS
* source MS
* source.endpoint MS
* focus 1..* MS
* focus only Reference(IdentifiedOrganization or RegistrantOrganization or LabelerOrganization or EstablishmentOrganization or GDUFAFacilityOrganization)

Profile: IdentifiedOrganization
Parent: Organization
Description: "A profile on Organization that specifies a name and an identifier used to identify rather than specify the organization."
* ^abstract = true
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Require specific types of identifiers."
* identifier contains DUNSNumber 1..1 MS
* identifier[DUNSNumber].system = "urn:oid:1.3.6.1.4.1.519.1"
* identifier[DUNSNumber] obeys spl-2.1.5.2
* type 1..1 MS
* type from TopLevelOrganizationTypes (required)
* name 1..1 MS

Profile: RegistrantOrganization
Parent: Organization
Description: "A profile for the data elements required to identify an organization that registers organizations and facilities."
* ^abstract = true
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Require specific types of identifiers."
* identifier contains DUNSNumber 1..1 MS
* identifier[DUNSNumber].system = "urn:oid:1.3.6.1.4.1.519.1"
* identifier[DUNSNumber] obeys spl-2.1.5.2
* type 1..1 MS
* type from SPLRegistrantOrganizationTypes (required)
* name 1..1 MS
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
Description: "A profile for the data elements required for an organization fulfilling the role of a US Agent for another organization."
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Require specific types of identifiers."
* identifier contains DUNSNumber 1..1 MS
* identifier[DUNSNumber].system = "urn:oid:1.3.6.1.4.1.519.1"
* identifier[DUNSNumber] obeys spl-2.1.5.2
* type 1..1 MS
* type = SPLOrganizationTypes#USAgent
* name 1..1 MS
* telecom 2..* MS
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.description = "Require a telephone number and an email address."
* telecom contains Phone 1..1 MS and Email 1..1 MS
* telecom[Phone].system = #phone
* telecom[Email].system = #email

Profile: USAgentAffiliation
Parent: OrganizationAffiliation
Description: "A profile that associates an organization to its US Agent."
* organization 1..1 MS
* organization only Reference(LabelerOrganization or EstablishmentOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(USAgentOrganization)
* code 1..1 MS
* code = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C73330 "Foreign Facility's United States Agent" (exactly)

Instance: SamplOutOfBusinessMessage
InstanceOf: OutOfBusinessMessage
Description: "An example of a message header for an Out of Business notification"
* eventCoding = $LOINC#53411-5 "FDA product label Out of business notification"
* source.endpoint = "http://example.org/"
* focus[0] = Reference(SampleIdentifiedEstablishmentRegistrant)

Instance: SampleOutOfBusinessNotificationBundle
InstanceOf: OutOfBusinessBundle
Description: "An example of a Bundle containing a set of Establishment resources to inactivate."
* timestamp = "2002-08-11T01:01:01.111+06:00"
* entry[Message].resource = SamplOutOfBusinessMessage
* entry[Message].fullUrl = "http://example.org/MessageHeader/SamplOutOfBusinessMessage"
* entry[Registrant].resource = SampleIdentifiedEstablishmentRegistrant
* entry[Registrant].fullUrl = "http://example.org/Organization/SampleIdentifiedEstablishmentRegistrant"
