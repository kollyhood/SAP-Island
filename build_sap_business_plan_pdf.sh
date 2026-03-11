#!/usr/bin/env bash
set -euo pipefail

mkdir -p out

pandoc idc_business_plan_master_v_1.md \
  -o out/idc_business_plan_master_v_1.pdf \
  --pdf-engine=xelatex \
  --resource-path=.

echo "Built out/idc_business_plan_master_v_1.pdf"
