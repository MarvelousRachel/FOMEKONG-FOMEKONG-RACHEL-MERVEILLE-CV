#!/bin/bash

echo "🚀 Deploying Export Solution"
echo "=========================="

# Make sure the export solution is created
if [ ! -f "Rachel_Merveille_CV_export.html" ] || [ ! -f "export-cv-download.js" ]; then
  echo "❌ Export files not found! Running create-export-cv.sh..."
  ./create-export-cv.sh
fi

# Copy updated files to docs directory
echo "📦 Copying updated files to docs..."
cp cv-download.js docs/
cp Rachel_Merveille_CV_export.html docs/
cp export-cv-download.js docs/

# Git operations
echo "🔄 Adding files to git..."
git add docs/cv-download.js
git add docs/Rachel_Merveille_CV_export.html
git add docs/export-cv-download.js
git add cv-download.js
git add Rachel_Merveille_CV_export.html
git add export-cv-download.js
git add create-export-cv.sh
git add test-export-solution.sh
git add deploy-export-solution.sh

# Commit and push
echo "💾 Committing changes..."
git commit -m "Implement clean export solution for PDF and Image downloads"

echo "📤 Pushing changes to GitHub..."
git push

echo "✅ Deployment completed!"
echo "🌐 Your changes should be live shortly at: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
