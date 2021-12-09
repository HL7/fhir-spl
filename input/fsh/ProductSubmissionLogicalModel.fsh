Instance: ProductSubmissionDocumentLogicalModel
InstanceOf: StructureDefinition
Description: "FDA Product Submission Document Logical Model"
Title: "FDA Product Submission Document Logical Model"
Usage: #definition

* publisher = "HL7"
* status = #draft
* name = "ProductSubmissionDocumentLogicalModel"
* url = "http://hl7.org/fhir/us/spl/StructureDefinition/ProductSubmissionDocumentLogicalModel"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "ProductSubmissionDocument"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization

* differential.element[0].id = "ProductSubmissionDocument"
* differential.element[0].path = "ProductSubmissionDocument"
* differential.element[0].definition = "A document that contains information about a product being submitted for approval to the FDA."
* differential.element[0].min = 1
* differential.element[0].max = "1"

* differential.element[1].id = "ProductSubmissionDocument.identifier"
* differential.element[1].path = "ProductSubmissionDocument.identifier"
* differential.element[1].short = "Document Identifier"
* differential.element[1].definition = "A unique identifier of this specific Product Submission document."
* differential.element[1].min = 1
* differential.element[1].max = "1"
* differential.element[1].mustSupport = true
* differential.element[1].type.code = #string

* differential.element[2].id = "ProductSubmissionDocument.splVersion"
* differential.element[2].path = "ProductSubmissionDocument.splVersion"
* differential.element[2].short = "Document SPL Version"
* differential.element[2].definition = "A date reference to the SPL version being used for this document."
* differential.element[2].min = 1
* differential.element[2].max = "1"
* differential.element[2].mustSupport = true
* differential.element[2].type.code = #date

* differential.element[3].id = "ProductSubmissionDocument.submissionIdentifier"
* differential.element[3].path = "ProductSubmissionDocument.submissionIdentifier"
* differential.element[3].short = "Submission Identifier"
* differential.element[3].definition = "A unique identifier of the submission that remains constant across all versions/revisions of this document."
* differential.element[3].min = 1
* differential.element[3].max = "1"
* differential.element[3].mustSupport = true
* differential.element[3].type.code = #string

* differential.element[4].id = "ProductSubmissionDocument.versionNumber"
* differential.element[4].path = "ProductSubmissionDocument.versionNumber"
* differential.element[4].short = "Document Version Number"
* differential.element[4].definition = "An integer that provides a sequence to the versions of the submission document."
* differential.element[4].min = 1
* differential.element[4].max = "1"
* differential.element[4].mustSupport = true
* differential.element[4].type.code = #positiveInt

* differential.element[5].id = "ProductSubmissionDocument.type"
* differential.element[5].path = "ProductSubmissionDocument.type"
* differential.element[5].short = "Document Type"
* differential.element[5].definition = "A LOINC code that provides inforamtion on the Product Submission type."
* differential.element[5].min = 1
* differential.element[5].max = "1"
* differential.element[5].mustSupport = true
* differential.element[5].type.code = #CodeableConcept

* differential.element[6].id = "ProductSubmissionDocument.title"
* differential.element[6].path = "ProductSubmissionDocument.title"
* differential.element[6].short = "Document Title"
* differential.element[6].definition = "The title for the document."
* differential.element[6].min = 0
* differential.element[6].max = "1"
* differential.element[6].mustSupport = true
* differential.element[6].type.code = #string

* differential.element[7].id = "ProductSubmissionDocument.labeler"
* differential.element[7].path = "ProductSubmissionDocument.labeler"
* differential.element[7].short = "Product Labeler"
* differential.element[7].definition = "Information about the labeler organization that authored the document."
* differential.element[7].min = 1
* differential.element[7].max = "1"
* differential.element[7].mustSupport = true
* differential.element[7].type.code = #BackboneElement

