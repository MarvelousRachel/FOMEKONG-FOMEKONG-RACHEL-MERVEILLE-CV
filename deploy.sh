#!/bin/bash

# Deploy script for GitHub Pages
echo "🚀 Deploying to GitHub Pages..."

# Build the project
echo "📦 Building project..."
npm run build

# Deploy to gh-pages branch
echo "🌐 Deploying to GitHub Pages..."
npx gh-pages -d dist

echo "✅ Deployment complete!"
echo "🌍 Your site will be available at: https://MarvelousRachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV"
echo "⏱️  Allow 1-5 minutes for changes to go live"
