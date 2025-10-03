#!/usr/bin/env bash

# Validate JSON data against schema
# Usage: ./validate-data.sh <json-file>

set -e

if [ -z "$1" ]; then
    echo "Usage: $0 <json-file>"
    exit 1
fi

JSON_FILE="$1"
SCHEMA_FILE="data-source/schema.json"

# Check if files exist
if [ ! -f "$JSON_FILE" ]; then
    echo "Error: JSON file not found: $JSON_FILE"
    exit 1
fi

if [ ! -f "$SCHEMA_FILE" ]; then
    echo "Error: Schema file not found: $SCHEMA_FILE"
    exit 1
fi

# Install ajv-cli if not already installed
if ! command -v ajv &> /dev/null; then
    echo "Installing ajv-cli..."
    npm install -g ajv-cli
fi

# Validate
echo "Validating $JSON_FILE against $SCHEMA_FILE..."
ajv validate -s "$SCHEMA_FILE" -d "$JSON_FILE" --strict=false

if [ $? -eq 0 ]; then
    echo "✓ Validation successful!"
else
    echo "✗ Validation failed!"
    exit 1
fi
