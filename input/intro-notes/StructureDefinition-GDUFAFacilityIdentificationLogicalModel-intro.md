# GDUFA Facility Identification UML Diagram
The following UML diagram shows the data elements for a GDUFA Facilty Identification operation.  More details about the data elements can be found in the definition tables below.

Each request has a set of elements that identify the request:
* operation ID
* operation date/time
* request ID
* request version

It then has the information about the Registrant, i.e the organization that is identifying the facilities, and then one-to-many sets of GDUFA Facility information along with a set of Business Operations for the facility.

![UML Diagram](GDUFAFacilityIdentificationLogicalModel.png)