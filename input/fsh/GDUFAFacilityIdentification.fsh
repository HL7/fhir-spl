Profile: GDUFAFacilityIdentificationBundle
Parent: OrganizationBundle
Description: "A profile that represents the Bundle that contains all of the resources for a GDUFA Facility Identification Request."
* obeys spl-6.1.3.4-13.1.3.3
* entry 3..*
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a GDUFA Facility Identification Request."
* entry contains Message 1..1 MS and Registrant 1..1 MS and GDUFAFacility 1..* MS
* entry[Message].resource only GDUFAFacilityIdentificationMessage
* entry[Registrant].resource only GDUFARegistrantOrganization
* entry[GDUFAFacility].resource only GDUFAFacilityOrganization

Profile: GDUFAFacilityIdentificationMessage
Parent: OrganizationMessage
Description: "A profile of a GDUFA Facility Identification message"
* eventCoding from GenericFacilityMessageTypes
* focus ^slicing.discriminator.type = #profile
* focus ^slicing.discriminator.path = "$this.resolve()"
* focus ^slicing.rules = #open
* focus contains Registrant 1..1 MS and GDUFAFacility 1..* MS
* focus[Registrant] only Reference(GDUFARegistrantOrganization)
* focus[GDUFAFacility] only Reference(GDUFAFacilityOrganization)

Profile: GDUFAFacilityInactivationBundle
Parent: OrganizationBundle
Description: "A profile that represents the Bundle that contains all of the resources for an GDUFA Facility Inactivation Request."
* entry 3..*
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a GDUFA Facility Inactivation Request."
* entry contains Message 1..1 MS and Registrant 1..1 MS and GDUFAFacility 1..* MS
* entry[Message].resource only GDUFAFacilityInactivationMessage
* entry[Registrant].resource only IdentifiedGDUFARegistrant
* entry[GDUFAFacility].resource only IdentifiedGDUFAFacility

Invariant: spl-6.1.3.4-13.1.3.3
Description: "DUNS number is not associated with another facility in the same file."
Expression: "entry.resource.ofType(Organization).identifier.where(system='urn:oid:1.3.6.1.4.1.519.1').isDistinct()"
Severity: #error

Profile: GDUFAFacilityInactivationMessage
Parent: OrganizationMessage
Description: "A profile of an GDUFA Facility Inactivation message"
* eventCoding = FHIRSpecificSPLMessageTypes#02
* source.endpointUrl = "http://example.org/"
* focus ^slicing.discriminator.type = #profile
* focus ^slicing.discriminator.path = "$this.resolve()"
* focus ^slicing.rules = #open
* focus contains Registrant 1..1 MS and GDUFAFacility 1..* MS
* focus[Registrant] only Reference(IdentifiedGDUFARegistrant)
* focus[GDUFAFacility] only Reference(IdentifiedGDUFAFacility)

Profile: IdentifiedGDUFARegistrant
Parent: IdentifiedOrganization
Description: "A profile for an identified GDUFA facility registrant."
* type = OrganizationTypes#GDUFARegistrant

Profile: IdentifiedGDUFAFacility
Parent: IdentifiedOrganization
Description: "A profile for an identified GDUFA facility."
* type = OrganizationTypes#GenericDrugUseFacility

Profile: GDUFARegistrantOrganization
Parent: RegistrantOrganization
Description: "A specialization of the RegistrantOrganization profile that fixes the type to GDUFARegistrant."
* type = OrganizationTypes#GDUFARegistrant

Profile: GDUFAFacilityOrganization
Parent: Organization
Description: "A profile for the data elements required to identify an organization that is identified as a GDUFA Facility."
* obeys spl-13.1.4.7
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #closed
* contained ^slicing.description = "The specific resources that are needed for a GDUFA Facility organization."
* contained contains BusinessOperation 1..* MS
* contained[BusinessOperation] only GDUFAFacilityBusinessOperation
* insert DUNSNumber
* identifier contains FEINumber 1..1 MS
* insert FEINumberSlice
* type 1..1 MS
* type = OrganizationTypes#GenericDrugUseFacility
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
 
Invariant: spl-13.1.4.7
Description: "Each business operation code and qualifier is mentioned only once."
Expression: "contained.ofType(HealthcareService).type.isDistinct() and contained.ofType(HealthcareService).serviceProvisionCode.isDistinct()"
Severity: #error

