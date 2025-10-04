#!/bin/bash

echo "🔍 Checking CV files for issues..."

echo "📊 Checking HTML CV file..."
if [ -f "Rachel_Merveille_CV.html" ]; then
  file_size=$(stat -f%z "Rachel_Merveille_CV.html")
  echo "📄 HTML CV file exists (Size: $file_size bytes)"
  
  # Check if it contains the profile image (base64 encoded data)
  if grep -q "base64" "Rachel_Merveille_CV.html"; then
    echo "✅ HTML CV contains base64 image data"
  else
    echo "❌ HTML CV is missing base64 image data"
  fi
  
  # Check if it contains expected CV content
  if grep -q "Professional Summary" "Rachel_Merveille_CV.html"; then
    echo "✅ HTML CV contains expected content sections"
  else
    echo "❌ HTML CV is missing expected content sections"
  fi
else
  echo "❌ HTML CV file does not exist"
fi

echo ""
echo "📊 Checking Text CV file..."
if [ -f "Rachel_Merveille_CV.txt" ]; then
  file_size=$(stat -f%z "Rachel_Merveille_CV.txt")
  echo "📄 Text CV file exists (Size: $file_size bytes)"
  
  # Check if it contains expected CV content
  if grep -q "PROFESSIONAL SUMMARY" "Rachel_Merveille_CV.txt"; then
    echo "✅ Text CV contains expected content sections"
  else
    echo "❌ Text CV is missing expected content sections"
  fi
else
  echo "❌ Text CV file does not exist"
fi

echo ""
echo "📊 Checking docs directory CV files..."
if [ -f "docs/Rachel_Merveille_CV.html" ]; then
  file_size=$(stat -f%z "docs/Rachel_Merveille_CV.html")
  echo "📄 Docs HTML CV file exists (Size: $file_size bytes)"
  
  # Check if it contains the profile image (base64 encoded data)
  if grep -q "base64" "docs/Rachel_Merveille_CV.html"; then
    echo "✅ Docs HTML CV contains base64 image data"
  else
    echo "❌ Docs HTML CV is missing base64 image data"
  fi
else
  echo "❌ Docs HTML CV file does not exist"
fi

if [ -f "docs/Rachel_Merveille_CV.txt" ]; then
  file_size=$(stat -f%z "docs/Rachel_Merveille_CV.txt")
  echo "📄 Docs Text CV file exists (Size: $file_size bytes)"
else
  echo "❌ Docs Text CV file does not exist"
fi

echo ""
echo "🏆 Check complete!"
