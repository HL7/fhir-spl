# SPL to FHIR

This FHIR Implementation Guide serves as a repository for all of the FHIR profiles that are created for the SPL FHIR project.  These profiles allow for mappings from the FDA Structured Product Labelling specification to FHIR resources.

# Building the SPL to FHIR IGuide

## Compiling with SUSHI

This IGuide is developed in [FHIR Shorthand (FSH)](http://build.fhir.org/ig/HL7/fhir-shorthand/), a domain-specific language (DSL) for defining the content of FHIR Implementation Guides (IG).

After you check out the guide source from Github, install SUSHI (the FSH compiler), [as instructed here](http://build.fhir.org/ig/HL7/fhir-shorthand/sushi.html). 

## Running the IG Publisher

Now run:

Windows:   `$ _genonce`

Mac:   `$ ./_genonce.sh`

This will run the HL7 IG Publisher, which will take several minutes to complete. After the publisher is finished, open the file _./output/index.html_ to see the resulting IG.

To get a clean build, you may delete the _./input_ and/or the _./output_ directories.