Profile: GDUFAFacilityAffiliation
Parent: OrganizationAffiliation
Description: "A profile that associates a GDUFA facility to its registrant."
* organization 1..1 MS
* organization only Reference(GDUFARegistrantOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(GDUFAFacilityOrganization)
* code 1..1 MS
* code = OrganizationAffiliationCodes#GDUFA

Profile: GDUFAFacilityBusinessOperation
Parent: HealthcareService
Description: "A profile that associates an establishment to the set of business operations that it can perform."
* obeys spl-13.1.5.6
* providedBy 1..1 MS
* providedBy only Reference(GDUFAFacilityOrganization)
* type 1..1 MS
* type from GDUFAFacilityBusinessOperations (required)
* serviceProvisionCode 0..* MS
* serviceProvisionCode from GDUFAFacilityBusinessOperationQualifiers (required)

Invariant: spl-13.1.5.6
Description: "If qualifier is C132491, then type is C101510 or C84731"
Expression: "serviceProvisionCode.coding.where(code = 'C132491').exists() implies type.coding.select(code in ('C101510' | 'C84731')).allTrue()"
Severity: #error

Instance: ExampleGDUFARegistrant
InstanceOf: GDUFARegistrantOrganization
Description: "An example of a Registrant Organization."
* identifier[DUNSNumber].value = "111111111"
* name = "REGISTRANT SERVICES INC"
* type = OrganizationTypes#GDUFARegistrant
* contact.name.text = "Charles Smith"
* contact.telecom[Phone].value = "+1-703-362-1280"
* contact.telecom[Email].value = "charles@anywhere.com"
* contact.address.line = "123 IVY LANE ROAD"
* contact.address.city = "SMITH FALLS"
* contact.address.state = "MD"
* contact.address.postalCode = "12345"
* contact.address.country = "USA"

Instance: SampleIdentifiedGDUFARegistrant
InstanceOf: IdentifiedGDUFARegistrant
Description: "An example of a Identified Registrant Organization."
* identifier[DUNSNumber].value = "111111111"
* name = "REGISTRANT SERVICES INC"
* type = OrganizationTypes#GDUFARegistrant

Instance: ExampleGDUFAFacilityAffiliation
InstanceOf: GDUFAFacilityAffiliation
Description: "An example of an affiliation between a registrant and a GDUFA facility."
* organization = Reference(ExampleGDUFARegistrant)
* participatingOrganization = Reference(ExampleGDUFAFacility)

Instance: SampleIdentifiedGDUFAFacility
InstanceOf: IdentifiedGDUFAFacility
Description: "An example of an Identified GDUFA Facility Organization."
* identifier[DUNSNumber].value = "222222222"
* name = "EXAMPLE GDUFA FACILITY INC."
* type = OrganizationTypes#GenericDrugUseFacility

Instance: ExampleGDUFAFacility
InstanceOf: GDUFAFacilityOrganization
Description: "An example of an GDUFA Facility Organization."
* contained[BusinessOperation] = ExampleGDUFAFacilityOperation
* contained[BusinessOperation].providedBy.reference = "#"
* identifier[DUNSNumber].value = "222222222"
* identifier[FEINumber].value = "1234567"
* name = "EXAMPLE GDUFA FACILITY INC."
* type = OrganizationTypes#GenericDrugUseFacility
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
* contact[OrgAddress].address.state = "MD"
* contact[OrgAddress].address.postalCode = "12345"
* contact[OrgAddress].address.country = "USA"

Instance: ExampleGDUFAFacilityOperation
InstanceOf: GDUFAFacilityBusinessOperation
Description: "An example of a GDUFA Facility's business operations."
* providedBy = Reference(ExampleGDUFAFacility)
* type = $NCI-T#C82401 "API Manufacture"
* serviceProvisionCode = $NCI-T#C101886 "manufactures non-generics"

Instance: SampleGDUFAFacilityIdentificationMessage
InstanceOf: GDUFAFacilityIdentificationMessage
Description: "An example of a GDUFA Facility Identification message"
* eventCoding = http://loinc.org#72090-4 "Identification of CBER-regulated generic drug facility"
* source.endpointUrl = "http://example.org/"
* focus[0] = Reference(ExampleGDUFARegistrant)
* focus[1] = Reference(ExampleGDUFAFacility)

Instance: ExampleGDUFAFacilityIdentification
InstanceOf: GDUFAFacilityIdentificationBundle
Description: "An example of a Bundle containing a set of GDUFA Facility resources to identify."
* timestamp = "2025-08-11T01:01:01.111+06:00"
* entry[Message].resource = SampleGDUFAFacilityIdentificationMessage
* entry[Message].fullUrl = "http://example.org/MessageHeader/SampleGDUFAFacilityIdentificationMessage"
* entry[Registrant].resource = ExampleGDUFARegistrant
* entry[Registrant].fullUrl = "http://example.org/Organization/ExampleGDUFARegistrant"
* entry[GDUFAFacility].resource = ExampleGDUFAFacility
* entry[GDUFAFacility].fullUrl = "http://example.org/Organization/ExampleGDUFAFacility"

Instance: SampleGDUFAFacilityInactivationMessage
InstanceOf: GDUFAFacilityInactivationMessage
Description: "An example of a GDUFA Facility Identification message"
* eventCoding = FHIRSpecificSPLMessageTypes#02 "GDUFA Facility inactivation"
* source.endpointUrl = "http://example.org/"
* focus[0] = Reference(SampleIdentifiedGDUFARegistrant)
* focus[1] = Reference(SampleIdentifiedGDUFAFacility)

Instance: ExampleGDUFAFacilityInactivation
InstanceOf: GDUFAFacilityInactivationBundle
Description: "An example of a Bundle containing a set of GDUFA Facility resources to inactivate."
* timestamp = "2025-08-11T01:01:01.111+06:00"
* entry[Message].resource = SampleGDUFAFacilityInactivationMessage
* entry[Message].fullUrl = "http://example.org/MessageHeader/SampleGDUFAFacilityInactivationMessage"
* entry[Registrant].resource = SampleIdentifiedGDUFARegistrant
* entry[Registrant].fullUrl = "http://example.org/Organization/SampleIdentifiedGDUFARegistrant"
* entry[GDUFAFacility].resource = SampleIdentifiedGDUFAFacility
* entry[GDUFAFacility].fullUrl = "http://example.org/Organization/SampleIdentifiedGDUFAFacility"

