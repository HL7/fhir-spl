Profile: OutOfBusinessBundle
Parent: OrganizationBundle
Description: "A profile that represents the Bundle that contains all of the resources for an Out of Business Notifcation."
* entry 2..2
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

Instance: SamplOutOfBusinessMessage
InstanceOf: OutOfBusinessMessage
Description: "An example of a message header for an Out of Business notification"
* eventCoding = $LOINC#53411-5 "Out of business notification"
* source.endpointUrl = "http://example.org/"
* focus[0] = Reference(SampleIdentifiedEstablishmentRegistrant)

Instance: SampleOutOfBusinessNotificationBundle
InstanceOf: OutOfBusinessBundle
Description: "An example of a Bundle containing a set of Establishment resources to inactivate."
* timestamp = "2021-08-11T01:01:01.111+06:00"
* entry[Message].resource = SamplOutOfBusinessMessage
* entry[Message].fullUrl = "http://example.org/MessageHeader/SamplOutOfBusinessMessage"
* entry[Registrant].resource = SampleIdentifiedEstablishmentRegistrant
* entry[Registrant].fullUrl = "http://example.org/Organization/SampleIdentifiedEstablishmentRegistrant"
