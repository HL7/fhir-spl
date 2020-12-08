Instance: EstablishmentRegistrationLogicalModel
InstanceOf: StructureDefinition
Description: "FDA Establishment Registration Logical Model"
Title: "FDA Establishment Registration Logical Model"
Usage: #definition

* publisher = "HL7"
* status = #draft
* name = "EstablishmentRegistrationLogicalModelLogicalModel"
* url = "http://hl7.org/fhir/us/spl/StructureDefinition/EstablishmentRegistrationLogicalModel"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "EstablishmentRegistration"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization

* differential.element[0].id = "EstablishmentRegistration"
* differential.element[0].path = "EstablishmentRegistration"
* differential.element[0].definition = "An operation to register Establishment organizations."
* differential.element[0].min = 1
* differential.element[0].max = "1"

* differential.element[1].id = "EstablishmentRegistration.operationId"
* differential.element[1].path = "EstablishmentRegistration.operationId"
* differential.element[1].short = "Operation Identifier"
* differential.element[1].definition = "A unique identifier of an instance of a Establishment Registration operation."
* differential.element[1].min = 1
* differential.element[1].max = "1"
* differential.element[1].mustSupport = true
* differential.element[1].type.code = #string

* differential.element[2].id = "EstablishmentRegistration.operationEffectiveTime"
* differential.element[2].path = "EstablishmentRegistration.operationEffectiveTime"
* differential.element[2].short = "Operation Effective Time"
* differential.element[2].definition = "The time when this request operation was created."
* differential.element[2].min = 1
* differential.element[2].max = "1"
* differential.element[2].mustSupport = true
* differential.element[2].type.code = #dateTime

* differential.element[3].id = "EstablishmentRegistration.requestId"
* differential.element[3].path = "EstablishmentRegistration.requestId"
* differential.element[3].short = "Request Identifier"
* differential.element[3].definition = "A unique identifier of a specific group of Establishment Registration operations."
* differential.element[3].min = 1
* differential.element[3].max = "1"
* differential.element[3].mustSupport = true
* differential.element[3].type.code = #string

* differential.element[4].id = "EstablishmentRegistration.requestVersion"
* differential.element[4].path = "EstablishmentRegistration.requestVersion"
* differential.element[4].short = "Request Version Number"
* differential.element[4].definition = "A string identifying a specific version of the Establishment Registration operation group."
* differential.element[4].min = 1
* differential.element[4].max = "1"
* differential.element[4].mustSupport = true
* differential.element[4].type.code = #string

* differential.element[5].id = "EstablishmentRegistration.registrant"
* differential.element[5].path = "EstablishmentRegistration.registrant"
* differential.element[5].short = "Registrant"
* differential.element[5].definition = "The organization that is registering Establishment organizations."
* differential.element[5].min = 1
* differential.element[5].max = "1"
* differential.element[5].mustSupport = true
* differential.element[5].type.code = #BackboneElement

* differential.element[6].id = "EstablishmentRegistration.registrant.dunsNumber"
* differential.element[6].path = "EstablishmentRegistration.registrant.dunsNumber"
* differential.element[6].short = "Registrant DUNS Number"
* differential.element[6].definition = "The Dun & Bradstreet number assigned to the Registrant organization headquarters."
* differential.element[6].min = 1
* differential.element[6].max = "1"
* differential.element[6].mustSupport = true
* differential.element[6].type.code = #string

* differential.element[7].id = "EstablishmentRegistration.registrant.name"
* differential.element[7].path = "EstablishmentRegistration.registrant.name"
* differential.element[7].short = "Registrant Name"
* differential.element[7].definition = "The business name of the Registrant organization."
* differential.element[7].min = 1
* differential.element[7].max = "1"
* differential.element[7].mustSupport = true
* differential.element[7].type.code = #string

* differential.element[8].id = "EstablishmentRegistration.registrant.contactParty"
* differential.element[8].path = "EstablishmentRegistration.registrant.contactParty"
* differential.element[8].short = "Registrant Contact Party"
* differential.element[8].definition = "The person at the Registrant Organization to contact about this Establishment request."
* differential.element[8].min = 1
* differential.element[8].max = "1"
* differential.element[8].mustSupport = true
* differential.element[8].type.code = #BackboneElement

