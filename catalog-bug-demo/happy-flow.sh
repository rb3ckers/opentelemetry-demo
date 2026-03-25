#! /usr/bin/env bash

# Updates the catalog pod with the custom docker image, but it doesn't have any known bugs
# Image is: ghcr.io/rb3ckers/otel-demo:v2.2.1-custom.1-product-catalog

kubectl --context demo-dev.preprod.stackstate.io -n opentelemetry-demo-chaos \
  set image deployment/product-catalog \
  product-catalog=ghcr.io/rb3ckers/otel-demo:v2.2.1-custom.1-product-catalog
