#!/bin/bash

echo "Testing CV with embedded image..."

# Check if the CV HTML file exists
if [ ! -f "Rachel_Merveille_CV.html" ]; then
  echo "❌ Error: Rachel_Merveille_CV.html file not found!"
  exit 1
fi

# Check if the CV HTML file contains base64 image data
if grep -q "data:image/jpeg;base64" "Rachel_Merveille_CV.html"; then
  echo "✅ Success: CV HTML file contains embedded image data!"
else
  echo "❌ Error: CV HTML file does not contain embedded image data!"
  exit 1
fi

# Open the CV HTML file in the default browser for visual inspection
echo "🔍 Opening CV HTML file in browser for visual inspection..."
open "Rachel_Merveille_CV.html"

echo "✅ All tests passed! The CV now includes the embedded profile image."
