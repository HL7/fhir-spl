Instance: LabelerCodeRequestLogicalModel
InstanceOf: StructureDefinition
Description: "FDA Labeler Code Request Logical Model"
Title: "FDA Labeler Code Request Logical Model"
Usage: #definition

* publisher = "HL7"
* status = #draft
* name = "LabelerCodeRequestLogicalModel"
* url = "http://hl7.org/fhir/us/spl/StructureDefinition/LabelerCodeRequestLogicalModel"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "LabelerCodeRequest"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization

* differential.element[0].id = "LabelerCodeRequest"
* differential.element[0].path = "LabelerCodeRequest"
* differential.element[0].definition = "An operation to request a NDC Labeler code for a registrant or private Labeler organization."
* differential.element[0].min = 1
* differential.element[0].max = "1"

* differential.element[1].id = "LabelerCodeRequest.operationId"
* differential.element[1].path = "LabelerCodeRequest.operationId"
* differential.element[1].short = "Operation Identifier"
* differential.element[1].definition = "A unique identifier of an instance of a Labeler Code Request operation."
* differential.element[1].min = 1
* differential.element[1].max = "1"
* differential.element[1].mustSupport = true
* differential.element[1].type.code = #string

* differential.element[2].id = "LabelerCodeRequest.operationEffectiveTime"
* differential.element[2].path = "LabelerCodeRequest.operationEffectiveTime"
* differential.element[2].short = "Operation Effective Time"
* differential.element[2].definition = "The time when this request operation was created."
* differential.element[2].min = 1
* differential.element[2].max = "1"
* differential.element[2].mustSupport = true
* differential.element[2].type.code = #dateTime

* differential.element[3].id = "LabelerCodeRequest.requestId"
* differential.element[3].path = "LabelerCodeRequest.requestId"
* differential.element[3].short = "Request Identifier"
* differential.element[3].definition = "A unique identifier of a specific group of Labeler Code Request operations."
* differential.element[3].min = 1
* differential.element[3].max = "1"
* differential.element[3].mustSupport = true
* differential.element[3].type.code = #string

* differential.element[4].id = "LabelerCodeRequest.requestVersion"
* differential.element[4].path = "LabelerCodeRequest.requestVersion"
* differential.element[4].short = "Request Version Number"
* differential.element[4].definition = "A string identifying a specific version of the Labeler Code Request operation group."
* differential.element[4].min = 1
* differential.element[4].max = "1"
* differential.element[4].mustSupport = true
* differential.element[4].type.code = #string

* differential.element[5].id = "LabelerCodeRequest.labeler"
* differential.element[5].path = "LabelerCodeRequest.labeler"
* differential.element[5].short = "Labeler"
* differential.element[5].definition = "The organization that is requesting the NDC Labeler Code."
* differential.element[5].min = 1
* differential.element[5].max = "1"
* differential.element[5].mustSupport = true
* differential.element[5].type.code = #BackboneElement

* differential.element[6].id = "LabelerCodeRequest.labeler.dunsNumber"
* differential.element[6].path = "LabelerCodeRequest.labeler.dunsNumber"
* differential.element[6].short = "Labeler DUNS Number"
* differential.element[6].definition = "The Dun & Bradstreet number assigned to the Labeler organization headquarters."
* differential.element[6].min = 1
* differential.element[6].max = "1"
* differential.element[6].mustSupport = true
* differential.element[6].type.code = #string

* differential.element[7].id = "LabelerCodeRequest.labeler.labelerCode"
* differential.element[7].path = "LabelerCodeRequest.labeler.labelerCode"
* differential.element[7].short = "Labeler DUNS Number"
* differential.element[7].definition = "The NDC Labeler code assigned by the FDA to Labeler organization."
* differential.element[7].min = 0
* differential.element[7].max = "1"
* differential.element[7].mustSupport = true
* differential.element[7].type.code = #string

* differential.element[8].id = "LabelerCodeRequest.labeler.name"
* differential.element[8].path = "LabelerCodeRequest.labeler.name"
* differential.element[8].short = "Labeler Name"
* differential.element[8].definition = "The business name of the Labeler organization."
* differential.element[8].min = 1
* differential.element[8].max = "1"
* differential.element[8].mustSupport = true
* differential.element[8].type.code = #string

* differential.element[9].id = "LabelerCodeRequest.labeler.address"
* differential.element[9].path = "LabelerCodeRequest.labeler.address"
* differential.element[9].short = "Labeler Address"
* differential.element[9].definition = "The Labeler organization's address."
* differential.element[9].min = 0
* differential.element[9].max = "1"
* differential.element[9].mustSupport = true
* differential.element[9].type.code = #Address

* differential.element[10].id = "LabelerCodeRequest.labeler.contactParty"
* differential.element[10].path = "LabelerCodeRequest.labeler.contactParty"
* differential.element[10].short = "Labeler Contact Party"
* differential.element[10].definition = "The person at the Labeler Organization to contact about this Labeler request."
* differential.element[10].min = 1
* differential.element[10].max = "1"
* differential.element[10].mustSupport = true
* differential.element[10].type.code = #BackboneElement

* differential.element[11].id = "LabelerCodeRequest.labeler.contactParty.name"
* differential.element[11].path = "LabelerCodeRequest.labeler.contactParty.name"
* differential.element[11].short = "Labeler Contact Party Name"
* differential.element[11].definition = "The name of the Labeler contact person."
* differential.element[11].min = 1
* differential.element[11].max = "1"
* differential.element[11].mustSupport = true
* differential.element[11].type.code = #string

