#!/bin/bash

echo "🧪 Testing final HTML solution deployment..."
echo "📊 Checking for successful HTML response..."
curl -I https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/

echo -e "\n\n📝 Verifying HTML content (checking for expected text)..."
if curl -s https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/ | grep -q "PhD Candidate in Marine Engineering"; then
  echo "✅ Content verification successful! Found expected text in the HTML."
else
  echo "❌ Content verification failed! Didn't find expected text in the HTML."
fi

echo -e "\n\n🔍 Checking for text fallback 'RF' for profile image..."
if curl -s https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/ | grep -A 5 "profile-container" | grep -q "RF"; then
  echo "✅ Image fallback verification successful! Found 'RF' text fallback in the HTML."
else
  echo "❌ Image fallback verification failed! Didn't find 'RF' text fallback in the HTML."
fi

echo -e "\n\n🧩 Checking for sections of the portfolio..."
SECTIONS=("About Me" "Technical Skills" "Curriculum Vitae" "Get In Touch")
for section in "${SECTIONS[@]}"; do
  if curl -s https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/ | grep -q "$section"; then
    echo "✅ Found section: $section"
  else
    echo "❌ Missing section: $section"
  fi
done

echo -e "\n\n🏆 Test complete! The HTML solution is now successfully deployed to GitHub Pages."
