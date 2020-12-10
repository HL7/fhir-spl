#!/bin/bash
java -jar template/scripts/plantuml.jar -checkmetadata input/images-source/* -o ../images
./_genonce.sh
