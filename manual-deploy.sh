#!/bin/bash

echo "🔄 Starting comprehensive manual deployment..."

# Clean the dist directory
echo "🧹 Cleaning dist directory..."
rm -rf dist

# Build the app
echo "🔨 Building application..."
npm run build

# Find the actual JS and CSS filenames
JS_FILE=$(find dist/assets -name "*.js" | head -n 1 | xargs basename)
CSS_FILE=$(find dist/assets -name "*.css" | head -n 1 | xargs basename)

# Fix the index.html to use proper paths
echo "🔧 Fixing index.html with proper asset paths..."
cat > dist/index.html << EOL
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <link rel="icon" type="image/svg+xml" href="./vite.svg" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Fomekong Fomekong Rachel Merveille - Portfolio</title>
    <meta name="description" content="Portfolio of Fomekong Fomekong Rachel Merveille" />
    <link rel="stylesheet" href="./assets/${CSS_FILE}" />
    <!-- Single Page Apps for GitHub Pages -->
    <script type="text/javascript">
      // Single Page Apps for GitHub Pages
      // MIT License
      // https://github.com/rafgraph/spa-github-pages
      // This script checks to see if a redirect is present in the query string,
      // converts it back into the correct url and adds it to the
      // browser's history using window.history.replaceState(...),
      // which won't cause the browser to attempt to load the new url.
      // When the single page app is loaded further down in this file,
      // the correct url will be waiting in the browser's history for
      // the single page app to route accordingly.
      (function(l) {
        if (l.search[1] === '/' ) {
          var decoded = l.search.slice(1).split('&').map(function(s) { 
            return s.replace(/~and~/g, '&')
          }).join('?');
          window.history.replaceState(null, null,
              l.pathname.slice(0, -1) + decoded + l.hash
          );
        }
      }(window.location))
    </script>
  </head>
  <body>
    <div id="root"></div>
    <script type="module" src="./assets/${JS_FILE}"></script>
  </body>
</html>
EOL

# Create .nojekyll file
echo "📄 Creating .nojekyll file..."
touch dist/.nojekyll

# Copy images and special pages
echo "📂 Copying images and special pages..."
cp public/*.jpg dist/
cp public/*.html dist/
cp public/*.svg dist/

# Create a CNAME file if needed (uncomment if you have a custom domain)
# echo "yourdomain.com" > dist/CNAME

# Show what we've built
echo "📋 Listing dist directory contents:"
ls -la dist
ls -la dist/assets

# Deploy using gh-pages
echo "🚀 Deploying to GitHub Pages..."
npx gh-pages -d dist -b gh-pages -m "Deploy: $(date)" -t

echo "✅ Deployment complete!"
echo "🌍 Your site will be available at: https://MarvelousRachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV"
echo "⏱️ Allow 1-5 minutes for changes to go live"
echo "📝 If the site is still showing a 404, please check your GitHub repository settings under Pages."