* differential.element[8].id = "ProductSubmissionDocument.labeler.dunsNumber"
* differential.element[8].path = "ProductSubmissionDocument.labeler.dunsNumber"
* differential.element[8].short = "Product Labeler DUNS Number"
* differential.element[8].definition = "The Duns & Broadstreet number for the labeler organization."
* differential.element[8].min = 1
* differential.element[8].max = "1"
* differential.element[8].mustSupport = true
* differential.element[8].type.code = #string

* differential.element[9].id = "ProductSubmissionDocument.labeler.name"
* differential.element[9].path = "ProductSubmissionDocument.labeler.name"
* differential.element[9].short = "Product Labeler Name"
* differential.element[9].definition = "The name of the labeler organization."
* differential.element[9].min = 1
* differential.element[9].max = "1"
* differential.element[9].mustSupport = true
* differential.element[9].type.code = #string

* differential.element[10].id = "ProductSubmissionDocument.labeler.registrant"
* differential.element[10].path = "ProductSubmissionDocument.labeler.registrant"
* differential.element[10].short = "Product Labeler Registrant"
* differential.element[10].definition = "Information about the registrant organization associated with the labeler."
* differential.element[10].min = 0
* differential.element[10].max = "1"
* differential.element[10].mustSupport = true
* differential.element[10].type.code = #BackboneElement

* differential.element[11].id = "ProductSubmissionDocument.labeler.registrant.dunsNumber"
* differential.element[11].path = "ProductSubmissionDocument.labeler.registrant.dunsNumber"
* differential.element[11].short = "Registrant DUNS Number"
* differential.element[11].definition = "The Duns & Broadstreet number for the registrant organization."
* differential.element[11].min = 1
* differential.element[11].max = "1"
* differential.element[11].mustSupport = true
* differential.element[11].type.code = #string

* differential.element[12].id = "ProductSubmissionDocument.labeler.registrant.name"
* differential.element[12].path = "ProductSubmissionDocument.labeler.registrant.name"
* differential.element[12].short = "Registrant Name"
* differential.element[12].definition = "The name of the registrant organization."
* differential.element[12].min = 1
* differential.element[12].max = "1"
* differential.element[12].mustSupport = true
* differential.element[12].type.code = #string

* differential.element[13].id = "ProductSubmissionDocument.labeler.registrant.establishment"
* differential.element[13].path = "ProductSubmissionDocument.labeler.registrant.establishment"
* differential.element[13].short = "Product Establishment"
* differential.element[13].definition = "Information about the establishment organization associated with active or new marketed products."
* differential.element[13].min = 1
* differential.element[13].max = "*"
* differential.element[13].mustSupport = true
* differential.element[13].type.code = #BackboneElement

* differential.element[14].id = "ProductSubmissionDocument.labeler.registrant.establishment.dunsNumber"
* differential.element[14].path = "ProductSubmissionDocument.labeler.registrant.establishment.dunsNumber"
* differential.element[14].short = "Establishment DUNS Number"
* differential.element[14].definition = "The Duns & Broadstreet number for the establishment organization."
* differential.element[14].min = 1
* differential.element[14].max = "1"
* differential.element[14].mustSupport = true
* differential.element[14].type.code = #string

* differential.element[15].id = "ProductSubmissionDocument.labeler.registrant.establishment.name"
* differential.element[15].path = "ProductSubmissionDocument.labeler.registrant.establishment.name"
* differential.element[15].short = "Establishment Name"
* differential.element[15].definition = "The name of the establishment organization."
* differential.element[15].min = 1
* differential.element[15].max = "1"
* differential.element[15].mustSupport = true
* differential.element[15].type.code = #string

* differential.element[16].id = "ProductSubmissionDocument.labeler.registrant.establishment.businessOperation"
* differential.element[16].path = "ProductSubmissionDocument.labeler.registrant.establishment.businessOperation"
* differential.element[16].short = "Establishment Business Operations"
* differential.element[16].definition = "Various business operations that the Establishment organization performs."
* differential.element[16].min = 1
* differential.element[16].max = "*"
* differential.element[16].mustSupport = true
* differential.element[16].type.code = #BackboneElement

