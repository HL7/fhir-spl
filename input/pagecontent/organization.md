### Organization Use Cases

This page details the following use cases that all use profiles based on the Organization resource:

1. UC01 - Request an NDC Labeler Code
	* 51726-8 NDC Labeler Code Request
	* 69968-6 NDC Labeler Code Inactivation
2. UC02 - Register or updated the information of an Establishment
	* 51725-0 Establishment Registration
	* 70097-1 Establishment De-Registration
	* 53410-7 No Change Notification
	* 53411-5 Out of Business Notification
	* 01 Establishment Inactivation (a FHIR-specific message type)
3. UC03 - Submit GDUFA Facility Self-Identification
	* 71743-9 Generic Drug Facility Identification Submission
	* 72090-4 Identification of CBER-regulated generic drug facility
	* 02 GDUFA Facility Inactivation (a FHIR-specific message type)

Here is a high level diagram that shows the generic use of the profiles for these use cases:

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="OrganizationProfiles.png" alt="Organization Profiles diagram"/>
  <figcaption>Figure 2.1 - Organization Profiles</figcaption>
</figure>
{::options parse_block_html="true" /}


#### Labeler Code Use Case
Here are the profiles used in the Labeler Code Request action:

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="LabelerCodeRequestProfiles.png" alt="Labeler Code Request Profiles diagram"/>
  <figcaption>Figure 2.2 - Labeler Code Request Profiles</figcaption>
</figure>
{::options parse_block_html="true" /}


Here are the profiles used in the Labeler Code Inactivation action:

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="LabelerInactivationProfiles.png" alt="Labeler Code Inactivation Profiles diagram"/>
  <figcaption>Figure 2.3 - Labeler Inactivation Profiles</figcaption>
</figure>
{::options parse_block_html="true" /}


#### Establishment Registration Use Cases
Here are the profiles used in the Establishment Registration action:

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="EstablishmentRegistrationProfiles.png" alt="Establishment Registration Profiles Part 1 diagram"/>
  <figcaption>Figure 2.4 - Establishment Registration Profiles (Part 1)</figcaption>
</figure>
{::options parse_block_html="true" /}

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="EstablishmentRegistrationProfiles2.png" alt="Establishment Registration Profiles Part 2 diagram"/>
  <figcaption>Figure 2.5 - Establishment Registration Profiles (Part 2)</figcaption>
</figure>
{::options parse_block_html="true" /}

Here are the profiles used in the Establishment Inactivation action:

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="EstablishmentInactivationProfiles.png" alt="Establishment Inactivation Profiles diagram"/>
  <figcaption>Figure 2.6 - Establishment Inactivation Profiles</figcaption>
</figure>
{::options parse_block_html="true" /}

#### Generic Drug Facility Use Cases
Here are the profiles used in the Generic Drug Facility Identification action:

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="GDUFAFacilityIdentificationProfiles.png" alt="Generic Drug Facility Identification Profiles diagram"/>
  <figcaption>Figure 2.7 - Generic Drug Facility Identification Profiles</figcaption>
</figure>
{::options parse_block_html="true" /}

Here are the profiles used in the Generic Drug Facility Inactivation action:

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="GDUFAFacilityInactivationProfiles.png" alt="Generic Drug Facility Inactivation Profiles diagram"/>
  <figcaption>Figure 2.8 - Generic Drug Facility Inactivation Profiles</figcaption>
</figure>
{::options parse_block_html="true" /}

#### Out of Business Use Case
Here are the profiles used in the Out of Business Notification action.  This action is used for Establishments and Generic Drug Facilities.

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="OutOfBusinessProfiles.png" alt="Out of Business Notification Profiles diagram"/>
  <figcaption>Figure 2.9 - Out of Business Notification Profiles</figcaption>
</figure>
{::options parse_block_html="true" /}
