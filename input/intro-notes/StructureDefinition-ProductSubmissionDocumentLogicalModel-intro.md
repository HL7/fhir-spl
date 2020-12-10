# Product Submission Document UML Diagram
The following UML diagram shows the data elements of a Product Submission Document.  More details about the data elements can be found in the definition tables below.

A Product Submission is done as a Document with metadata about the document such as:

* identifier
* title
* type
* author

The body of the document is broken into sections (which can have sub-sections) where each section corresponds to a logical grouping of information about the product.  Each section has the following information:

* identifier
* written date/time
* title
* type

It also has human readable text (or a set of human readable highlights).  One of the sections may also have detailed information about the submitted product.

![UML Diagram](ProductSubmissionDocumentLogicalModel.png)