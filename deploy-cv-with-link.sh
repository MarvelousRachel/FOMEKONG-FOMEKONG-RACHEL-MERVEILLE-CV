#!/bin/bash

# Deploy script for CV with download functionality and website link
echo "Deploying CV with download functionality and website link..."

# First, embed images in the CV HTML file
echo "Embedding images in the CV file..."
./embed-cv-images.sh

# Copy the main CV files
cp Rachel_Merveille_CV.html docs/
cp Rachel_Merveille_CV_download.html docs/
cp Rachel_Merveille_CV.txt docs/

# Copy the download script
cp cv-download.js docs/

# Copy any necessary images (for online viewing)
cp profile*.jpg docs/

# Copy the updated index.html with PDF/PNG download functionality
cp index.html docs/

echo "Deployment complete!"
echo "Website link has been added to the CV."
echo "PDF and Image download functionality has been added to the home page."
echo "Images are now embedded in the HTML for offline viewing."
echo "Files deployed to docs/ directory for GitHub Pages."
