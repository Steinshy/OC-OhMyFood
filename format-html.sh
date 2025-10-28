#!/bin/bash

echo "Formatting files with Prettier..."

# Format with Prettier using modern settings
npx prettier --write \
  --html-whitespace-sensitivity ignore \
  --bracket-same-line \
  --print-width 200 \
  "*.html" \
  "css/**/*.css" \
  "css/*.css"

# Remove trailing slashes from HTML5 void elements (e.g., <meta /> -> <meta>)
# This converts XML-style self-closing to HTML5 void elements
echo "Removing trailing slashes for HTML5 compliance..."
for file in *.html; do
  if [ -f "$file" ]; then
    # Replace " />" with ">" - HTML5 void tags don't need trailing slashes
    sed -i '' 's| />|>|g' "$file"
    echo "  ✓ $file"
  fi
done

echo "✓ Formatting complete!"
