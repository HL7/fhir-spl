Instance: GDUFAFacilityIdentificationLogicalModel
InstanceOf: StructureDefinition
Description: "GDUFA Facility Identification Logical Model"
Title: "GDUFA Facility Identification Logical Model"
Usage: #definition

* publisher = "HL7"
* status = #draft
* name = "GDUFAFacilityIdentificationLogicalModel"
* url = "http://hl7.org/fhir/us/spl/StructureDefinition/GDUFAFacilityIdentificationLogicalModel"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "GDUFAFacilityIdentification"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization

* differential.element[0].id = "GDUFAFacilityIdentification"
* differential.element[0].path = "GDUFAFacilityIdentification"
* differential.element[0].definition = "An operation to provide details about a GDUFA Facility."
* differential.element[0].min = 1
* differential.element[0].max = "1"

* differential.element[1].id = "GDUFAFacilityIdentification.operationId"
* differential.element[1].path = "GDUFAFacilityIdentification.operationId"
* differential.element[1].short = "Operation Identifier"
* differential.element[1].definition = "A unique identifier of an instance of a GDUFA Facility Identification operation."
* differential.element[1].min = 1
* differential.element[1].max = "1"
* differential.element[1].mustSupport = true
* differential.element[1].type.code = #string

* differential.element[2].id = "GDUFAFacilityIdentification.operationEffectiveTime"
* differential.element[2].path = "GDUFAFacilityIdentification.operationEffectiveTime"
* differential.element[2].short = "Operation Effective Time"
* differential.element[2].definition = "The time when this request operation was created."
* differential.element[2].min = 1
* differential.element[2].max = "1"
* differential.element[2].mustSupport = true
* differential.element[2].type.code = #dateTime

* differential.element[3].id = "GDUFAFacilityIdentification.requestId"
* differential.element[3].path = "GDUFAFacilityIdentification.requestId"
* differential.element[3].short = "Request Identifier"
* differential.element[3].definition = "A unique identifier of a specific group of GDUFA Facilty Identification operations."
* differential.element[3].min = 1
* differential.element[3].max = "1"
* differential.element[3].mustSupport = true
* differential.element[3].type.code = #string

* differential.element[4].id = "GDUFAFacilityIdentification.requestVersion"
* differential.element[4].path = "GDUFAFacilityIdentification.requestVersion"
* differential.element[4].short = "Request Version Number"
* differential.element[4].definition = "A string identifying a specific version of the GDUFA Facilty Identification operation group."
* differential.element[4].min = 1
* differential.element[4].max = "1"
* differential.element[4].mustSupport = true
* differential.element[4].type.code = #string

* differential.element[5].id = "GDUFAFacilityIdentification.registrant"
* differential.element[5].path = "GDUFAFacilityIdentification.registrant"
* differential.element[5].short = "Registrant"
* differential.element[5].definition = "The organization that is registering GDUFA facilties."
* differential.element[5].min = 1
* differential.element[5].max = "1"
* differential.element[5].mustSupport = true
* differential.element[5].type.code = #BackboneElement

* differential.element[6].id = "GDUFAFacilityIdentification.registrant.dunsNumber"
* differential.element[6].path = "GDUFAFacilityIdentification.registrant.dunsNumber"
* differential.element[6].short = "Registrant DUNS Number"
* differential.element[6].definition = "The Dun & Bradstreet number assigned to the Registrant organization headquarters."
* differential.element[6].min = 1
* differential.element[6].max = "1"
* differential.element[6].mustSupport = true
* differential.element[6].type.code = #string

* differential.element[7].id = "GDUFAFacilityIdentification.registrant.name"
* differential.element[7].path = "GDUFAFacilityIdentification.registrant.name"
* differential.element[7].short = "Registrant Name"
* differential.element[7].definition = "The business name of the Registrant organization."
* differential.element[7].min = 1
* differential.element[7].max = "1"
* differential.element[7].mustSupport = true
* differential.element[7].type.code = #string

* differential.element[8].id = "GDUFAFacilityIdentification.registrant.contactParty"
* differential.element[8].path = "GDUFAFacilityIdentification.registrant.contactParty"
* differential.element[8].short = "Registrant Contact Party"
* differential.element[8].definition = "The person at the Registrant Organization to contact about this GDUFA Facility request."
* differential.element[8].min = 1
* differential.element[8].max = "1"
* differential.element[8].mustSupport = true
* differential.element[8].type.code = #BackboneElement