* differential.element[9].id = "EstablishmentRegistration.registrant.contactParty.name"
* differential.element[9].path = "EstablishmentRegistration.registrant.contactParty.name"
* differential.element[9].short = "Registrant Contact Party Name"
* differential.element[9].definition = "The name of the Registrant contact person."
* differential.element[9].min = 1
* differential.element[9].max = "1"
* differential.element[9].mustSupport = true
* differential.element[9].type.code = #string

* differential.element[10].id = "EstablishmentRegistration.registrant.contactParty.address"
* differential.element[10].path = "EstablishmentRegistration.registrant.contactParty.address"
* differential.element[10].short = "Registrant Contact Party Address"
* differential.element[10].definition = "The address of the Registrant contact person."
* differential.element[10].min = 0
* differential.element[10].max = "1"
* differential.element[10].mustSupport = true
* differential.element[10].type.code = #Address

* differential.element[11].id = "EstablishmentRegistration.registrant.contactParty.telephone"
* differential.element[11].path = "EstablishmentRegistration.registrant.contactParty.telephone"
* differential.element[11].short = "Registrant Contact Party Telephone Number"
* differential.element[11].definition = "The telephone number for the Registrant contact person."
* differential.element[11].min = 1
* differential.element[11].max = "1"
* differential.element[11].mustSupport = true
* differential.element[11].type.code = #ContactPoint

* differential.element[12].id = "EstablishmentRegistration.registrant.contactParty.email"
* differential.element[12].path = "EstablishmentRegistration.registrant.contactParty.email"
* differential.element[12].short = "Registrant Contact Party Email Address"
* differential.element[12].definition = "The email address for the Registrant contact person."
* differential.element[12].min = 1
* differential.element[12].max = "1"
* differential.element[12].mustSupport = true
* differential.element[12].type.code = #ContactPoint

* differential.element[13].id = "EstablishmentRegistration.registrant.establishment"
* differential.element[13].path = "EstablishmentRegistration.registrant.establishment"
* differential.element[13].short = "Establishment"
* differential.element[13].definition = "The Establishment information that is being registered."
* differential.element[13].min = 1
* differential.element[13].max = "*"
* differential.element[13].mustSupport = true
* differential.element[13].type.code = #BackboneElement

* differential.element[14].id = "EstablishmentRegistration.registrant.establishment.dunsNumber"
* differential.element[14].path = "EstablishmentRegistration.registrant.establishment.dunsNumber"
* differential.element[14].short = "Establishment DUNS Number"
* differential.element[14].definition = "The Dun & Bradstreet number assigned to the Establishment organization."
* differential.element[14].min = 1
* differential.element[14].max = "1"
* differential.element[14].mustSupport = true
* differential.element[14].type.code = #string

* differential.element[15].id = "EstablishmentRegistration.registrant.establishment.feiNumber"
* differential.element[15].path = "EstablishmentRegistration.registrant.establishment.feiNumber"
* differential.element[15].short = "Establishment FDA Establishment Identifier"
* differential.element[15].definition = "The FDA Establishment Identifier assigned to the Establishment."
* differential.element[15].min = 1
* differential.element[15].max = "1"
* differential.element[15].mustSupport = true
* differential.element[15].type.code = #string

* differential.element[16].id = "EstablishmentRegistration.registrant.establishment.name"
* differential.element[16].path = "EstablishmentRegistration.registrant.establishment.name"
* differential.element[16].short = "Establishment Name"
* differential.element[16].definition = "The name of the Establishment organization."
* differential.element[16].min = 1
* differential.element[16].max = "1"
* differential.element[16].mustSupport = true
* differential.element[16].type.code = #string

* differential.element[17].id = "EstablishmentRegistration.registrant.establishment.address"
* differential.element[17].path = "EstablishmentRegistration.registrant.establishment.address"
* differential.element[17].short = "Establishment Address"
* differential.element[17].definition = "The address for the Establishment organization."
* differential.element[17].min = 1
* differential.element[17].max = "1"
* differential.element[17].mustSupport = true
* differential.element[17].type.code = #Address

* differential.element[18].id = "EstablishmentRegistration.registrant.establishment.contactParty"
* differential.element[18].path = "EstablishmentRegistration.registrant.establishment.contactParty"
* differential.element[18].short = "Establishment Contact Party"
* differential.element[18].definition = "The person to contact about the Establishment details."
* differential.element[18].min = 1
* differential.element[18].max = "1"
* differential.element[18].mustSupport = true
* differential.element[18].type.code = #BackboneElement

