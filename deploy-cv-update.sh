#!/bin/bash

echo "🚀 Deploying Updated CV Information"
echo "================================="

# Make sure all CV files are synchronized
echo "📂 Copying updated CV files to docs folder..."
cp -v Rachel_Merveille_CV.html docs/
cp -v Rachel_Merveille_CV_download.html docs/
cp -v Rachel_Merveille_CV_export.html docs/h

echo "🚀 Deploying Updated CV Information"
echo "================================="

# Make sure all CV files are synchronized
echo "� Copying updated CV files to docs folder..."
cp Rachel_Merveille_CV.html docs/
cp Rachel_Merveille_CV_download.html docs/
cp Rachel_Merveille_CV_export.html docs/

# Git operations
echo "🔄 Adding files to git..."
git add Rachel_Merveille_CV.html
git add Rachel_Merveille_CV_download.html
git add Rachel_Merveille_CV_export.html
git add docs/Rachel_Merveille_CV.html
git add docs/Rachel_Merveille_CV_download.html
git add docs/Rachel_Merveille_CV_export.html

# Commit and push
echo "💾 Committing changes..."
git commit -m "Update Huzhou University experience details with additional responsibilities" || echo "⚠️ Commit failed"

echo "📤 Pushing changes to GitHub..."
git push || echo "⚠️ Push failed - check your git credentials"

echo "✅ Deployment completed!"
echo "🌐 Your updated CV should be live shortly at: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
