#!/bin/bash

case "$1" in
    dialect)
        java -jar amf.jar validate --format-in "AML 1.0" --media-type-in application/yaml dialect.yaml
        ;;
    example)
        java -jar amf.jar validate -ds file://dialect.yaml --format-in "AML 1.0" --media-type-in application/yaml example.yaml
        ;;
    *)
        echo $"Usage $0 {dialect|example}"
        exit 1
esac