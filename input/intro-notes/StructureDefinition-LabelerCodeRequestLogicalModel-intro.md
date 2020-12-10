# Labeler Code Request UML Diagram
The following UML diagram shows the data elements for a Labeler Code Request.  More details about the data elements can be found in the definition tables below.

Each request has a set of elements that identify the request:
* operation ID
* operation date/time
* request ID
* request version

It then carries the content of the request which is a Labeler with an optional US Agent (if the Labeler is not located in the US) and a set of Business Operations.

{% include LabelerCodeRequestLogicalModel.svg %}