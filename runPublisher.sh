#!/bin/bash
java -jar plantuml.jar uml-source/* -o ../input/images
./_genonce.sh
