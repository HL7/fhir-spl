Instance: ProcessOrganizationOperation
InstanceOf: OperationDefinition
Description: "This operation is used to submit a Bundle containing an Organization resource along with other referenced resources for processing. There is one coded input parameter that indicates the type of submission operation.  There is also an input parameter that is the Bundle resource with the Organization resource (along with other referenced resources) and the only output is an OperationOutcome resource."
Usage: #definition
* id = "processOrganizationBundle"
* url = "http://hl7.org/fhir/us/fhir-spl/OperationDefinition/processOrganizationBundle"
* name = "ProcessOrganization"
* title = "Submit an Organization resource to be processed"
* status = #draft
* kind = #operation
* code = #submit
* resource = #Organization
* system = false
* type = true
* instance = false
* parameter[0].name = #resource
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "A Bundle containing an Organization resource plus referenced resources."
* parameter[0].type = #Bundle
* parameter[1].name = #submissionType
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].documentation = "A code that indicates the type of submission to process."
* parameter[1].type = #code
