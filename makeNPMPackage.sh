version=`sed -En 's/  "original-version" : "([0-9]\.[0-9]\.[0-9])",/\1/p' ~/.fhir/packages/hl7.fhir.us.spl\#dev/package/package.json`
sed -Ei '' 's/  "version" : "dev"/  "version" : "'"$version"'"/' ~/.fhir/packages/hl7.fhir.us.spl\#dev/package/package.json
cd ~/.fhir/packages/hl7.fhir.us.spl\#dev
tar -czvf ~/Documents/DDIWork/Samvit/SPL/fhir-spl/package/hl7.fhir.us.spl.tgz package
cd -

