### Current State
* Description of the current state of submitting SPL

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="current_process.png" alt="Current SPL Submission diagram"/>
  <figcaption>Figure 2.1 - Current SPL Submission Approach</figcaption>
</figure>
{::options parse_block_html="true" /}

* Brief reason why we are looking at switching to FHIR
	
### Current In-Scope SPL Document Types
* List which SPL documents are in-scope

#### NDC/NHRIC Labeler Request/Inactivation
<a href="StructureDefinition-LabelerCodeRequestLogicalModel.html">Labeler Code Request Logical Model</a>

#### Establishment Registration/No-Change/Inactivation
<a href="StructureDefinition-EstablishmentRegistrationLogicalModel.html">Establishment Registration Logical Model</a>
	
#### GDUFA Facility Identification
<a href="StructureDefinition-GDUFAFacilityIdentificationLogicalModel.html">GDUFA Facility Identification Logical Model</a>
	
#### Product Submission
* List the different SPL Document Types for this use case
<a href="StructureDefinition-ProductSubmissionDocumentLogicalModel.html">Product Submission Document Logical Model</a>

### Business Requirements
* Explain how we are proposing a dual-submission architecture

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="dual_submission_process.png" alt="Proposed Dual Submission diagram"/>
  <figcaption>Figure 2.2 - Proposed Dual Submission Approach</figcaption>
</figure>
{::options parse_block_html="true" /}


### Work Flow
* Describe the workflow of the two submission approaches

#### SPL Submission Process
* Describe the SPL Submission conversion to FHIR process

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="spl_submission.png" alt="Proposed Incoming SPL Submission diagram"/>
  <figcaption>Figure 2.3 - Proposed SPL to FHIR Approach</figcaption>
</figure>
{::options parse_block_html="true" /}

#### FHIR Submission Process
* Describe the FHIR Submission conversion to SPL process

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="fhir_submission.png" alt="Proposed Incoming FHIR Submission diagram"/>
  <figcaption>Figure 2.4 - Proposed FHIR to SPL Approach</figcaption>
</figure>
{::options parse_block_html="true" /}
