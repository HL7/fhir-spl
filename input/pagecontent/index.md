### Overview
This FHIR Implementation Guide is focused on supporting the FDA implementation of the HL7 SPL standard using FHIR.  We will be proposing a sample architecture that supports dual submissions of SPL documents via the existing SPL standard and using FHIR resources.

#### Discussion of the four use cases we are addressing
The first phase of the project focuses on SPL-to-FHIR and FHIR-to-SPL data element mapping and processing related to Medicinal Products and Establishment/Facility Registration.  The scope includes the four use cases listed below along with their corresponding SPL document types:

1. UC01 - Request an NDC Labeler Code
	* 51726-8 NDC Labeler Code Request
	* 69968-6 NDC Labeler Code Inactivation
2. UC02 - Register or updated the information of an Establishment
	* 51725-0 Establishment Registration
	* 70097-1 Establishment De-Registration
	* 53410-7 No Change Notification
	* 53411-5 Out of Business Notification
3. UC03 - Submit GDUFA Facility Self-Identification
	* 71743-9 Generic Drug Facility Identification Submission
	* 72090-4 Identification of CBER-regulated generic drug facility
4. UC04 - Submit a Drug or Biologic Label
	* 53409-9 Bulk Ingredient
	* 60684-8 Cellular Therapy
	* 78744-0 Drug for Further Processing
	* 75031-5 Human Compounded Drug Label
	* 34390-5 Human OTC Drug Label
	* 34391-3 Human Prescription Drug Label
	* 53408-1 Licensed Minimally Manipulated Cells Label
	* 53406-5 Licensed Vaccine Bulk Intermediate Label
	* 53405-7 Non-Standardized Allergenic Label
	* 60683-0 Plasma Derivative
	* 60682-2 Standardized Allergenic
	* 53404-0 Vaccine Label
	* 86445-4 Blanket No Changes Certification of Product Listing

At the end of this phase, this guide will have captured the following:

* SPL-to-FHIR and FHIR-to-SPL data elements mappings for the SPL document types listed above
* FHIR profiles that correspond to the SPL document types listed above

**NOTE:** The following product elements are out-of-scope for this phase: Products intended for Animals, Dietary Supplements, Medical Food Products, Device Products, and Cosmetic Products.

### Content and organization
The implementation guide is organized into the following sections:

* [Use Cases and Overview](usecases.html) describes the intent of the implementation guide, gives examples of its use and provides a high-level overview of expected process flow
* [Formal Specification](specification.html) covers the detailed implementation requirements and conformance expectations
* [Downloads](downloads.html) allows download of this and other specifications as well as other useful files
* [Credits](credits.html) identifies the individuals and organizations involved in developing this implementation guide

### Dependencies
This implementation guide relies on the following other specifications:
* **[FHIR R4]({{site.data.fhir.path}})** - The 'current' official version of FHIR as of the time this implementation guide was published.

This implementation guide defines additional constraints and usage expectations above and beyond the information found in these base specifications.
