### SPL / FHIR Transforms
The following transforms were generated from mappings developed using Altova's MapForce product.  They can be used to convert from SPL submissions to FHIR Bundles and from FHIR Bundles to SPL submissions.

* Labeler Code Request
  * [Labeler Code Request SPL to FHIR](MappingMapToLabelerCodeRequestFHIR.xslt)
  * [Labeler Code Request FHIR to SPL](MappingMapToLabelerCodeRequestSPL.xslt)
  * [Labeler Code Inactivation FHIR to SPL](MappingMapToLabelerCodeInactivationSPL.xslt)
  * [Labeler Code Inactivation SPL to FHIR](MappingMapToLabelerCodeInactivationToFHIR.xslt)
* Establishment Registration
  * [Establishment Registration SPL to FHIR](MappingMapToEstablishmentRegistrationFHIR.xslt)
  * [Establishment Registration FHIR to SPL](MappingMapToEstablishmentRegistrationSPL.xslt)
  * [Establishment Deregistration FHIR to SPL](MappingMapToEstablishmentDeregistrationSPL.xslt)
* Generic Drug Facility Identification
  * [GDUFA Facility Identification SPL to FHIR](MappingMapToGDUFAFacilityIdentificationFHIR.xslt)
  * [GDUFA Facility Identification FHIR to SPL](MappingMapToGDUFAFacilityIdentificationSPL.xslt)
* [Out of Business Notification FHIR to SPL](MappingMapToOutOfBusinessNotificationSPL.xslt) - used for Establishments and Generic Drug Facilities
* Drug Label Submission
  * [Human Prescription Drug Label SPL to FHIR](MappingMapToHumanPrescriptionDrugLabelFHIR.xslt)
  * [Human Prescription Drug Label FHIR to SPL](MappingMapToHumanPrescriptionDrugLabelSPL.xslt)
  * [SPL Narrative Conversion to FHIR](NarrativeConversionToFHIR.xslt)
  * [SPL Narrative Conversion to SPL](NarrativeConversionToSPL.xslt)


#### Drug Label Transformations
The Drug Label Submissions require two transformations.  First the narrative must be converted from SPL format to XHTML tags or from XHTML tags to SPL format using the Narrative Conversion transformations.  After that, the second transformation converts the rest of the information into the appropriate format.
