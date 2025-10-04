#!/bin/bash

echo "🚀 Starting comprehensive GitHub Pages deployment..."

# Clean and prepare
echo "🧹 Cleaning workspace..."
rm -rf node_modules/.cache
rm -rf dist

# Install dependencies
echo "📦 Installing dependencies..."
npm ci

# Build the project with proper base path
echo "🔨 Building project..."
npm run build

# Create necessary files for GitHub Pages
echo "📄 Creating GitHub Pages files..."
touch dist/.nojekyll
cp public/*.jpg dist/
cp public/*.html dist/
cp public/*.svg dist/

# Create a simple test file to verify GitHub Pages
echo "🧪 Creating test file..."
cat > dist/test-page.html << EOL
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GitHub Pages Test</title>
  <style>
    body { font-family: system-ui, sans-serif; max-width: 800px; margin: 0 auto; padding: 2rem; line-height: 1.6; }
    .box { background: #f0f0f0; padding: 1rem; border-radius: 4px; margin-bottom: 1rem; }
  </style>
</head>
<body>
  <h1>GitHub Pages Test Page</h1>
  <div class="box">
    <p>If you can see this page, GitHub Pages deployment is working!</p>
    <p><a href="index.html">Go to the main portfolio</a></p>
  </div>
  <div class="box">
    <h2>Navigation Test Links</h2>
    <ul>
      <li><a href="#/">Home</a></li>
      <li><a href="#/about">About</a></li>
      <li><a href="#/cv">CV</a></li>
      <li><a href="#/skills">Skills</a></li>
      <li><a href="#/gallery">Gallery</a></li>
      <li><a href="#/contact">Contact</a></li>
    </ul>
  </div>
</body>
</html>
EOL

# Show what we're deploying
echo "📋 Listing files to be deployed:"
ls -la dist

# Deploy to GitHub Pages
echo "🚀 Deploying to GitHub Pages..."
npx gh-pages -d dist -t

echo "✅ Deployment complete!"
echo "🌍 Your site will be available at: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
echo "🔍 Test page: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/test-page.html"
echo "⏱️ Allow a few minutes for changes to propagate"
