#!/bin/bash

echo "🚀 Starting enhanced GitHub Pages deployment..."

# Clean and prepare
echo "🧹 Cleaning workspace..."
rm -rf node_modules/.cache
rm -rf dist

# Install dependencies if needed
echo "📦 Ensuring dependencies are installed..."
npm ci

# Build the project
echo "🔨 Building project..."
npm run build

# Create .nojekyll file (GitHub Pages specific)
echo "📄 Creating .nojekyll file..."
touch dist/.nojekyll

# Create a test-direct.html file
echo "🧪 Creating test file..."
echo '<!DOCTYPE html><html><head><title>Direct GitHub Pages Test</title></head><body><h1>GitHub Pages Test</h1><p>If you see this page, GitHub Pages is working.</p><p><a href="index.html">Go to main app</a></p></body></html>' > dist/test-direct.html

# Copy files from public to dist
echo "📂 Copying profile images and other files..."
cp public/*.jpg dist/
cp public/*.html dist/
cp public/*.svg dist/

# List the dist directory
echo "📋 Listing dist directory contents:"
ls -la dist

# Deploy to GitHub Pages with force flag
echo "🚀 Deploying to GitHub Pages..."
npx gh-pages -d dist -t

echo "✅ Deployment complete!"
echo "🌍 Your site will be available at: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
echo "🔍 Check specific test page at: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/test-direct.html"
echo "⏱️ Allow 1-5 minutes for changes to go live"
