#!/bin/bash

echo "🚀 Starting fixed deployment for blank pages issue..."

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

# Create necessary GitHub Pages files
echo "📄 Creating GitHub Pages files..."
touch dist/.nojekyll
cp -R public/* dist/

# Create static fallback HTML for each route
echo "🔄 Creating static fallbacks for each route..."
cp dist/index.html dist/about.html
cp dist/index.html dist/cv.html
cp dist/index.html dist/skills.html
cp dist/index.html dist/gallery.html
cp dist/index.html dist/contact.html

# Create a robust 404.html that redirects properly
echo "🔀 Creating better 404 redirect..."
cat > dist/404.html << EOL
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Redirecting...</title>
  <style>
    body {
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
      line-height: 1.6;
      color: #333;
      max-width: 650px;
      margin: 0 auto;
      padding: 20px;
    }
    .loading {
      display: flex;
      align-items: center;
      margin: 30px 0;
    }
    .spinner {
      border: 4px solid #f3f3f3;
      border-top: 4px solid #3498db;
      border-radius: 50%;
      width: 30px;
      height: 30px;
      margin-right: 20px;
      animation: spin 1s linear infinite;
    }
    @keyframes spin {
      0% { transform: rotate(0deg); }
      100% { transform: rotate(360deg); }
    }
  </style>
  <script>
    // Get the current path from the URL
    var path = window.location.pathname;
    var pathSegments = path.split('/');
    var lastSegment = pathSegments[pathSegments.length - 1];
    
    // Remove .html extension if present
    if (lastSegment.endsWith('.html')) {
      lastSegment = lastSegment.substring(0, lastSegment.length - 5);
    }
    
    // If it's a recognized route, redirect to the hash version
    var knownRoutes = ['about', 'cv', 'skills', 'gallery', 'contact'];
    var baseUrl = '/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/';
    
    if (knownRoutes.includes(lastSegment)) {
      window.location.href = baseUrl + '#/' + lastSegment;
    } else {
      // If not a known route, redirect to home
      window.location.href = baseUrl;
    }
    
    // Fallback if redirect doesn't happen immediately
    setTimeout(function() {
      window.location.href = baseUrl;
    }, 2000);
  </script>
</head>
<body>
  <h1>Redirecting you to the correct page...</h1>
  <div class="loading">
    <div class="spinner"></div>
    <p>Please wait while we redirect you to the portfolio.</p>
  </div>
  <p>If you are not redirected automatically, <a href="/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/">click here</a>.</p>
</body>
</html>
EOL

# Create test HTML page to verify site is working
cat > dist/test-page.html << EOL
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Portfolio Test Page</title>
  <style>
    body {
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
      line-height: 1.6;
      color: #333;
      max-width: 650px;
      margin: 0 auto;
      padding: 20px;
    }
    .card {
      background: #f9f9f9;
      border: 1px solid #ddd;
      border-radius: 8px;
      padding: 16px;
      margin: 16px 0;
    }
    .success { color: green; }
    .error { color: red; }
    button {
      background: #4CAF50;
      color: white;
      border: none;
      padding: 10px 15px;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
    }
  </style>
</head>
<body>
  <h1>Portfolio Test Page</h1>
  <div class="card">
    <p>If you can see this page, static file serving is working correctly! 🎉</p>
  </div>
  
  <div class="card">
    <h2>Asset Testing</h2>
    <p>Testing image loading:</p>
    <div id="image-test"></div>
    <button onclick="testImages()">Test Images</button>
  </div>
  
  <div class="card">
    <h2>Navigation Links</h2>
    <p>Try these direct route links:</p>
    <ul>
      <li><a href="index.html">Home (index.html)</a></li>
      <li><a href="index.html#/">Home (hash route)</a></li>
      <li><a href="index.html#/about">About</a></li>
      <li><a href="index.html#/cv">CV</a></li>
      <li><a href="index.html#/skills">Skills</a></li>
      <li><a href="index.html#/gallery">Gallery</a></li>
      <li><a href="index.html#/contact">Contact</a></li>
    </ul>
  </div>

  <script>
    function testImages() {
      const imageDiv = document.getElementById('image-test');
      imageDiv.innerHTML = '';
      
      // Test loading multiple image formats
      const imagesToTest = [
        'profile1.jpg',
        'profile2.jpg',
        'profile3.jpg',
        'profile4.jpg',
        'vite.svg'
      ];
      
      imagesToTest.forEach(img => {
        const result = document.createElement('p');
        const imgEl = new Image();
        
        imgEl.onload = function() {
          result.innerHTML = '✅ ' + img + ' loaded successfully';
          result.className = 'success';
        };
        
        imgEl.onerror = function() {
          result.innerHTML = '❌ ' + img + ' failed to load';
          result.className = 'error';
        };
        
        imgEl.src = img;
        imageDiv.appendChild(result);
      });
    }
  </script>
</body>
</html>
EOL

# Show what we're deploying
echo "📋 Listing files to be deployed:"
find dist -type f | sort

# Deploy to GitHub Pages
echo "🚀 Deploying to GitHub Pages..."
npx gh-pages -d dist -t

echo "✅ Deployment complete!"
echo "🌍 Your site will be available at: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
echo "🔍 Test page: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/test-page.html"
echo "⏱️ Allow 5-10 minutes for changes to propagate"

echo ""
echo "📱 After deployment, try these steps to fix blank pages:"
echo "1. Clear your browser cache completely or use incognito mode"
echo "2. Hard refresh the page (Cmd+Shift+R on Mac, Ctrl+F5 on Windows)"
echo "3. Try the test page first to verify assets are loading"
echo "4. If still seeing blank pages, open browser developer tools and check for errors"
