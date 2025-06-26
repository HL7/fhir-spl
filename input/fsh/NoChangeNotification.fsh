Profile: NoChangeNotificationBundle
Parent: OrganizationBundle
Description: "A profile that represents the Bundle that contains all of the resources for a No Change Notifcation."
* entry 2..2
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for an No Change Notification."
* entry contains Message 1..1 MS and Registrant 1..1 MS
* entry[Message].resource 1..1
* entry[Message].resource only NoChangeNotificationMessage
* entry[Registrant].resource 1..1
* entry[Registrant].resource only IdentifiedOrganization

Profile: NoChangeNotificationMessage
Parent: OrganizationMessage
Description: "A profile of an No Change Notification message"
* eventCoding = $LOINC#53410-7
* focus ^slicing.discriminator.type = #profile
* focus ^slicing.discriminator.path = "$this.resolve()"
* focus ^slicing.rules = #open
* focus contains Registrant 1..1 MS
* focus[Registrant] only Reference(IdentifiedOrganization)

Instance: SampleNoChangeNotificationMessage
InstanceOf: NoChangeNotificationMessage
Description: "An example of a message header for a No Change Notification"
* eventCoding = $LOINC#53410-7 "No change notification"
* source.endpointUrl = "http://example.org/"
* focus[0] = Reference(SampleIdentifiedEstablishmentRegistrant)

Instance: SampleNoChangeNotificationBundle
InstanceOf: NoChangeNotificationBundle
Description: "An example of a Bundle containing a set of Establishment resources to indicate no change required."
* timestamp = "2025-08-11T01:01:01.111+06:00"
* entry[Message].resource = SampleNoChangeNotificationMessage
* entry[Message].fullUrl = "http://example.org/MessageHeader/SampleNoChangeNotificationMessage"
* entry[Registrant].resource = SampleIdentifiedEstablishmentRegistrant
* entry[Registrant].fullUrl = "http://example.org/Organization/SampleIdentifiedEstablishmentRegistrant"