* differential.element[17].id = "ProductSubmissionDocument.labeler.registrant.establishment.businessOperation.code"
* differential.element[17].path = "ProductSubmissionDocument.labeler.registrant.establishment.businessOperation.code"
* differential.element[17].short = "Business Operation Type"
* differential.element[17].definition = "A code representing the specific business operation that the Establishment organization can perform."
* differential.element[17].min = 1
* differential.element[17].max = "1"
* differential.element[17].mustSupport = true
* differential.element[17].type.code = #CodeableConcept

* differential.element[18].id = "ProductSubmissionDocument.labeler.registrant.establishment.businessOperation.productNDC"
* differential.element[18].path = "ProductSubmissionDocument.labeler.registrant.establishment.businessOperation.productNDC"
* differential.element[18].short = "Business Operation Product NDC"
* differential.element[18].definition = "The NDC code of the specific product that this business operation is about."
* differential.element[18].min = 0
* differential.element[18].max = "1"
* differential.element[18].mustSupport = true
* differential.element[18].type.code = #CodeableConcept

* differential.element[19].id = "ProductSubmissionDocument.relatedDocument"
* differential.element[19].path = "ProductSubmissionDocument.relatedDocument"
* differential.element[19].short = "Reference to Related Document"
* differential.element[19].definition = "Reference to other documents that contain relevant information about this product submission."
* differential.element[19].min = 0
* differential.element[19].max = "*"
* differential.element[19].mustSupport = true
* differential.element[19].type.code = #BackboneElement

* differential.element[20].id = "ProductSubmissionDocument.relatedDocument.identifier"
* differential.element[20].path = "ProductSubmissionDocument.relatedDocument.identifier"
* differential.element[20].short = "Related Document Identifier"
* differential.element[20].definition = "A unique identifier of this related document."
* differential.element[20].min = 1
* differential.element[20].max = "1"
* differential.element[20].mustSupport = true
* differential.element[20].type.code = #string

* differential.element[21].id = "ProductSubmissionDocument.relatedDocument.submissionIdentifier"
* differential.element[21].path = "ProductSubmissionDocument.relatedDocument.submissionIdentifier"
* differential.element[21].short = "Related Document Submission Identifier"
* differential.element[21].definition = "A unique identifier of the submission of this related document."
* differential.element[21].min = 1
* differential.element[21].max = "1"
* differential.element[21].mustSupport = true
* differential.element[21].type.code = #string

* differential.element[22].id = "ProductSubmissionDocument.relatedDocument.versionNumber"
* differential.element[22].path = "ProductSubmissionDocument.relatedDocument.versionNumber"
* differential.element[22].short = "Related Document Version Number"
* differential.element[22].definition = "An integer that provides a sequence to the versions of the related document."
* differential.element[22].min = 1
* differential.element[22].max = "1"
* differential.element[22].mustSupport = true
* differential.element[22].type.code = #positiveInt

* differential.element[23].id = "ProductSubmissionDocument.section"
* differential.element[23].path = "ProductSubmissionDocument.section"
* differential.element[23].short = "Document Sections"
* differential.element[23].definition = "A logical grouping of Product Submission information."
* differential.element[23].min = 1
* differential.element[23].max = "*"
* differential.element[23].mustSupport = true
* differential.element[23].type.code = #BackboneElement

* differential.element[24].id = "ProductSubmissionDocument.section.identifier"
* differential.element[24].path = "ProductSubmissionDocument.section.identifier"
* differential.element[24].short = "Section Identifier"
* differential.element[24].definition = "An identifier for this section that can be used to reference it in the document."
* differential.element[24].min = 1
* differential.element[24].max = "1"
* differential.element[24].mustSupport = true
* differential.element[24].type.code = #string

* differential.element[25].id = "ProductSubmissionDocument.section.effectiveTime"
* differential.element[25].path = "ProductSubmissionDocument.section.effectiveTime"
* differential.element[25].short = "Section Effective Time"
* differential.element[25].definition = "The date when this section was authored."
* differential.element[25].min = 1
* differential.element[25].max = "1"
* differential.element[25].mustSupport = true
* differential.element[25].type.code = #date

