#!/bin/bash

echo "📄 Deploying CV download feature..."

# Commit and push the changes
git add index.html rachel-cv.html rachel-cv-print.html Rachel_Merveille_CV.html Rachel_Merveille_CV.txt create-cv-files.sh
git commit -m "Add downloadable CV feature with multiple formats"
git push origin main

echo "✅ Downloadable CV feature added successfully!"
echo "🌐 Your site will be updated in a few minutes at: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
echo "📊 Users can now download your CV directly from the website."