* differential.element[19].id = "EstablishmentRegistration.registrant.establishment.contactParty.name"
* differential.element[19].path = "EstablishmentRegistration.registrant.establishment.contactParty.name"
* differential.element[19].short = "Establishment Contact Party Name"
* differential.element[19].definition = "The name of the Establishment contact person."
* differential.element[19].min = 1
* differential.element[19].max = "1"
* differential.element[19].mustSupport = true
* differential.element[19].type.code = #string

* differential.element[20].id = "EstablishmentRegistration.registrant.establishment.contactParty.address"
* differential.element[20].path = "EstablishmentRegistration.registrant.establishment.contactParty.address"
* differential.element[20].short = "Establishment Contact Party Address"
* differential.element[20].definition = "The address of the Establishment contact person."
* differential.element[20].min = 0
* differential.element[20].max = "1"
* differential.element[20].mustSupport = true
* differential.element[20].type.code = #Address

* differential.element[21].id = "EstablishmentRegistration.registrant.establishment.contactParty.telephone"
* differential.element[21].path = "EstablishmentRegistration.registrant.establishment.contactParty.telephone"
* differential.element[21].short = "Establishment Contact Party Telephone Number"
* differential.element[21].definition = "The telephone number for the Establishment contact person."
* differential.element[21].min = 1
* differential.element[21].max = "1"
* differential.element[21].mustSupport = true
* differential.element[21].type.code = #ContactPoint

* differential.element[22].id = "EstablishmentRegistration.registrant.establishment.contactParty.email"
* differential.element[22].path = "EstablishmentRegistration.registrant.establishment.contactParty.email"
* differential.element[22].short = "Establishment Contact Party Email Address"
* differential.element[22].definition = "The email address for the Establishment contact person."
* differential.element[22].min = 1
* differential.element[22].max = "1"
* differential.element[22].mustSupport = true
* differential.element[22].type.code = #ContactPoint

* differential.element[23].id = "EstablishmentRegistration.registrant.establishment.usAgent"
* differential.element[23].path = "EstablishmentRegistration.registrant.establishment.usAgent"
* differential.element[23].short = "Establishment US Agent"
* differential.element[23].definition = "An organization that acts on the behalf of a Establishment that is not located in the US."
* differential.element[23].min = 0
* differential.element[23].max = "1"
* differential.element[23].mustSupport = true
* differential.element[23].type.code = #BackboneElement

* differential.element[24].id = "EstablishmentRegistration.registrant.establishment.usAgent.dunsNumber"
* differential.element[24].path = "EstablishmentRegistration.registrant.establishment.usAgent.dunsNumber"
* differential.element[24].short = "Establishment US Agent DUNS Number"
* differential.element[24].definition = "The Dun & Bradstreet number assigned to the organization acting as the Establishment's US agent."
* differential.element[24].min = 1
* differential.element[24].max = "1"
* differential.element[24].mustSupport = true
* differential.element[24].type.code = #string

* differential.element[25].id = "EstablishmentRegistration.registrant.establishment.usAgent.name"
* differential.element[25].path = "EstablishmentRegistration.registrant.establishment.usAgent.name"
* differential.element[25].short = "Establishment US Agent Name"
* differential.element[25].definition = "The name of the organization acting as the Establishment's US agent."
* differential.element[25].min = 1
* differential.element[25].max = "1"
* differential.element[25].mustSupport = true
* differential.element[25].type.code = #string

* differential.element[26].id = "EstablishmentRegistration.registrant.establishment.usAgent.telephone"
* differential.element[26].path = "EstablishmentRegistration.registrant.establishment.usAgent.telephone"
* differential.element[26].short = "Establishment US Agent Telephone Number"
* differential.element[26].definition = "The telephone number for the organization acting as the Establishment's US agent."
* differential.element[26].min = 1
* differential.element[26].max = "1"
* differential.element[26].mustSupport = true
* differential.element[26].type.code = #ContactPoint