* differential.element[12].id = "LabelerCodeRequest.labeler.contactParty.address"
* differential.element[12].path = "LabelerCodeRequest.labeler.contactParty.address"
* differential.element[12].short = "Labeler Contact Party Address"
* differential.element[12].definition = "The address of the Labeler contact person."
* differential.element[12].min = 0
* differential.element[12].max = "1"
* differential.element[12].mustSupport = true
* differential.element[12].type.code = #Address

* differential.element[13].id = "LabelerCodeRequest.labeler.contactParty.telephone"
* differential.element[13].path = "LabelerCodeRequest.labeler.contactParty.telephone"
* differential.element[13].short = "Labeler Contact Party Telephone Number"
* differential.element[13].definition = "The telephone number for the Labeler contact person."
* differential.element[13].min = 1
* differential.element[13].max = "1"
* differential.element[13].mustSupport = true
* differential.element[13].type.code = #ContactPoint

* differential.element[14].id = "LabelerCodeRequest.labeler.contactParty.email"
* differential.element[14].path = "LabelerCodeRequest.labeler.contactParty.email"
* differential.element[14].short = "Labeler Contact Party Email Address"
* differential.element[14].definition = "The email address for the Labeler contact person."
* differential.element[14].min = 1
* differential.element[14].max = "1"
* differential.element[14].mustSupport = true
* differential.element[14].type.code = #ContactPoint

* differential.element[15].id = "LabelerCodeRequest.labeler.usAgent"
* differential.element[15].path = "LabelerCodeRequest.labeler.usAgent"
* differential.element[15].short = "Labeler US Agent"
* differential.element[15].definition = "An organization that acts on the behalf of a Labeler that is not located in the US."
* differential.element[15].min = 1
* differential.element[15].max = "1"
* differential.element[15].mustSupport = true
* differential.element[15].type.code = #BackboneElement

* differential.element[16].id = "LabelerCodeRequest.labeler.usAgent.dunsNumber"
* differential.element[16].path = "LabelerCodeRequest.labeler.usAgent.dunsNumber"
* differential.element[16].short = "Labeler US Agent DUNS Number"
* differential.element[16].definition = "The Dun & Bradstreet number assigned to the organization acting as the labeler's US agent."
* differential.element[16].min = 1
* differential.element[16].max = "1"
* differential.element[16].mustSupport = true
* differential.element[16].type.code = #string

* differential.element[17].id = "LabelerCodeRequest.labeler.usAgent.name"
* differential.element[17].path = "LabelerCodeRequest.labeler.usAgent.name"
* differential.element[17].short = "Labeler US Agent Name"
* differential.element[17].definition = "The name of the organization acting as the Labeler's US agent."
* differential.element[17].min = 1
* differential.element[17].max = "1"
* differential.element[17].mustSupport = true
* differential.element[17].type.code = #string

* differential.element[18].id = "LabelerCodeRequest.labeler.usAgent.telephone"
* differential.element[18].path = "LabelerCodeRequest.labeler.usAgent.telephone"
* differential.element[18].short = "Labeler US Agent Telephone Number"
* differential.element[18].definition = "The telephone number for the organization acting as the Labeler's US agent."
* differential.element[18].min = 1
* differential.element[18].max = "1"
* differential.element[18].mustSupport = true
* differential.element[18].type.code = #ContactPoint

* differential.element[19].id = "LabelerCodeRequest.labeler.usAgent.email"
* differential.element[19].path = "LabelerCodeRequest.labeler.usAgent.email"
* differential.element[19].short = "Labeler US Agent Email Address"
* differential.element[19].definition = "The email address for the organization acting as the Labeler's US agent."
* differential.element[19].min = 1
* differential.element[19].max = "1"
* differential.element[19].mustSupport = true
* differential.element[19].type.code = #ContactPoint

* differential.element[20].id = "LabelerCodeRequest.labeler.businessOperation"
* differential.element[20].path = "LabelerCodeRequest.labeler.businessOperation"
* differential.element[20].short = "Labeler Business Operations"
* differential.element[20].definition = "Various business operations that the Labeler organization performs."
* differential.element[20].min = 1
* differential.element[20].max = "*"
* differential.element[20].mustSupport = true
* differential.element[20].type.code = #BackboneElement

* differential.element[21].id = "LabelerCodeRequest.labeler.businessOperation.code"
* differential.element[21].path = "LabelerCodeRequest.labeler.businessOperation.code"
* differential.element[21].short = "Business Operation Type"
* differential.element[21].definition = "A code representing the specific business operation that the Labeler organization can perform."
* differential.element[21].min = 1
* differential.element[21].max = "1"
* differential.element[21].mustSupport = true
* differential.element[21].type.code = #CodeableConcept

* differential.element[22].id = "LabelerCodeRequest.labeler.businessOperation.qualifier"
* differential.element[22].path = "LabelerCodeRequest.labeler.businessOperation.qualifier"
* differential.element[22].short = "Business Operation Qualifier"
* differential.element[22].definition = "A code that gives more information about the business operation that the Labeler organization can perform."
* differential.element[22].min = 0
* differential.element[22].max = "2"
* differential.element[22].mustSupport = true
* differential.element[22].type.code = #CodeableConcept
