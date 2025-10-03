#!/bin/bash

echo "🧪 Testing CV download feature..."

echo "📊 Checking for main site response..."
curl -I https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/

echo -e "\n\n📊 Checking for HTML CV file response..."
curl -I https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/Rachel_Merveille_CV.html

echo -e "\n\n📊 Checking for Text CV file response..."
curl -I https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/Rachel_Merveille_CV.txt

echo -e "\n\n📝 Verifying HTML has download links..."
if curl -s https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/ | grep -q 'Download CV'; then
  echo "✅ Download links verification successful! Found CV download links in the HTML."
else
  echo "❌ Download links verification failed! Didn't find CV download links in the HTML."
  echo "⚠️ Note: GitHub Pages may take a few minutes to update. Try again shortly."
fi

echo -e "\n\n🏆 Test complete! If all checks passed, your downloadable CV feature is working correctly."
echo "🔍 If any checks failed, wait a few minutes for GitHub Pages to update and try again."
echo "🌐 Visit your portfolio at: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
