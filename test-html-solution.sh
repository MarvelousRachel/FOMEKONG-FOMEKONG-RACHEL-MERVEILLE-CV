#!/bin/bash

echo "🔍 Testing HTML solution after deployment..."

# Define base URL
BASE_URL="https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV"

# Test main HTML page
echo ""
echo "📄 Testing main HTML page: $BASE_URL/"
curl -s -I "$BASE_URL/" | head -1

# Test images
echo ""
echo "🖼️ Testing profile1.jpg: $BASE_URL/profile1.jpg?v=20231003"
curl -s -I "$BASE_URL/profile1.jpg?v=20231003" | head -1

echo "🖼️ Testing profile2.jpg: $BASE_URL/profile2.jpg?v=20231003"
curl -s -I "$BASE_URL/profile2.jpg?v=20231003" | head -1

echo "🖼️ Testing profile3.jpg: $BASE_URL/profile3.jpg?v=20231003"
curl -s -I "$BASE_URL/profile3.jpg?v=20231003" | head -1

echo "🖼️ Testing profile4.jpg: $BASE_URL/profile4.jpg?v=20231003"
curl -s -I "$BASE_URL/profile4.jpg?v=20231003" | head -1

# Test 404 page
echo ""
echo "🔍 Testing 404 page: $BASE_URL/nonexistent-page"
curl -s -I "$BASE_URL/nonexistent-page" | head -1

echo ""
echo "⏱️ Note: It may take 5-10 minutes for GitHub Pages to update with the latest changes."
echo "    If you see any 404 errors above, wait a few minutes and run this test again."
echo ""
echo "✅ Testing complete!"
