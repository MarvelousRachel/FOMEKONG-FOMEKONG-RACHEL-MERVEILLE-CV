#!/bin/bash

echo "🔍 Testing if blank pages issue is resolved..."

# Check URLs
echo "Testing main site URL..."
curl -s -o /dev/null -w "Main site: %{http_code}\n" "https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"

# Check JS assets
echo -e "\nTesting JS assets..."
curl -s -I -o /dev/null -w "JS asset: %{http_code}\n" "https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/assets/index-C4015BMn.js" || echo "JS asset not found"

# Check CSS assets
echo -e "\nTesting CSS assets..."
curl -s -I -o /dev/null -w "CSS asset: %{http_code}\n" "https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/assets/index-Dg2IAHM2.css" || echo "CSS asset not found"

# Check image assets
echo -e "\nTesting image assets..."
curl -s -I -o /dev/null -w "Profile image: %{http_code}\n" "https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/profile1.jpg" || echo "Image not found"

echo -e "\n📝 IMPORTANT: If any of the above tests return 404, please try again in 5-10 minutes as GitHub Pages may still be updating."

echo -e "\n📱 Instructions for users to fix blank pages:"
echo "1. Visit the site in an incognito window: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
echo "2. If still blank, clear your browser cache (Cmd+Shift+Delete on Mac, Ctrl+Shift+Delete on Windows)"
echo "3. Try using a different browser (Chrome, Firefox, Safari, etc.)"
echo "4. Use the hash-based links for direct navigation:"
echo "   - Home: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/#/"
echo "   - About: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/#/about"
echo "   - CV: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/#/cv"
echo "   - Skills: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/#/skills"
echo "   - Gallery: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/#/gallery"
echo "   - Contact: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/#/contact"

echo -e "\n🔧 Browser troubleshooting tips:"
echo "1. Open browser developer tools (F12) and check the Console tab for errors"
echo "2. In the Network tab, look for any 404 errors when loading assets"
echo "3. Try forcing a hard refresh (Cmd+Shift+R on Mac, Ctrl+F5 on Windows)"
