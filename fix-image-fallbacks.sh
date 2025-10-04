#!/bin/bash

echo "🔄 Adding initials as fallbacks for all sections..."

# Replace the image fallbacks in the HTML file with initials that will be shown immediately
cd /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/docs

# Create a temporary file
cat index.html > temp.html

# Add inline SVG initials for profile image
sed -i '' 's/<div class="profile-container">.*<\/div>/<div class="profile-container"><div style="width:100%;height:100%;background-color:#64ffda;display:flex;align-items:center;justify-content:center;font-size:4rem;font-weight:bold;color:#0a192f">RF<\/div><\/div>/g' temp.html

# Add inline SVG or colored divs for project images in the gallery section
sed -i '' 's/<div style="height: 200px; overflow: hidden">.*Underwater SLAM.*<\/div>/<div style="height: 200px; display:flex; align-items:center; justify-content:center; background-color:#112240; color:#e6f1ff; font-weight:bold;">Underwater SLAM<\/div>/g' temp.html
sed -i '' 's/<div style="height: 200px; overflow: hidden">.*Multi-sensor Fusion.*<\/div>/<div style="height: 200px; display:flex; align-items:center; justify-content:center; background-color:#112240; color:#e6f1ff; font-weight:bold;">Multi-sensor Fusion<\/div>/g' temp.html
sed -i '' 's/<div style="height: 200px; overflow: hidden">.*AUV Development.*<\/div>/<div style="height: 200px; display:flex; align-items:center; justify-content:center; background-color:#112240; color:#e6f1ff; font-weight:bold;">AUV Development<\/div>/g' temp.html
sed -i '' 's/<div style="height: 200px; overflow: hidden">.*Vision-based Control.*<\/div>/<div style="height: 200px; display:flex; align-items:center; justify-content:center; background-color:#112240; color:#e6f1ff; font-weight:bold;">Vision-based Control<\/div>/g' temp.html

# Replace the original file
mv temp.html index.html

echo "✅ All image fallbacks updated with text-based alternatives!"
echo "🚀 Committing and pushing changes..."

# Commit and push the changes
cd /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/
git add docs/index.html
git commit -m "Update HTML with text-based fallbacks for images"
git push origin main

echo "✅ Changes pushed to GitHub. The site will be updated in a few minutes."