* differential.element[9].id = "GDUFAFacilityIdentification.registrant.contactParty.name"
* differential.element[9].path = "GDUFAFacilityIdentification.registrant.contactParty.name"
* differential.element[9].short = "Registrant Contact Party Name"
* differential.element[9].definition = "The name of the Registrant contact person."
* differential.element[9].min = 1
* differential.element[9].max = "1"
* differential.element[9].mustSupport = true
* differential.element[9].type.code = #string

* differential.element[10].id = "GDUFAFacilityIdentification.registrant.contactParty.address"
* differential.element[10].path = "GDUFAFacilityIdentification.registrant.contactParty.address"
* differential.element[10].short = "Registrant Contact Party Address"
* differential.element[10].definition = "The address of the Registrant contact person."
* differential.element[10].min = 0
* differential.element[10].max = "1"
* differential.element[10].mustSupport = true
* differential.element[10].type.code = #Address

* differential.element[11].id = "GDUFAFacilityIdentification.registrant.contactParty.telephone"
* differential.element[11].path = "GDUFAFacilityIdentification.registrant.contactParty.telephone"
* differential.element[11].short = "Registrant Contact Party Telephone Number"
* differential.element[11].definition = "The telephone number for the Registrant contact person."
* differential.element[11].min = 1
* differential.element[11].max = "1"
* differential.element[11].mustSupport = true
* differential.element[11].type.code = #ContactPoint

* differential.element[12].id = "GDUFAFacilityIdentification.registrant.contactParty.email"
* differential.element[12].path = "GDUFAFacilityIdentification.registrant.contactParty.email"
* differential.element[12].short = "Registrant Contact Party Email Address"
* differential.element[12].definition = "The email address for the Registrant contact person."
* differential.element[12].min = 1
* differential.element[12].max = "1"
* differential.element[12].mustSupport = true
* differential.element[12].type.code = #ContactPoint

* differential.element[13].id = "GDUFAFacilityIdentification.registrant.gdufaFacility"
* differential.element[13].path = "GDUFAFacilityIdentification.registrant.gdufaFacility"
* differential.element[13].short = "GDUFA Facility"
* differential.element[13].definition = "The GDUFA Facility information that is being registered."
* differential.element[13].min = 1
* differential.element[13].max = "*"
* differential.element[13].mustSupport = true
* differential.element[13].type.code = #BackboneElement

* differential.element[14].id = "GDUFAFacilityIdentification.registrant.gdufaFacility.dunsNumber"
* differential.element[14].path = "GDUFAFacilityIdentification.registrant.gdufaFacility.dunsNumber"
* differential.element[14].short = "GDUFA Facility DUNS Number"
* differential.element[14].definition = "The Dun & Bradstreet number assigned to the GDUFA Facility."
* differential.element[14].min = 1
* differential.element[14].max = "1"
* differential.element[14].mustSupport = true
* differential.element[14].type.code = #string

* differential.element[15].id = "GDUFAFacilityIdentification.registrant.gdufaFacility.feiNumber"
* differential.element[15].path = "GDUFAFacilityIdentification.registrant.gdufaFacility.feiNumber"
* differential.element[15].short = "GDUFA Facility FDA Establishment Identifier"
* differential.element[15].definition = "The FDA Establishment Identifier assigned to the GDUFA Facility."
* differential.element[15].min = 1
* differential.element[15].max = "1"
* differential.element[15].mustSupport = true
* differential.element[15].type.code = #string

* differential.element[16].id = "GDUFAFacilityIdentification.registrant.gdufaFacility.name"
* differential.element[16].path = "GDUFAFacilityIdentification.registrant.gdufaFacility.name"
* differential.element[16].short = "GDUFA Facility Name"
* differential.element[16].definition = "The name of the GDUFA Facility organization."
* differential.element[16].min = 1
* differential.element[16].max = "1"
* differential.element[16].mustSupport = true
* differential.element[16].type.code = #string

* differential.element[17].id = "GDUFAFacilityIdentification.registrant.gdufaFacility.address"
* differential.element[17].path = "GDUFAFacilityIdentification.registrant.gdufaFacility.address"
* differential.element[17].short = "GDUFA Facility Address"
* differential.element[17].definition = "The address for the GDUFA Facility organization."
* differential.element[17].min = 1
* differential.element[17].max = "1"
* differential.element[17].mustSupport = true
* differential.element[17].type.code = #Address

