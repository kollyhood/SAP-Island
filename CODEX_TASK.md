# Codex Task: Convert accepted SAP business plan PDF into Markdown master

Goal: create and maintain a GitHub-friendly Markdown source for the accepted business plan so PDF can be regenerated on demand.

## Source file
Use the accepted project PDF:
- `sap_business_plan_v1_0.pdf`

## Deliverables
Create these files in the repo root:
- `sap_business_plan_v1_0.md`
- `build_sap_business_plan_pdf.sh`

## Requirements
1. Preserve the business-plan structure and visual rhythm of the accepted PDF.
2. Keep it Pandoc-friendly so it can be converted back to PDF.
3. Retain:
   - title and subtitle
   - lead metrics line below title
   - numbered/sectioned business-plan flow
   - bullet lists
   - tables for revenue, team cost, and funding use
   - explicit page break between page 1 and page 2 using `\newpage`
4. Use YAML front matter and minimal LaTeX header includes so the regenerated PDF stays close to the accepted version.
5. Keep wording faithful to the accepted PDF. Do not rewrite the business meaning.
6. Use ASCII hyphen `-` instead of typographic dashes when practical for renderer safety.

## Build command
```bash
pandoc sap_business_plan_v1_0.md -o sap_business_plan_v1_0_from_markdown.pdf --pdf-engine=xelatex --resource-path=.
```

## QA
- Generated PDF should be 2 pages.
- Headings, tables, and spacing should feel close to the accepted PDF.
- Markdown should be readable in GitHub and also suitable as the master source.
