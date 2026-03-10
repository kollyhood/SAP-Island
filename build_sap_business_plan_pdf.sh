#!/usr/bin/env bash
set -euo pipefail
python /home/oai/skills/pdfs/scripts/md_to_pdf.py /mnt/data/sap_business_plan_v1_0.md -o /mnt/data/sap_business_plan_v1_0_from_markdown.pdf --pdf_engine xelatex
