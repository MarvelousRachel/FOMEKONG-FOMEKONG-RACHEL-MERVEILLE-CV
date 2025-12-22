#!/bin/bash

# Script to create a self-contained HTML CV with embedded images

echo "Creating self-contained CV with embedded images..."

# Create a temporary copy of the CV file
cp Rachel_Merveille_CV.html Rachel_Merveille_CV_embedded.html

# Get the base64 encoded image data
if [ -f "profile1.jpg" ]; then
    BASE64_IMG=$(base64 -i profile1.jpg)
    echo "Image encoded successfully."
else
    echo "Error: profile1.jpg not found!"
    exit 1
fi

# Replace the image reference with the base64 encoded data
sed -i '' "s|<img src=\"profile1.jpg\" alt=\"Fomekong Fomekong Rachel Merveille\" width=\"150\" height=\"150\">|<img src=\"data:image/jpeg;base64,${BASE64_IMG}\" alt=\"Fomekong Fomekong Rachel Merveille\" width=\"150\" height=\"150\">|g" Rachel_Merveille_CV_embedded.html

echo "Image embedded successfully."

# Replace the original file with the embedded version
mv Rachel_Merveille_CV_embedded.html Rachel_Merveille_CV.html

# Also update the file in the docs directory
cp Rachel_Merveille_CV.html docs/Rachel_Merveille_CV.html

echo "Self-contained CV created successfully. Images are now embedded and will display when downloaded."
