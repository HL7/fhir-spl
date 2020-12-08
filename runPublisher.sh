#!/bin/bash
java -jar plantuml.jar -checkmetadata uml-source/* -o ../input/images
./_genonce.sh
