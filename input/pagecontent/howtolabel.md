### FHIR SPL Documents
SPL Documents in FHIR use the [FHIR Document](http://hl7.org/fhir/documents.html) paradigm.  There is an instance of a [Product Submission Bundle](StructureDefinition-ProductSubmissionBundle.html) which will have the various parts of the document as entries.  One of the entries will be the [Product Submission Document Composition](StructureDefinition-ProductSubmissionDocument.html), one will be the [Labeler](StructureDefinition-IdentifiedLabeler.html), and the remaining entries will be for the structured product information as well as other organizations (Establishments, Registraints) that need to be identified in the label.

#### Product Submission Bundle
The Bundle.identifier is the identifier of the document and is equivalent to SPL's Document Id.

The Bundle.timestamp is the effective time of the document.

#### Product Submission Composition
The Composition.identifier is a version-independent identifier of the document and is equivalent to SPL's Set Id.

The Composition.versionNumber extension is used to identify the version of this document.

The Composition.type is a LOINC code that identifies the specific type of Drug Label document.

The Composition.title is a string in FHIR and does not allow for markup, unlike the SPL document title.

The Composition.author is a reference to the Labeler (which will be included in the Product Submission Bundle).

The Composition.sections includes the structured text and structured data elements.

##### Product Submission Composition Sections
The section.id provides an id for the section.  This is equivalent to the SPL Section id element.

The section.title is the label of the section.  It does not allow for markup.

The section.code is a LOINC code that identifies the specific type of section.

The section.sectionTime extension provides an effectivetime for the section which may differ from the time of the document creation.

The section.linkdId extension provides an ID that is used when linking to the section from the section narrative text.  This is equivalent to the SPL Section ID attribute.

Sections can include narrative text in the section.text element or they can reference structured data in the section.entry element.
The section.text is FHIR Narrative and provides the human readable text content for the section.  It allows the full use of XHTML tags that FHIR Narrative does.  Both the highlights and the actual section content should be contained in the text element.  They should be wrapped in a div tag with a class of "highlight" for highlights and "narrative" for section content.

               <text>
                  <status value="additional"/>
                  <xhtml:div>
                     <div xmlns="http://www.w3.org/1999/xhtml" style="narrative">
                        <ul>
                           <li> Injection: 25 mg/0.5 mL and 50 mg/mL clear, colorless solution in a single-dose prefilled syringe</li>
                           <li> Injection: 50 mg/mL clear, colorless solution in a single-dose prefilled SureClick autoinjector</li>
                           <li> Injection: 25 mg/0.5 mL clear, colorless solution in a single-dose vial</li>
                           <li> For Injection: 25 mg lyophilized powder in a multiple-dose vial for reconstitution</li>
                           <li> Injection: 50 mg/mL clear, colorless solution in Enbrel Mini single-dose prefilled cartridge for use with the AutoTouch reusable autoinjector only</li>
                        </ul>
                     </div>
                     <div xmlns="http://www.w3.org/1999/xhtml" style="highlight">
                        <ul>
                           <li> Injection: 25 mg/0.5 mL and 50 mg/mL solution in a single-dose prefilled syringe (<a href="#S3">3</a>)</li>
                           <li> Injection: 50 mg/mL solution in single-dose prefilled SureClick<sup>®</sup> Autoinjector (<a href="#S3">3</a>)</li>
                           <li> Injection: 25 mg/0.5 mL solution in a single-dose vial (<a href="#S3">3</a>)</li>
                           <li> For Injection: 25 mg lyophilized powder in a multiple-dose vial for reconstitution (<a href="#S3">3</a>)</li>
                           <li> Injection: 50 mg/mL solution in Enbrel Mini<sup>®</sup> single-dose prefilled cartridge for use with the AutoTouch<sup>®</sup> reusable autoinjector only (<a href="#S3">3</a>)</li>
                        </ul>
                     </div>
                  </xhtml:div>
               </text>
            </section>

Sections can include subsections.  Subsections can only have narrative text and can not reference structured data.

###### Specific Product Submission Sections
The Product Submission Document profile calls out two specific sections:

* Product Section (LOINC Code - 48780-1)
* Label Display (LOINC Code - 51945-4)

The Product Section has multiple entries that point to Submitted Medicinal Product resources.

The Label Display disallows entries and sub-sections.

#### Product Submission Document Author
The author of the document is identified by an [Identified Labeler](StructureDefinition-IdentifiedLabeler.html) instance.  This profile requires a DUNS Number of the organization and a name.

#### Product Submission Product Information
Drug Products included in a label are represented using a combination of the following resources:

* [Submitted Medicinal Product](StructureDefinition-SubmittedMedicinalProduct.html)
* [Submitted Medicinal Packaging](StructureDefinition-SubmittedMedicinalPackaging.html)
* [Submitted Manufactured Item](StructureDefinition-SubmittedManufacturedItem.html)
* [Submitted Medicinal Product Marketing](StructureDefinition-SubmittedMedicinalProductMarketing.html)
* [Submitted Medicinal Product Ingredient](StructureDefinition-SubmittedMedicinalProductIngredient.html)
* [Submitted Ingredient Definition](StructureDefinition-SubmitedIngredientDefinition.html)

