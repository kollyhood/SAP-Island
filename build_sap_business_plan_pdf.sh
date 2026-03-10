#!/usr/bin/env bash
set -euo pipefail

mkdir -p out

pandoc sap_business_plan_v1_0.md \
  -o out/sap_business_plan_v1_2.pdf \
  --pdf-engine=xelatex \
  --resource-path=.

echo "Built out/sap_business_plan_v1_2.pdf"
