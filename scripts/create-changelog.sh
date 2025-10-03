#!/usr/bin/env bash

# Create a new changelog entry from template
# Usage: ./create-changelog.sh <category>

set -e

CATEGORY="$1"

if [ -z "$CATEGORY" ]; then
    echo "Usage: $0 <category>"
    echo "Categories: content, platform, api, tool, deprecation, issue"
    exit 1
fi

# Validate category
case "$CATEGORY" in
    content|platform|api|tool|deprecation|issue)
        ;;
    *)
        echo "Error: Invalid category. Must be one of: content, platform, api, tool, deprecation, issue"
        exit 1
        ;;
esac

OUTPUT_DIR="devmicrosoft-changelog"
CURRENT_DATE=$(date -u +"%Y-%m-%d")
OUTPUT_FILE="$OUTPUT_DIR/${CURRENT_DATE}-${CATEGORY}.md"

# Check if file already exists
if [ -f "$OUTPUT_FILE" ]; then
    echo "Warning: File already exists: $OUTPUT_FILE"
    read -p "Overwrite? (y/N) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# Copy template and replace placeholders
cp "$OUTPUT_DIR/TEMPLATE.md" "$OUTPUT_FILE"

# Replace placeholders (cross-platform compatible)
# Capitalize first letter of category (portable method)
CATEGORY_CAPITALIZED="$(echo "${CATEGORY:0:1}" | tr '[:lower:]' '[:upper:]')${CATEGORY:1}"

if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sed -i "" "s/\[YYYY-MM-DD\]/$CURRENT_DATE/g" "$OUTPUT_FILE"
    sed -i "" "s/\[Content\/Platform\/API\/Tool\/Deprecation\/Issue\]/$CATEGORY_CAPITALIZED/g" "$OUTPUT_FILE"
else
    # Linux
    sed -i "s/\[YYYY-MM-DD\]/$CURRENT_DATE/g" "$OUTPUT_FILE"
    sed -i "s/\[Content\/Platform\/API\/Tool\/Deprecation\/Issue\]/$CATEGORY_CAPITALIZED/g" "$OUTPUT_FILE"
fi

echo "✓ Created changelog entry: $OUTPUT_FILE"
echo "Next steps:"
echo "  1. Edit $OUTPUT_FILE with change details"
echo "  2. Review and get approval from content owner"
echo "  3. Commit and create a pull request"