* differential.element[27].id = "EstablishmentRegistration.registrant.establishment.usAgent.email"
* differential.element[27].path = "EstablishmentRegistration.registrant.establishment.usAgent.email"
* differential.element[27].short = "Establishment US Agent Email Address"
* differential.element[27].definition = "The email address for the organization acting as the Establishment's US agent."
* differential.element[27].min = 1
* differential.element[27].max = "1"
* differential.element[27].mustSupport = true
* differential.element[27].type.code = #ContactPoint

* differential.element[28].id = "EstablishmentRegistration.registrant.establishment.importer"
* differential.element[28].path = "EstablishmentRegistration.registrant.establishment.importer"
* differential.element[28].short = "Establishment Importer"
* differential.element[28].definition = "An organization that is importing product on the behalf of a Establishment that is not located in the US."
* differential.element[28].min = 0
* differential.element[28].max = "1"
* differential.element[28].mustSupport = true
* differential.element[28].type.code = #BackboneElement

* differential.element[29].id = "EstablishmentRegistration.registrant.establishment.importer.dunsNumber"
* differential.element[29].path = "EstablishmentRegistration.registrant.establishment.importer.dunsNumber"
* differential.element[29].short = "Establishment US Agent DUNS Number"
* differential.element[29].definition = "The Dun & Bradstreet number assigned to the organization acting as the Establishment's Importer."
* differential.element[29].min = 1
* differential.element[29].max = "1"
* differential.element[29].mustSupport = true
* differential.element[29].type.code = #string

* differential.element[30].id = "EstablishmentRegistration.registrant.establishment.importer.name"
* differential.element[30].path = "EstablishmentRegistration.registrant.establishment.importer.name"
* differential.element[30].short = "Establishment US Agent Name"
* differential.element[30].definition = "The name of the organization acting as the Establishment's Importer."
* differential.element[30].min = 1
* differential.element[30].max = "1"
* differential.element[30].mustSupport = true
* differential.element[30].type.code = #string

* differential.element[31].id = "EstablishmentRegistration.registrant.establishment.importer.telephone"
* differential.element[31].path = "EstablishmentRegistration.registrant.establishment.importer.telephone"
* differential.element[31].short = "Establishment US Agent Telephone Number"
* differential.element[31].definition = "The telephone number for the organization acting as the Establishment's Importer."
* differential.element[31].min = 1
* differential.element[31].max = "1"
* differential.element[31].mustSupport = true
* differential.element[31].type.code = #ContactPoint

* differential.element[32].id = "EstablishmentRegistration.registrant.establishment.importer.email"
* differential.element[32].path = "EstablishmentRegistration.registrant.establishment.importer.email"
* differential.element[32].short = "Establishment US Agent Email Address"
* differential.element[32].definition = "The email address for the organization acting as the Establishment's Importer."
* differential.element[32].min = 1
* differential.element[32].max = "1"
* differential.element[32].mustSupport = true
* differential.element[32].type.code = #ContactPoint

* differential.element[33].id = "EstablishmentRegistration.registrant.establishment.businessOperation"
* differential.element[33].path = "EstablishmentRegistration.registrant.establishment.businessOperation"
* differential.element[33].short = "Establishment Business Operations"
* differential.element[33].definition = "Various business operations that the Establishment performs."
* differential.element[33].min = 1
* differential.element[33].max = "*"
* differential.element[33].mustSupport = true
* differential.element[33].type.code = #BackboneElement

* differential.element[34].id = "EstablishmentRegistration.registrant.establishment.businessOperation.code"
* differential.element[34].path = "EstablishmentRegistration.registrant.establishment.businessOperation.code"
* differential.element[34].short = "Business Operation Type"
* differential.element[34].definition = "A code representing the specific business operation that the Establishment can perform."
* differential.element[34].min = 1
* differential.element[34].max = "1"
* differential.element[34].mustSupport = true
* differential.element[34].type.code = #CodeableConcept

* differential.element[35].id = "EstablishmentRegistration.registrant.establishment.businessOperation.qualifier"
* differential.element[35].path = "EstablishmentRegistration.registrant.establishment.businessOperation.qualifier"
* differential.element[35].short = "Business Operation Qualifier"
* differential.element[35].definition = "A code that gives more information about the business operation that the Establishment can perform."
* differential.element[35].min = 0
* differential.element[35].max = "*"
* differential.element[35].mustSupport = true
* differential.element[35].type.code = #CodeableConcept
