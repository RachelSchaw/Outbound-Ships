#!/usr/bin/env bash

# Create a new release note from template
# Usage: ./create-release-note.sh <version> <product-name>

set -e

VERSION="$1"
PRODUCT="${2:-Foundry Platform}"

if [ -z "$VERSION" ]; then
    echo "Usage: $0 <version> [product-name]"
    echo "Example: $0 2.5.0 'Foundry Platform'"
    exit 1
fi

OUTPUT_DIR="foundry-release-notes"
OUTPUT_FILE="$OUTPUT_DIR/v$VERSION.md"

# Check if file already exists
if [ -f "$OUTPUT_FILE" ]; then
    echo "Error: Release note already exists: $OUTPUT_FILE"
    exit 1
fi

# Copy template and replace placeholders
cp "$OUTPUT_DIR/TEMPLATE.md" "$OUTPUT_FILE"

# Get current date in ISO format
CURRENT_DATE=$(date -u +"%Y-%m-%d")

# Replace placeholders
sed -i "s/\[VERSION\]/$VERSION/g" "$OUTPUT_FILE"
sed -i "s/\[YYYY-MM-DD\]/$CURRENT_DATE/g" "$OUTPUT_FILE"

echo "✓ Created release note: $OUTPUT_FILE"
echo "Next steps:"
echo "  1. Edit $OUTPUT_FILE with release details"
echo "  2. Validate: ./scripts/validate-data.sh <corresponding-json-file>"
echo "  3. Commit and create a pull request"
