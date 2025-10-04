#!/bin/bash

echo "🔍 Testing portfolio site accessibility..."

# Test main URL
echo "Testing main site URL..."
curl -s -o /dev/null -w "Main site status code: %{http_code}\n" https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/

# Test test page
echo "Testing test page..."
curl -s -o /dev/null -w "Test page status code: %{http_code}\n" https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/test-page.html

echo ""
echo "🔗 Verify these links manually in a browser:"
echo "1. Main portfolio: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
echo "2. Test page: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/test-page.html"
echo "3. About page: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/#/about"
echo "4. CV page: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/#/cv"
echo "5. Skills page: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/#/skills"
echo "6. Gallery page: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/#/gallery"
echo "7. Contact page: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/#/contact"

echo ""
echo "👨‍💻 Navigation tips:"
echo "- The main site should load and you should be able to navigate between pages"
echo "- Use the # URLs for direct access to specific sections"
echo "- If you get a 404 error, check the GitHub Pages settings and make sure the site is published from the gh-pages branch"
