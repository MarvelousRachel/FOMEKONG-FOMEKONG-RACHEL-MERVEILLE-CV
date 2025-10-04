#!/bin/bash

# This script fixes the CV update issue and properly deploys the files

echo "🔍 Checking CV files..."

# First let's verify the content of the local CV file
if grep -q "Underwater SLAM System Development" "Rachel_Merveille_CV.html"; then
  echo "✅ Local HTML CV has the updated content"
else
  echo "❌ Local HTML CV is missing the updated content"
  echo "⚠️  The update script may not have run correctly"
  exit 1
fi

# Forcefully deploy the CV files
echo "🚀 Deploying updated CV files to docs folder..."
cp -f Rachel_Merveille_CV.html docs/
cp -f Rachel_Merveille_CV.txt docs/

# Verify the deployed files
if grep -q "Underwater SLAM System Development" "docs/Rachel_Merveille_CV.html"; then
  echo "✅ Deployed HTML CV has the updated content"
else
  echo "❌ Deployed HTML CV is missing the updated content"
  echo "⚠️  There might be an issue with the file copy operation"
  exit 1
fi

echo "✅ CV files have been successfully deployed to the docs folder"
echo "🌐 The website will now show your updated CV"
