#!/bin/bash

echo "🔄 Starting enhanced deployment process..."

# Clean dist directory
echo "🧹 Cleaning dist directory..."
rm -rf dist

# Build the app
echo "🔨 Building application..."
npm run build

# Copy 404, test pages and profile images
echo "📄 Copying special pages and images..."
cp public/404.html dist/
cp public/test.html dist/
cp public/profile1.jpg dist/
cp public/profile2.jpg dist/
cp public/profile3.jpg dist/
cp public/profile4.jpg dist/

# Create a .nojekyll file to prevent GitHub Pages from ignoring files that begin with an underscore
echo "🛠️ Creating .nojekyll file..."
touch dist/.nojekyll

# Deploy to gh-pages
echo "🚀 Deploying to GitHub Pages..."
npx gh-pages -d dist

echo "✅ Deployment complete!"
echo "🌍 Your site will be available at: https://MarvelousRachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV"
echo "⏱️ Allow 1-5 minutes for changes to go live"
