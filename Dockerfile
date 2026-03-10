FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    pandoc \
    texlive-xetex \
    python3 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app

RUN chmod +x build_sap_business_plan_pdf.sh
RUN ./build_sap_business_plan_pdf.sh

EXPOSE 3000
CMD ["python3", "-m", "http.server", "3000", "--directory", "/app/out"]
