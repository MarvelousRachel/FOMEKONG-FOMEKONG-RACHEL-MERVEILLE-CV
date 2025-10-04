#!/bin/bash

echo "🛠️ Starting comprehensive fix for blank pages..."

# Backup the current App.jsx
echo "📦 Backing up current App.jsx..."
cp /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/src/App.jsx /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/src/App.jsx.bak

# Replace with the fixed version
echo "🔄 Applying fixed App.jsx..."
mv /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/src/App.jsx.new /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/src/App.jsx

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

# Create a special no-cache meta tag for index.html
echo "🚫 Adding no-cache headers to index.html..."
sed -i '' 's/<meta name="viewport".*/<meta name="viewport" content="width=device-width, initial-scale=1.0" \/>\n    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" \/>\n    <meta http-equiv="Pragma" content="no-cache" \/>\n    <meta http-equiv="Expires" content="0" \/>/' dist/index.html

# Create a custom offline support file
cat > dist/offline.js << EOL
// This script adds offline support and checks asset loading
(function() {
  // Log loading status
  console.log('Portfolio loaded at: ' + new Date().toISOString());
  
  // Check if assets are loading correctly
  function checkAssets() {
    const assets = [
      'assets/index-BSR14dZO.js',
      'assets/index-Dg2IAHM2.css',
      'profile1.jpg',
      'profile2.jpg'
    ];
    
    assets.forEach(asset => {
      const img = new Image();
      img.onload = () => console.log('✅ ' + asset + ' loaded');
      img.onerror = () => console.error('❌ ' + asset + ' failed to load');
      img.src = asset;
    });
  }
  
  // Add listener for when DOM is fully loaded
  document.addEventListener('DOMContentLoaded', function() {
    console.log('DOM fully loaded');
    checkAssets();
  });
})();
EOL

# Add the offline script to index.html
echo "📝 Adding offline support script to index.html..."
sed -i '' 's/<\/head>/    <script src="offline.js"><\/script>\n  <\/head>/' dist/index.html

# Create a robust 404.html that redirects properly
echo "🔀 Creating better 404 redirect..."
cat > dist/404.html << EOL
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
  <meta http-equiv="Pragma" content="no-cache">
  <meta http-equiv="Expires" content="0">
  <title>Redirecting...</title>
  <style>
    body {
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
      line-height: 1.6;
      color: #333;
      max-width: 650px;
      margin: 0 auto;
      padding: 20px;
      background-color: #0a192f;
      color: #ccd6f6;
    }
    .loading {
      display: flex;
      align-items: center;
      margin: 30px 0;
    }
    .spinner {
      border: 4px solid #233554;
      border-top: 4px solid #64ffda;
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
    a {
      color: #64ffda;
      text-decoration: none;
    }
    a:hover {
      text-decoration: underline;
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
  <h1>Redirecting you to the portfolio...</h1>
  <div class="loading">
    <div class="spinner"></div>
    <p>Please wait while we redirect you.</p>
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
  <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
  <meta http-equiv="Pragma" content="no-cache">
  <meta http-equiv="Expires" content="0">
  <title>Portfolio Test Page</title>
  <style>
    body {
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
      line-height: 1.6;
      color: #333;
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
      background-color: #f5f5f5;
    }
    .card {
      background: #fff;
      border: 1px solid #ddd;
      border-radius: 8px;
      padding: 20px;
      margin: 20px 0;
      box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }
    h1, h2 {
      color: #0a192f;
    }
    .success { color: green; }
    .error { color: red; }
    button {
      background: #64ffda;
      color: #0a192f;
      border: none;
      padding: 10px 15px;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
      margin: 10px 0;
    }
    .image-container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
      gap: 15px;
      margin-top: 15px;
    }
    .image-box {
      border: 1px solid #ddd;
      padding: 10px;
      border-radius: 4px;
      text-align: center;
    }
    .image-box img {
      max-width: 100%;
      height: auto;
      max-height: 100px;
      display: block;
      margin: 0 auto 10px;
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
    <button onclick="testImages()">Test Images</button>
    <div id="image-test"></div>
    
    <h3>Manual Image Testing</h3>
    <div class="image-container">
      <div class="image-box">
        <img src="profile1.jpg" alt="Profile 1" onerror="this.parentNode.classList.add('error');this.parentNode.innerHTML+='<p>Failed to load</p>'">
        <p>profile1.jpg</p>
      </div>
      <div class="image-box">
        <img src="profile2.jpg" alt="Profile 2" onerror="this.parentNode.classList.add('error');this.parentNode.innerHTML+='<p>Failed to load</p>'">
        <p>profile2.jpg</p>
      </div>
      <div class="image-box">
        <img src="vite.svg" alt="Vite Logo" onerror="this.parentNode.classList.add('error');this.parentNode.innerHTML+='<p>Failed to load</p>'">
        <p>vite.svg</p>
      </div>
    </div>
  </div>
  
  <div class="card">
    <h2>JS Asset Testing</h2>
    <button onclick="testJsAssets()">Test JS Assets</button>
    <div id="js-test"></div>
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
    
    function testJsAssets() {
      const jsDiv = document.getElementById('js-test');
      jsDiv.innerHTML = '';
      
      // Try to fetch the main JS file
      fetch('assets/index-BSR14dZO.js')
        .then(response => {
          const result = document.createElement('p');
          if (response.ok) {
            result.innerHTML = '✅ Main JS bundle loaded successfully';
            result.className = 'success';
          } else {
            result.innerHTML = '❌ Main JS bundle failed with status: ' + response.status;
            result.className = 'error';
          }
          jsDiv.appendChild(result);
        })
        .catch(error => {
          const result = document.createElement('p');
          result.innerHTML = '❌ Failed to load main JS bundle: ' + error.message;
          result.className = 'error';
          jsDiv.appendChild(result);
        });
        
      // Try to fetch the CSS file
      fetch('assets/index-Dg2IAHM2.css')
        .then(response => {
          const result = document.createElement('p');
          if (response.ok) {
            result.innerHTML = '✅ Main CSS loaded successfully';
            result.className = 'success';
          } else {
            result.innerHTML = '❌ Main CSS failed with status: ' + response.status;
            result.className = 'error';
          }
          jsDiv.appendChild(result);
        })
        .catch(error => {
          const result = document.createElement('p');
          result.innerHTML = '❌ Failed to load main CSS: ' + error.message;
          result.className = 'error';
          jsDiv.appendChild(result);
        });
    }
  </script>
</body>
</html>
EOL

# Show what we're deploying
echo "📋 Listing files to be deployed:"
find dist -type f | grep -v "node_modules" | sort

# Deploy to GitHub Pages
echo "🚀 Deploying to GitHub Pages..."
npx gh-pages -d dist -t

echo "✅ Deployment complete!"
echo "🌍 Your site will be available at: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
echo "🔍 Test page: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/test-page.html"
echo "⏱️ Allow 5-10 minutes for GitHub Pages to update"

echo ""
echo "📱 After deployment, follow these steps:"
echo "1. Open an incognito/private window in your browser"
echo "2. Visit the test page first: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/test-page.html"
echo "3. Click the 'Test Images' and 'Test JS Assets' buttons to verify loading"
echo "4. If everything works there, try the main site: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
echo ""
echo "If you still see blank pages after this fix, please provide any error messages from the browser console."
