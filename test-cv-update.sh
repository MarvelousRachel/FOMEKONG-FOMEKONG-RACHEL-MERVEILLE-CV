#!/bin/bash

# This script tests that the updated CV files are working correctly

echo "🧪 Testing updated CV files..."

# Check if both CV files exist in the docs folder
if [ -f "docs/Rachel_Merveille_CV.html" ] && [ -f "docs/Rachel_Merveille_CV.txt" ]; then
  echo "✅ CV files exist in the docs folder"
else
  echo "❌ CV files are missing from the docs folder"
  exit 1
fi

# Check if the HTML CV contains the base64 image data
if grep -q "data:image/jpeg;base64" "docs/Rachel_Merveille_CV.html"; then
  echo "✅ HTML CV contains embedded image data"
else
  echo "❌ HTML CV is missing embedded image data"
fi

# Check for updated content in the CV
if grep -q "Underwater SLAM System Development" "docs/Rachel_Merveille_CV.html"; then
  echo "✅ HTML CV contains updated content"
else
  echo "❌ HTML CV is missing updated content"
fi

if grep -q "Underwater SLAM System Development" "docs/Rachel_Merveille_CV.txt"; then
  echo "✅ Text CV contains updated content"
else
  echo "❌ Text CV is missing updated content"
fi

echo "✅ All tests passed! The updated CV files are ready."
echo "You can now view your updated CV on the website."
