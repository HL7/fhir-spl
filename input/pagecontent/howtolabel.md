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

#### Product Submission Document Author (Labeler)
The author of the document is identified by an [Identified Labeler](StructureDefinition-IdentifiedLabeler.html) instance.  This profile requires a DUNS Number of the organization and a name.

#### Product Submission Registrant
A registrant can be specified by including an [Identified Establishment Registrant](StructureDefinition-IdentifiedEstablishmentRegistrant.html) instance in the bundle.  This profile requires a DUNS number of the organization and a name.

#### Product Submission Establishments
There can be one or more establishments included to specify various product business operations.  Instances of the [Identified Establishment](StructureDefinition-IdentifiedEstablishment.html) profile are included in the bundle.  This profile requires a DUNS number of the organization and a name.   It will be referenced from specific Submitted Medicinal Product instances to indicate the operations that the establishment performs on the product.

#### Product Submission Product Information
Drug Products included in a label are represented using a combination of the following resources:

* [Submitted Medicinal Product](StructureDefinition-SubmittedMedicinalProduct.html)
* [Submitted Medicinal Packaging](StructureDefinition-SubmittedMedicinalPackaging.html)
* [Submitted Manufactured Item](StructureDefinition-SubmittedManufacturedItem.html)
* [Submitted Medicinal Product Marketing](StructureDefinition-SubmittedMedicinalProductMarketing.html)
* [Submitted Medicinal Product Ingredient](StructureDefinition-SubmittedMedicinalProductIngredient.html)
* [Submitted Ingredient Definition](StructureDefinition-SubmitedIngredientDefinition.html)

##### Submitted Medicinal Product

The MedicinalProductDefinition.identifier contains the Item Code which is an NDC code.  A product can contain other identifiers as well.

The MedicinalProductDefinition.route specifies the route of administration.

The MedicinalProductDefinition.specialMeasures contains the DEA schedule code, when applicable.

The MedicinalProductDefinition.marketingStatus specifies the marketing status.  The status code is the marketing status and the dateRange contains the marketing status dates.

The MedicinalProductDefinition.name has one proprietary name which has an optional suffix included and one or many non-proprietary names.

The MedicinalProductDefinition.crossReference.product can be used to specify equivalences to other products.  The product.concept contains the NDC product code of the equivalent product.

The MedicinalProductDefinition.operation lists the operations that establishments have performed on this product.  The operation.type has the specific operation code and the operation.organization references the establishment that is included in the bundle.

##### Submitted Manufactured Item

For every medicinal product, there is a manufactured item that provides product details.

The ManufacturedItemDefinition.manufacturedDoseForm specifies the product form code.

The ManufacturedItemDefinition.property lists the characteristics of the product.  The allowed characteristics are:

* Color - code
* Imprint - string
* Score - quantity
* Shape - code
* Size - quantity
* Flavor - code
* Image - attachment

NOTE: Although Imprint is a string, the FHIR resource does not allow a string so the CodeableConcept.text is used.

##### Submitted Medicinal Product Ingredient

All ingredients, active and inactive, are specified using the Submitted Medicinal Product Ingredient profile.  Each Ingredient points back to the Manufactured Item via the Ingredient.for element reference.

The Ingredient.role is a code that indicates whether the ingredient is Inactive or a specific Active type.

The Ingredient.substance.code specifies the ingredient substance.  Inactive ingredients will specify the substance via a code in the substance.code.concept.  Active ingredients will point to a SubstanceDefinition in the substance.code.reference.

The Ingredient.substance.strength.presentationRatio specifies the strength of the ingredient.

For active ingredients that have a reference ingredient, the Ingredient.substance.strength.referenceStrength specifies the reference ingredient via referenceStrength.substance.concept and the reference strength via referenceStrength.strengthRatio.

##### Submitted Ingredient Definition

For Active Ingredients, the ingredient information is specified using the Submitted Ingredient Definition profile.

The SubstanceDefinition.identifier specifies the ingredient code.

The SubstanceDefinition.name specifies the ingredient name.

The SubstanceDefinition.moiety lists one or two active moieties.  Each active moiety contains an identifier which is the active moiety code and a name.

##### Submitted Medicinal Product Marketing

A product's Marketing Category is specified using the Submitted Medicinal Product Marketing profile.

RegulatedAuthorization.identifier is the marketing application number.

RegulatedAuthorization.subject is a reference to the specific product for this marketing category.

RegulatedAuthorization.type is the category code.

RegulatedAuthorization.region is the territorialAuthority for the marketing category.

RegulatedAuthorization.statusDate has the approval date of the application number.

##### Submitted Medicinal Packaging

All of the product package details are specified using the Submitted Medicinal Packaging profile.

PackagedProductDefinition.packageFor references the specific product for this packaging.

The PackagedProductDefinition.marketingStatus specifies the marketing status of the packaged product.  The status code is the marketing status and the dateRange contains the marketing status dates.

The actual package details are contained in the PackagedProductDefinition.package elements.  Unlike SPL, the FHIR packaging starts with the outermost packaging, i.e. a box, and then nested package elements specify inner packaging, i.e. a bottle.  Eventually, the inner most packaging will reference a contained item which points to the SubmittedManufacturedItem.

PackagedProductDefinition.package.identifier specifies the package item code.

PackagedProductDefinition.package.type specifies the package form code.

PackagedProductDefinition.package.quantity specifies the number of this package within the outer package.  The outermost package will either not specify this or set it to 1.

PackagedProductDefinition.package.property is used to indicate whether the package contains a combination package.

PackagedProductDefinition.package.package is used to specify nested packages.

PackagedProductDefinition.package.containedItem is used to specify the specific product item that is contained in the innermost packaging.  containedItem.item.reference is a reference to the SubmittedManufacturedItem instance and containedItem.amount is the quantity of that product that is contained in the packaging.

NOTE: In FHIR, the entire packaged product has a marketing status.  However, in SPL, individual packages within a packaged product can specify a marketing status.  The PackagedProductDefinition.package.packageInstanceOf extension is used to refer to a separate instance of SubmittedMedicinalPackaging for the inner package marketing status details.