* differential.element[18].id = "GDUFAFacilityIdentification.registrant.gdufaFacility.contactParty"
* differential.element[18].path = "GDUFAFacilityIdentification.registrant.gdufaFacility.contactParty"
* differential.element[18].short = "GDUFA Facility Contact Party"
* differential.element[18].definition = "The person to contact about the GDUFA Facility details."
* differential.element[18].min = 1
* differential.element[18].max = "1"
* differential.element[18].mustSupport = true
* differential.element[18].type.code = #BackboneElement

* differential.element[19].id = "GDUFAFacilityIdentification.registrant.gdufaFacility.contactParty.name"
* differential.element[19].path = "GDUFAFacilityIdentification.registrant.gdufaFacility.contactParty.name"
* differential.element[19].short = "GDUFA Facility Contact Party Name"
* differential.element[19].definition = "The name of the GDUFA Facility contact person."
* differential.element[19].min = 1
* differential.element[19].max = "1"
* differential.element[19].mustSupport = true
* differential.element[19].type.code = #string

* differential.element[20].id = "GDUFAFacilityIdentification.registrant.gdufaFacility.contactParty.address"
* differential.element[20].path = "GDUFAFacilityIdentification.registrant.gdufaFacility.contactParty.address"
* differential.element[20].short = "GDUFA Facility Contact Party Address"
* differential.element[20].definition = "The address of the GDUFA Facility contact person."
* differential.element[20].min = 0
* differential.element[20].max = "1"
* differential.element[20].mustSupport = true
* differential.element[20].type.code = #Address

* differential.element[21].id = "GDUFAFacilityIdentification.registrant.gdufaFacility.contactParty.telephone"
* differential.element[21].path = "GDUFAFacilityIdentification.registrant.gdufaFacility.contactParty.telephone"
* differential.element[21].short = "GDUFA Facility Contact Party Telephone Number"
* differential.element[21].definition = "The telephone number for the GDUFA Facility contact person."
* differential.element[21].min = 1
* differential.element[21].max = "1"
* differential.element[21].mustSupport = true
* differential.element[21].type.code = #ContactPoint

* differential.element[22].id = "GDUFAFacilityIdentification.registrant.gdufaFacility.contactParty.email"
* differential.element[22].path = "GDUFAFacilityIdentification.registrant.gdufaFacility.contactParty.email"
* differential.element[22].short = "GDUFA Facility Contact Party Email Address"
* differential.element[22].definition = "The email address for the GDUFA Facility contact person."
* differential.element[22].min = 1
* differential.element[22].max = "1"
* differential.element[22].mustSupport = true
* differential.element[22].type.code = #ContactPoint

* differential.element[23].id = "GDUFAFacilityIdentification.registrant.gdufaFacility.businessOperation"
* differential.element[23].path = "GDUFAFacilityIdentification.registrant.gdufaFacility.businessOperation"
* differential.element[23].short = "GDUFA Facility Business Operations"
* differential.element[23].definition = "Various business operations that the GDUFA Facility performs."
* differential.element[23].min = 1
* differential.element[23].max = "*"
* differential.element[23].mustSupport = true
* differential.element[23].type.code = #BackboneElement

* differential.element[24].id = "GDUFAFacilityIdentification.registrant.gdufaFacility.businessOperation.code"
* differential.element[24].path = "GDUFAFacilityIdentification.registrant.gdufaFacility.businessOperation.code"
* differential.element[24].short = "Business Operation Type"
* differential.element[24].definition = "A code representing the specific business operation that the GDUFA Facility can perform."
* differential.element[24].min = 1
* differential.element[24].max = "1"
* differential.element[24].mustSupport = true
* differential.element[24].type.code = #CodeableConcept

* differential.element[25].id = "GDUFAFacilityIdentification.registrant.gdufaFacility.businessOperation.qualifier"
* differential.element[25].path = "GDUFAFacilityIdentification.registrant.gdufaFacility.businessOperation.qualifier"
* differential.element[25].short = "Business Operation Qualifier"
* differential.element[25].definition = "A code that gives more information about the business operation that the GDUFA Facility can perform."
* differential.element[25].min = 0
* differential.element[25].max = "*"
* differential.element[25].mustSupport = true
* differential.element[25].type.code = #CodeableConcept
