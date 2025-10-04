#!/bin/bash

echo "🚀 Starting enhanced debugging deployment..."

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

# Create debug file with environment information
echo "🐞 Creating debug info file..."
cat > dist/debug-info.html << EOL
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Debug Info</title>
  <style>
    body { font-family: system-ui, sans-serif; max-width: 800px; margin: 0 auto; padding: 2rem; line-height: 1.6; }
    .box { background: #f0f0f0; padding: 1rem; border-radius: 4px; margin-bottom: 1rem; }
    pre { background: #e0e0e0; padding: 0.5rem; overflow-x: auto; }
    .test-btn { background: #007bff; color: white; border: none; padding: 0.5rem 1rem; border-radius: 4px; cursor: pointer; }
  </style>
  <script>
    function checkAssetLoading() {
      const results = document.getElementById('asset-results');
      results.innerHTML = '';
      
      // Test image loading
      const imageUrls = [
        'profile1.jpg',
        'profile2.jpg',
        'profile3.jpg',
        'profile4.jpg',
        'vite.svg'
      ];
      
      imageUrls.forEach(url => {
        const img = new Image();
        const resultItem = document.createElement('div');
        
        img.onload = () => {
          resultItem.innerHTML = \`✅ \${url} loaded successfully\`;
          resultItem.style.color = 'green';
        };
        
        img.onerror = () => {
          resultItem.innerHTML = \`❌ \${url} failed to load\`;
          resultItem.style.color = 'red';
        };
        
        img.src = url;
        results.appendChild(resultItem);
      });

      // Check for JS loading
      fetch('assets/index-DDQnPTTD.js')
        .then(response => {
          const resultItem = document.createElement('div');
          if (response.ok) {
            resultItem.innerHTML = '✅ Main JS bundle loaded successfully';
            resultItem.style.color = 'green';
          } else {
            resultItem.innerHTML = '❌ Main JS bundle failed to load';
            resultItem.style.color = 'red';
          }
          results.appendChild(resultItem);
        })
        .catch(error => {
          const resultItem = document.createElement('div');
          resultItem.innerHTML = \`❌ Main JS bundle error: \${error.message}\`;
          resultItem.style.color = 'red';
          results.appendChild(resultItem);
        });
    }

    function checkBrowserInfo() {
      const info = document.getElementById('browser-info');
      info.innerHTML = \`
        <p><strong>User Agent:</strong> \${navigator.userAgent}</p>
        <p><strong>Window Location:</strong></p>
        <pre>
href: \${window.location.href}
protocol: \${window.location.protocol}
host: \${window.location.host}
pathname: \${window.location.pathname}
hash: \${window.location.hash}
</pre>
      \`;
    }

    window.onload = function() {
      checkBrowserInfo();
      document.getElementById('test-assets').addEventListener('click', checkAssetLoading);
    };
  </script>
</head>
<body>
  <h1>Portfolio Debug Information</h1>
  
  <div class="box">
    <h2>Browser Environment</h2>
    <div id="browser-info">Loading...</div>
  </div>
  
  <div class="box">
    <h2>Asset Loading Tests</h2>
    <button id="test-assets" class="test-btn">Test Asset Loading</button>
    <div id="asset-results" style="margin-top: 1rem;"></div>
  </div>
  
  <div class="box">
    <h2>Navigation Links</h2>
    <p>Try these links to test navigation:</p>
    <ul>
      <li><a href="index.html">Main Page</a></li>
      <li><a href="index.html#/">Home</a></li>
      <li><a href="index.html#/about">About</a></li>
      <li><a href="index.html#/cv">CV</a></li>
      <li><a href="index.html#/skills">Skills</a></li>
      <li><a href="index.html#/gallery">Gallery</a></li>
      <li><a href="index.html#/contact">Contact</a></li>
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
echo "🔍 Debug info: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/debug-info.html"
echo "⏱️ Allow a few minutes for changes to propagate"
