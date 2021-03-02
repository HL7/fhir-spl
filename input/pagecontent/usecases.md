### Current State
* Description of the current state of submitting SPL

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="current_process.png" alt="Current SPL Submission diagram"/>
  <figcaption>Figure 2.1 - Current SPL Submission Approach</figcaption>
</figure>
{::options parse_block_html="true" /}

* Brief reason why we are looking at switching to FHIR
	
### NDC/NHRIC Labeler Request/Inactivation
<a href="StructureDefinition-LabelerCodeRequestLogicalModel.html">Labeler Code Request Logical Model</a>

### Establishment Registration/No-Change/Inactivation
<a href="StructureDefinition-EstablishmentRegistrationLogicalModel.html">Establishment Registration Logical Model</a>
	
### GDUFA Facility Identification
<a href="StructureDefinition-GDUFAFacilityIdentificationLogicalModel.html">GDUFA Facility Identification Logical Model</a>
	
### Product Submission
<a href="StructureDefinition-ProductSubmissionDocumentLogicalModel.html">Product Submission Document Logical Model</a>

### Business Requirements
* Explain how we are proposing a dual-submission architecture

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" src="dual_submission_process.png" alt="Proposed Dual Submission diagram"/>
  <figcaption>Figure 2.2 - Proposed Dual Submission Approach</figcaption>
</figure>
{::options parse_block_html="true" /}


### Work Flow
{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" src="SPL_Process_Flow.png" alt="Dual Submission Proposed Workflow diagram"/>
  <figcaption>Figure 2.3 - Dual Submission Proposed Workflow</figcaption>
</figure>
{::options parse_block_html="true" /}

#### SPL Submission Process
* Describe the SPL Submission conversion to FHIR process

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" src="Incoming_SPL_Process_Flow.png" alt="Incoming SPL Proposed Workflow diagram"/>
  <figcaption>Figure 2.4 - Incoming SPL Proposed Workflow</figcaption>
</figure>
{::options parse_block_html="true" /}

#### FHIR Submission Process
* Describe the FHIR Submission conversion to SPL process

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" src="Incoming_FHIR_Process_Flow.png" alt="Incoming FHIR Proposed Workflow diagram"/>
  <figcaption>Figure 2.5 - Incoming FHIR Proposed Workflow</figcaption>
</figure>
{::options parse_block_html="true" /}
