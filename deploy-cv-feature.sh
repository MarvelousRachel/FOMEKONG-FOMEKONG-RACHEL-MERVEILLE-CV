#!/bin/bash

echo "� Deploying CV with Download Functionality"
echo "======================================"

# Step 1: Copy all necessary files to docs directory
echo "📂 Copying files to docs directory..."

# Core files
cp index.html docs/
cp Rachel_Merveille_CV.html docs/
cp Rachel_Merveille_CV_download.html docs/
cp cv-download.js docs/
cp profile1.jpg docs/

# Additional page files
for file in about.html contact.html projects.html publications.html 404.html; do
  if [ -f "$file" ]; then
    cp "$file" "docs/"
    echo "✓ Copied $file"
  fi
done

# Step 2: Commit and push the changes
echo "🔄 Committing and pushing changes..."
git add index.html Rachel_Merveille_CV.html Rachel_Merveille_CV_download.html cv-download.js docs/
git commit -m "Add enhanced CV download functionality with embedded images"
git push origin main

echo "✅ Deployment completed successfully!"
echo "🌐 Your website with CV download functionality will be updated at: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
echo "� Users can now download your CV as PDF or Image from both the homepage and CV page."
