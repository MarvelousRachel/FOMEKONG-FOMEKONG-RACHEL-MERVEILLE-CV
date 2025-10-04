#!/bin/bash

echo "🚀 Deploying updated CV files to GitHub Pages..."

# Check if updated CV files exist
if [ ! -f "Rachel_Merveille_CV.html" ] || [ ! -f "Rachel_Merveille_CV.txt" ]; then
  echo "❌ Error: CV files not found. Please run update-cv-with-image.sh first."
  exit 1
fi

# Make sure the docs directory exists
mkdir -p docs

# Copy the updated CV files to the docs directory
echo "📋 Copying updated CV files to docs directory..."
cp "Rachel_Merveille_CV.html" "docs/"
cp "Rachel_Merveille_CV.txt" "docs/"

# Copy profile images to docs directory
echo "📸 Ensuring profile images are in docs directory..."
cp profile*.jpg docs/ 2>/dev/null || true

# Create a .nojekyll file to disable Jekyll processing
echo "📝 Creating .nojekyll file to disable Jekyll processing..."
touch docs/.nojekyll

echo "✅ Files prepared for GitHub Pages deployment!"
echo ""
echo "🔍 Files in docs directory:"
ls -la docs/

echo ""
echo "🌐 To deploy to GitHub Pages, run the following commands:"
echo ""
echo "cd \"/Users/fomekongrachelmarvelous/Desktop/FOMEKONG FOMEKONG /portfolio\""
echo "git add docs"
echo "git commit -m \"Update CV with detailed content and embedded image\""
echo "git push origin main"
echo ""
echo "📚 GitHub Pages Setup Instructions:"
echo "1. Go to your GitHub repository: https://github.com/MarvelousRachel/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV"
echo "2. Click on 'Settings'"
echo "3. Go to 'Pages' in the left sidebar"
echo "4. Under 'Source', select 'Deploy from a branch'"
echo "5. Select 'main' branch and '/docs' folder"
echo "6. Click 'Save'"
echo ""
echo "⏱️ Allow 5-10 minutes for GitHub Pages to update"
echo ""
echo "🔄 Your site will be available at: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
