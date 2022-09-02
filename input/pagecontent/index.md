### Overview
This FHIR Implementation Guide is focused on supporting the FDA implementation of the HL7 Structured Product Labeling (SPL) standard using FHIR.  Currently, vendors submit their drug labels using the HL7 V3 SPL standard.  This Implementation guide provides details on how future submissions can be made using the FHIR specification.  It provides a set of FHIR profiles that outline the required data elements and any needed extensions to the core FHIR resources.  It also provides a set of XSL transforms that allow for the conversion of SPL submissions to FHIR Bundles as well as from FHIR Bundles to SPL submissions.

#### SPL Use Cases
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
* XSL Transforms that convert from SPL to FHIR and from FHIR to SPL

**NOTE:** The following product elements are out-of-scope for this phase: Products intended for Animals, Dietary Supplements, Medical Food Products, Device Products, and Cosmetic Products.