* differential.element[26].id = "ProductSubmissionDocument.section.type"
* differential.element[26].path = "ProductSubmissionDocument.section.type"
* differential.element[26].short = "Section Type"
* differential.element[26].definition = "A code that identifies the content conveyed in this section."
* differential.element[26].min = 1
* differential.element[26].max = "1"
* differential.element[26].mustSupport = true
* differential.element[26].type.code = #CodeableConcept

* differential.element[27].id = "ProductSubmissionDocument.section.title"
* differential.element[27].path = "ProductSubmissionDocument.section.title"
* differential.element[27].short = "Section Title"
* differential.element[27].definition = "A header for the content contained in this section."
* differential.element[27].min = 0
* differential.element[27].max = "1"
* differential.element[27].mustSupport = true
* differential.element[27].type.code = #string

* differential.element[28].id = "ProductSubmissionDocument.section.text"
* differential.element[28].path = "ProductSubmissionDocument.section.text"
* differential.element[28].short = "Section Text"
* differential.element[28].definition = "The human readable content of this section."
* differential.element[28].min = 0
* differential.element[28].max = "1"
* differential.element[28].mustSupport = true
* differential.element[28].type.code = #xhtml

* differential.element[29].id = "ProductSubmissionDocument.section.highlights"
* differential.element[29].path = "ProductSubmissionDocument.section.highlights"
* differential.element[29].short = "Section Text Highlights"
* differential.element[29].definition = "Content that is not a complete rendering of the information in this section."
* differential.element[29].min = 0
* differential.element[29].max = "1"
* differential.element[29].mustSupport = true
* differential.element[29].type.code = #xhtml

* differential.element[30].id = "ProductSubmissionDocument.section.image"
* differential.element[30].path = "ProductSubmissionDocument.section.image"
* differential.element[30].short = "Section Images"
* differential.element[30].definition = "References to images that are used in the human readable content of this section."
* differential.element[30].min = 0
* differential.element[30].max = "*"
* differential.element[30].mustSupport = true
* differential.element[30].type.code = #BackboneElement

* differential.element[31].id = "ProductSubmissionDocument.section.image.name"
* differential.element[31].path = "ProductSubmissionDocument.section.image.name"
* differential.element[31].short = "Image Title"
* differential.element[31].definition = "Title of the image."
* differential.element[31].min = 1
* differential.element[31].max = "1"
* differential.element[31].mustSupport = true
* differential.element[31].type.code = #string

* differential.element[32].id = "ProductSubmissionDocument.section.image.reference"
* differential.element[32].path = "ProductSubmissionDocument.section.image.reference"
* differential.element[32].short = "Image Reference"
* differential.element[32].definition = "Reference, either local or remote, to the image data."
* differential.element[32].min = 1
* differential.element[32].max = "1"
* differential.element[32].mustSupport = true
* differential.element[32].type.code = #url

* differential.element[33].id = "ProductSubmissionDocument.section.product"
* differential.element[33].path = "ProductSubmissionDocument.section.product"
* differential.element[33].short = "Section Product Information"
* differential.element[33].definition = "."
* differential.element[33].min = 0
* differential.element[33].max = "*"
* differential.element[33].mustSupport = true
* differential.element[33].type.code = #SubmittedProduct

* differential.element[34].id = "ProductSubmissionDocument.section.subsection"
* differential.element[34].path = "ProductSubmissionDocument.section.subsection"
* differential.element[34].short = "Section sub-sections"
* differential.element[34].definition = "Sub-groupings of the content contained in a section."
* differential.element[34].min = 0
* differential.element[34].max = "*"
* differential.element[34].mustSupport = true
* differential.element[34].contentReference = "http://hl7.org/fhir/us/spl/StructureDefinition/ProductSubmissionDocumentLogicalModel#ProductSubmissionDocument.section"
