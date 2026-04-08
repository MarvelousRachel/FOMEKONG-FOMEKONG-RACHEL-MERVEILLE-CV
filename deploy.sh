#!/bin/bash

# Deploy script for GitHub Pages
echo "🚀 Deploying to GitHub Pages..."

cd portfolio || exit

# Build the project
echo "📦 Building project..."
npm run build

# Ensure Chinese CV file is included in the deployment
echo "📋 Copying Chinese CV file to dist directory..."
cp docs/Rachel_Merveille_CV_CN_NEW.html dist/Rachel_Merveille_CV_CN.html

# Deploy to gh-pages branch
echo "🌐 Deploying to GitHub Pages..."
npx gh-pages -d dist

cd ..

echo "✅ Deployment complete!"
echo "🌍 Your site will be available at: https://MarvelousRachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV"
echo "⏱️  Allow 1-5 minutes for changes to go live"
