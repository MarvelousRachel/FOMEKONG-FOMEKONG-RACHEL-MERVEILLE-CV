#!/bin/bash

echo "🔄 Updating CV publication information..."

# First, let's ensure we have a copy of the current CV with the embedded image
if [ ! -f "Rachel_Merveille_CV.html" ]; then
  echo "❌ Error: Rachel_Merveille_CV.html file not found!"
  exit 1
fi

# Extract the base64 image data from the existing HTML CV
BASE64_IMAGE=$(grep -o 'data:image/[^"]*' "Rachel_Merveille_CV.html" | head -1)

if [ -z "$BASE64_IMAGE" ]; then
  echo "⚠️ Warning: No base64 image found in the HTML CV. Will update CV without image."
fi

# Update the publication section in the HTML CV
sed -i.bak '/<h2 class="right-section-title">Publications<\/h2>/,/<\/div>/c\
      <h2 class="right-section-title">Publications</h2>\
      <ul>\
        <li>Underwater Visual SLAM Using Feature Matching, Sensors Journal, 2023. A novel approach to underwater visual SLAM using SuperPoint and SuperGlue feature matching, accounting for water turbidity and lighting variations.</li>\
        <li>Multi-sensor Fusion for Robust Underwater Navigation, IEEE Transactions on Robotics, 2022.</li>\
        <li>Fomekong, F. F., & Hugejile. (2021). "The Influence of Industry 4.0: A Case Study of Injection Molding Machines, Drones, 3D Printing, and Automation Factories." North American Academic Research, 4(12), 221-238.</li>\
      </ul>\
    </div>\
' "Rachel_Merveille_CV.html"

# Update the publication section in the text CV
sed -i.bak '/PUBLICATIONS/,/^$/c\
PUBLICATIONS\
• Underwater Visual SLAM Using Feature Matching, Sensors Journal, 2023. A novel approach to underwater visual SLAM using SuperPoint and SuperGlue feature matching, accounting for water turbidity and lighting variations.\
• Multi-sensor Fusion for Robust Underwater Navigation, IEEE Transactions on Robotics, 2022.\
• Fomekong, F. F., & Hugejile. (2021). "The Influence of Industry 4.0: A Case Study of Injection Molding Machines, Drones, 3D Printing, and Automation Factories." North American Academic Research, 4(12), 221-238.\
\
' "Rachel_Merveille_CV.txt"

# Copy the updated files to the docs directory
echo "📋 Copying updated CV files to the docs directory..."
cp "Rachel_Merveille_CV.html" "docs/"
cp "Rachel_Merveille_CV.txt" "docs/"

echo "✅ Publication information updated successfully!"
echo "🌐 Your updated CV is ready to deploy to GitHub Pages."
