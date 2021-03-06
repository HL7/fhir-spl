Alias: $NCI-T = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl

ValueSet: LabelerBusinessOperations
Id: valueset-labelerBusinessOperations
Description: "The set of business operations that can be specified for a labelling facility."
* $NCI-T#C25391 "ANALYSIS"
* $NCI-T#C101509 "API/FDF ANALYTICAL TESTING"
* $NCI-T#C82401 "API MANUFACTURE"
* $NCI-T#C101511 "CLINICAL BIOEQUIVALENCE OR BIOAVAILABILITY STUDY"
* $NCI-T#C73608 "DISTRIBUTES DRUG PRODUCTS UNDER OWN PRIVATE LABEL"
* $NCI-T#C101510 "FDF MANUFACTURE"
* $NCI-T#C112113 "HUMAN DRUG COMPOUNDING OUTSOURCING FACILITY"
* $NCI-T#C101512 "IN VITRO BIOEQUIVALENCE OR BIOANALYTICAL TESTING"
* $NCI-T#C84732 "LABEL"
* $NCI-T#C43360 "MANUFACTURE"
* $NCI-T#C84635 "MEDICATED ANIMAL FEED MANUFACTURE"
* $NCI-T#C122061 "OUTSOURCING ANIMAL DRUG COMPOUNDING"
* $NCI-T#C84731 "PACK"
* $NCI-T#C84386 "PARTICLE SIZE REDUCTION"
* $NCI-T#C91403 "POSITRON EMISSION TOMOGRAPHY DRUG PRODUCTION"
* $NCI-T#C73607 "RELABEL"
* $NCI-T#C73606 "REPACK"
* $NCI-T#C70827 "SALVAGE"
* $NCI-T#C175317 "SIP FOREIGN SELLER"
* $NCI-T#C118412 "THIRD-PARTY LOGISTICS PROVIDER"
* $NCI-T#C125710 "TRANSFILL"
* $NCI-T#C118411 "WHOLESALE DRUG DISTRIBUTOR"

ValueSet: EstablishmentBusinessOperations
Id: valueset-establishmentBusinessOperations
Description: "The set of business operations that can be specified for an establishment."
* $NCI-T#C25391 "ANALYSIS"
* $NCI-T#C82401 "API MANUFACTURE"
* $NCI-T#C112113 "HUMAN DRUG COMPOUNDING OUTSOURCING FACILITY"
* $NCI-T#C84732 "LABEL"
* $NCI-T#C43360 "MANUFACTURE"
* $NCI-T#C84635 "MEDICATED ANIMAL FEED MANUFACTURE"
* $NCI-T#C122061 "OUTSOURCING ANIMAL DRUG COMPOUNDING"
* $NCI-T#C84731 "PACK"
* $NCI-T#C84386 "PARTICLE SIZE REDUCTION"
* $NCI-T#C91403 "POSITRON EMISSION TOMOGRAPHY DRUG PRODUCTION"
* $NCI-T#C73607 "RELABEL"
* $NCI-T#C73606 "REPACK"
* $NCI-T#C70827 "SALVAGE"
* $NCI-T#C175317 "SIP FOREIGN SELLER"
* $NCI-T#C125710 "TRANSFILL"

ValueSet: GDUFAFacilityBusinessOperations
Id: valueset-gdufaFacilityBusinessOperations
Description: "The set of business operations that can be specified for a GDUFA facility."
* $NCI-T#C101509 "API/FDF ANALYTICAL TESTING"
* $NCI-T#C82401 "API MANUFACTURE"
* $NCI-T#C101511 "CLINICAL BIOEQUIVALENCE OR BIOAVAILABILITY STUDY"
* $NCI-T#C101510 "FDF MANUFACTURE"
* $NCI-T#C101512 "IN VITRO BIOEQUIVALENCE OR BIOANALYTICAL TESTING"
* $NCI-T#C84731 "PACK"
* $NCI-T#C91403 "POSITRON EMISSION TOMOGRAPHY DRUG PRODUCTION"
* $NCI-T#C73606 "REPACK"

ValueSet: BusinessOperationQualifiers
Id: valueset-businessOperationQualifiers
Description: "Codes that give further information about an organization's business operation."
* $NCI-T#C112092 "Compounding from bulk ingredient"
* $NCI-T#C112094 "Compounding sterile products"
* $NCI-T#C132491 "Contract manufacturing"
* $NCI-T#C170729 "Contract manufacturing for human over-the-counter drug products produced under a monograph"
* $NCI-T#C111077 "Distributes human prescription drug products"
* $NCI-T#C111078 "Distributes human over-the-counter drug products"
* $NCI-T#C112087 "Intent to compound 506E (drug shortage) drugs"
* $NCI-T#C114889 "Manufactures animal prescription drug products"
* $NCI-T#C114891 "Manufactures animal over-the-counter drug products"
* $NCI-T#C114892 "Manufactures animal over-the-counter Type A medicated article drug products"
* $NCI-T#C131710 "Manufactures human over-the-counter drug products not produced under an approved drug application or under a monograph"
* $NCI-T#C131708 "Manufactures human over-the-counter drug products produced under a monograph"
* $NCI-T#C131709 "Manufactures human over-the-counter drug products produced under an approved drug application"
* $NCI-T#C106643 "Manufactures human prescription drug products"
* $NCI-T#C101886 "Manufactures Non-Generics"
* $NCI-T#C114890 "Manufactures veterinary feed directive Type A medicated article drug products"
* $NCI-T#C112091 "No intent to compound 506E (drug shortage) drugs"
* $NCI-T#C112093 "Not compounding from bulk ingredient"
* $NCI-T#C112095 "Not compounding sterile products"
* $NCI-T#C126091 "Transfills Medical Gas"
* $NCI-T#C123274 "Warehouses human prescription drug products"

ValueSet: GDUFAFacilityBusinessOperationQualifiers
Id: valueset-gdufaFacilityBusinessOperationQualifiers
Description: "Codes that give further information about a GUDFA facility's business operation."
* $NCI-T#C132491 "Contract manufacturing"
* $NCI-T#C101886 "Manufactures Non-Generics"

CodeSystem: OrganizationAffiliationCodes
Id: codesystem-organizationAffiliationCodes
Description: "Codes that identify the relationship between two organizations."
* #ESTABLISHMENT "Registrant to Establishment"
* #GDUFA "Registrant to GDUFA Facility"

CodeSystem: SPLOrganizationTypes
Id: codesystem-splOrganizationTypes
Description: "Codes that identify the types of organizations involved in a SPL submission."
* #Labeler "An organization that submits product labels."
* #Registrant "An organization that registers other organizations."
* #Establishment "An organization that provides operations in the manufacturing of a product."
* #USAgent "An organization that acts on the behalf of a Labeler or Establishment in the US."
* #Importer "An organization that imports products."
* #GenericDrugUseFacility "An organization that produces generic drug products."
