#!/bin/bash

echo "🧪 Testing profile image deployment..."
echo "📊 Checking for successful HTML response..."
curl -I https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/

echo -e "\n\n📊 Checking for successful image response..."
curl -I https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/profile1.jpg

echo -e "\n\n📝 Verifying HTML has image tag..."
if curl -s https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/ | grep -q '<img src="profile1.jpg"'; then
  echo "✅ Image tag verification successful! Found profile image tag in the HTML."
else
  echo "❌ Image tag verification failed! Didn't find profile image tag in the HTML."
  echo "⚠️ Note: GitHub Pages may take a few minutes to update. Try again shortly."
fi

echo -e "\n\n🏆 Test complete! If all checks passed, your profile image should be visible on the site."
echo "🔍 If any checks failed, wait a few minutes for GitHub Pages to update and try again."
echo "🌐 Visit your portfolio at: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
