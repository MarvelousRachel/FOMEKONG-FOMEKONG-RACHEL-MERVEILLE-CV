#!/bin/bash

# Deploy with fixes for blank pages
echo "🚀 Running deployment with fixes for blank pages..."
./fix-blank-pages.sh

# Wait a moment to ensure GitHub Pages has at least started processing
echo "⏱️ Waiting for 30 seconds before testing..."
sleep 30

# Run tests to verify the deployment
echo "🔍 Running tests to check if blank pages are fixed..."
./test-blank-pages.sh

echo ""
echo "🌐 If you still see blank pages:"
echo "1. Wait 5-10 minutes for GitHub Pages to fully update"
echo "2. Clear your browser cache or use incognito/private mode"
echo "3. Access the direct links with hash routing:"
echo "   - Main site: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
echo "   - Test page: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/test-page.html"
echo "   - About: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/#/about"
echo "   - CV: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/#/cv"
echo "4. Open browser developer tools (F12) and check the console for errors"
