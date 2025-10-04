#!/bin/bash

echo "🔍 Comprehensive Portfolio Test Suite"
echo "===================================="

# Check site status
echo "📊 Checking site status..."
main_status=$(curl -s -o /dev/null -w "%{http_code}" https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/)
debug_status=$(curl -s -o /dev/null -w "%{http_code}" https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/debug-info.html)

echo "Main site: $main_status"
echo "Debug info: $debug_status"

# Check for critical files
echo -e "\n📁 Checking for critical files..."
index_status=$(curl -s -o /dev/null -w "%{http_code}" https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/index.html)
js_status=$(curl -s -I -o /dev/null -w "%{http_code}" https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/assets/index-BSR14dZO.js 2>/dev/null || echo "Failed")
css_status=$(curl -s -I -o /dev/null -w "%{http_code}" https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/assets/index-Dg2IAHM2.css 2>/dev/null || echo "Failed")

echo "index.html: $index_status"
echo "Main JS: $js_status"
echo "Main CSS: $css_status"

# Check images
echo -e "\n🖼️ Checking image files..."
for img in profile1.jpg profile2.jpg profile3.jpg profile4.jpg vite.svg; do
  status=$(curl -s -I -o /dev/null -w "%{http_code}" https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/$img 2>/dev/null || echo "Failed")
  echo "$img: $status"
done

echo -e "\n🔗 Test all these routes in your browser:"
echo "1. Main site: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
echo "2. Debug info: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/debug-info.html"

echo -e "\n📝 Troubleshooting blank pages:"
echo "1. First, try hard-refresh (Cmd+Shift+R on Mac, Ctrl+F5 on Windows)"
echo "2. Check browser console for JavaScript errors"
echo "3. Try a different browser"
echo "4. Try visiting the debug-info.html page to test assets"
echo "5. For React Router issues, make sure you're using HashRouter"
echo "6. Check that the content is properly loading (try with the Network tab open)"

echo -e "\n🔄 If issues persist, try these fixes:"
echo "1. Run: ./debug-deploy.sh"
echo "2. Wait 5-10 minutes for GitHub Pages to update"
echo "3. Clear your browser cache completely"
echo "4. Try accessing the site in incognito/private mode"
