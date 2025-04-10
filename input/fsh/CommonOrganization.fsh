RuleSet: DUNSNumber
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Require specific types of identifiers."
* identifier contains DUNSNumber 1..1 MS
* identifier[DUNSNumber].system = "http://terminology.hl7.org/NamingSystem/DUNSNumber"
* identifier[DUNSNumber] obeys spl-2.1.5.2

RuleSet: FEINumberSlice
* identifier[FEINumber].system = "http://terminology.hl7.org/NamingSystem/FEI"
* identifier[FEINumber] obeys spl-6.1.3.7


RuleSet: PhoneNumberAndEmail
* telecom 2..* MS
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.description = "Require a telephone number and an email address."
* telecom contains Phone 1..1 MS and Email 1..1 MS
* telecom[Phone] only SPLContactPoint
* telecom[Phone].system = #phone
* telecom[Email] only SPLContactPoint
* telecom[Email].system = #email


Profile: OrganizationBundle
Parent: Bundle
Description: "A profile that provides the minimum set of information about a Bundle using for Organization messages."
* ^abstract = true
* obeys spl-X.1.1.2
* obeys spl-2.1.3.11
* type 1..1 MS
* type = #message
* timestamp 1..1 MS
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0

Invariant: spl-2.1.3.11
Description: "There is an effective time with at least the precision of day."
Expression: "timestamp.toString().length() >= 10"
Severity: #error

Invariant: spl-X.1.1.2
Description: "The effective time year is equal to the current year"
Expression: "timestamp.toString().startsWith(today().toString().substring(0,4))"
Severity: #error

Profile: OrganizationMessage
Parent: MessageHeader
Description: "An abstract profile that indicates what type of request is being made."
* ^abstract = true
* event[x] MS
* event[x] only Coding
* eventCoding from OrganizationSubmissionMessageTypes (required)
* eventCoding.display 1..1 MS
* focus 1..* MS
* focus only Reference(Organization)

Profile: IdentifiedOrganization
Parent: Organization
Description: "A profile on Organization that specifies a name and an identifier used to identify rather than specify the organization."
* ^abstract = true
* insert DUNSNumber
* type 1..1 MS
* type from TopLevelOrganizationTypes (required)
* name 1..1 MS

Invariant: spl-2.1.5.2
Description: "DUNS number is 9 digits"
Expression: "system = 'http://terminology.hl7.org/NamingSystem/DUNSNumber' implies value.length() = 9"
Severity: #error


Profile: RegistrantOrganization
Parent: Organization
Description: "A profile for the data elements required to identify an organization that registers organizations and facilities."
* ^abstract = true
* insert DUNSNumber
* type 1..1 MS
* type from RegistrantOrganizationTypes (required)
* name 1..1 MS
* contact 1..1 MS
  * purpose 1..1 MS
  * purpose = http://terminology.hl7.org/CodeSystem/contactentity-type#ADMIN
  * name 1..1 MS
  * address 1..1 MS
  * address only SPLAddress
  * insert PhoneNumberAndEmail

Profile: USAgentOrganization
Parent: Organization
Description: "A profile for the data elements required for an organization fulfilling the role of a US Agent for another organization."
* insert DUNSNumber
* type 1..1 MS
* type = OrganizationTypes#USAgent
* name 1..1 MS
* contact 1..1 MS
  * insert PhoneNumberAndEmail

Profile: LabelerUSAgentAffiliation
Parent: OrganizationAffiliation
Description: "A profile that associates a labeler to its US Agent."
* organization 1..1 MS
* organization only Reference(LabelerOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(USAgentOrganization)
* code 1..1 MS
* code = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C73330

Profile: EstablishmentUSAgentAffiliation
Parent: OrganizationAffiliation
Description: "A profile that associates an establishment to its US Agent."
* organization 1..1 MS
* organization only Reference(EstablishmentOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(USAgentOrganization)
* code 1..1 MS
* code = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C73330

Profile: SPLAddress
Parent: Address
Description: "SPL-specific Constraints on the Address datatype dealing with US addresses."
* obeys spl-2.1.6.4
* obeys spl-2.1.6.5
* line 1..2
* city 1..1 MS
* state 0..1 MS
* postalCode 1..1 MS
* country 1..1 MS
* country ^short = "Country can either be the ISO 3-letter country code or the full country name matching the code."

Invariant: spl-2.1.6.4
Description: "If the country is USA, then the state and postal code exist"
Expression: "country = 'USA' implies (state.exists() and state.length() = 2 and postalCode.exists())"
Severity: #error

Invariant: spl-2.1.6.5
Description: "If the country is USA, then the postal code is 5 digits with an optional dash and 4 numbers"
Expression: "country = 'USA' implies postalCode.matches('^[0-9]{5}(-[0-9]{4})?$')"
Severity: #error

Profile: SPLContactPoint
Parent: ContactPoint
Description: "SPL-specific Constraints on the ContactPoint dealing with proper formatting"
* obeys spl-2.1.7.x
* obeys spl-2.1.7.11
* system 1..1 MS
* value 1..1 MS

Invariant: spl-2.1.7.x
Description: "Telephone and fax numbers are formatted properly"
Expression: "(system = 'phone' or system = 'fax') implies value.matches('^\\\\+[0-9]{1,3}-[0-9]{1,3}-[0-9]{3,4}-[0-9]{4}(;ext=[0-9]+)?$')"
Severity: #error

Invariant: spl-2.1.7.11
Description: "Emails are formatted properly"
Expression: "system = 'email' implies value.matches('^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(\\\\.[a-zA-Z0-9-]+)*$')"
Severity: #error
