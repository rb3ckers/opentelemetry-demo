#! /usr/bin/env bash

# Updates the catalog pod with a custom docker image, that introduces a bug that causes OOM
# Image is: ghcr.io/rb3ckers/otel-demo:v2.2.1-custom.3-product-catalog

kubectl --context demo-dev.preprod.stackstate.io -n opentelemetry-demo-chaos \
  set image deployment/product-catalog \
  product-catalog=ghcr.io/rb3ckers/otel-demo:v2.2.1-custom.3-product-catalog
