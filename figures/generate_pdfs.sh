#!/bin/bash

# Simple Mermaid to PDF converter
# Auto-detects current directory and converts .mmd files to PDF

set -e

CHROME_PATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

# Auto-detect directories based on current location
if [ -d "mmd" ]; then
    # We're in figures/ directory
    INPUT_DIR="mmd"
    OUTPUT_DIR="pdf"
    CONFIG_FILE="mermaid-config.json"
elif [ -d "figures/mmd" ]; then
    # We're in project root directory
    INPUT_DIR="figures/mmd"
    OUTPUT_DIR="figures/pdf"
    CONFIG_FILE="figures/mermaid-config.json"
else
    echo "Error: Cannot find mmd directory. Please run from project root or figures/ directory."
    exit 1
fi

echo "Input directory: $INPUT_DIR"
echo "Output directory: $OUTPUT_DIR"

# Create output directory
mkdir -p "$OUTPUT_DIR"

# Find all .mmd files and convert them
for mmd_file in "$INPUT_DIR"/*.mmd; do
    if [ -f "$mmd_file" ]; then
        basename=$(basename "$mmd_file" .mmd)
        pdf_file="$OUTPUT_DIR/${basename}.pdf"
        
        echo "Converting: $(basename "$mmd_file") -> $(basename "$pdf_file")"
        
        mmdc -i "$mmd_file" -o "$pdf_file" -e pdf --pdfFit \
             --configFile "$CONFIG_FILE" \
             --puppeteerConfigFile <(echo "{\"executablePath\": \"$CHROME_PATH\"}")
    fi
done

echo "All PDFs generated successfully!"