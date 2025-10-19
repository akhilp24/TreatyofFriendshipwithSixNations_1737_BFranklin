#!/bin/bash

IMAGES_DIR="images"
OUTPUT_DIR="ocr_text"

if [ ! -d "$IMAGES_DIR" ]; then
    echo "Error: $IMAGES_DIR directory not found!"
    exit 1
fi

if [ ! -d "$OUTPUT_DIR" ]; then
    echo "Error: $OUTPUT_DIR directory not found!"
    exit 1
fi

if ! command -v tesseract &> /dev/null; then
    echo "Error: Tesseract is not installed or not in PATH"
    echo "Please install Tesseract OCR first"
    exit 1
fi

echo "Starting OCR processing..."
echo "Images directory: $IMAGES_DIR"
echo "Output directory: $OUTPUT_DIR"
echo "----------------------------------------"

total_files=0
processed_files=0

for image_file in "$IMAGES_DIR"/*.jpg; do
    if [ -f "$image_file" ]; then
        ((total_files++))
    fi
done

echo "Found $total_files image files to process"
echo "----------------------------------------"

for image_file in "$IMAGES_DIR"/*.jpg; do
    if [ -f "$image_file" ]; then
        base_name=$(basename "$image_file" .jpg)
        output_file="$OUTPUT_DIR/${base_name}.txt"
        ((processed_files++))
        echo "[$processed_files/$total_files] Processing: $image_file"
        if tesseract "$image_file" "$output_file"; then
            echo "  ✓ Successfully processed -> $output_file"
        else
            echo "  ✗ Error processing $image_file"
        fi
        echo ""
    fi
done

echo "----------------------------------------"
echo "OCR processing completed!"
echo "Processed $processed_files out of $total_files files"
echo "Check the $OUTPUT_DIR folder for the extracted text files."
