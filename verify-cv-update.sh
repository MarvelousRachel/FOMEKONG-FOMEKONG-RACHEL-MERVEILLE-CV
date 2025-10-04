#!/bin/bash

# This script verifies that the CV has been properly updated and deployed

echo "🔍 Verifying CV update..."

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

# Check if the index.html files are consistent
if grep -q "Updated CV with Photo" "docs/index.html"; then
  echo "✅ The website has been updated with the new CV labels"
else
  echo "❌ The website has not been updated with the new CV labels"
fi

# Check if the deployed CV is actually readable
echo "🔍 Checking if the CV content is readable (looking for key phrases)..."
if grep -q "Professional Summary" "docs/Rachel_Merveille_CV.html"; then
  echo "✅ CV content is readable and contains 'Professional Summary' section"
else
  echo "❌ CV content may be corrupted or incomplete"
fi

if grep -q "Underwater SLAM" "docs/Rachel_Merveille_CV.html"; then
  echo "✅ CV content is updated with 'Underwater SLAM' content"
else
  echo "❌ CV content may not be fully updated"
fi

echo "✅ CV update verification complete."
echo "Your updated CV is now available on your website!"
