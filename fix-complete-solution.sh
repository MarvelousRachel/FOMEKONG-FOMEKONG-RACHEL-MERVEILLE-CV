#!/bin/bash

echo "🔧 Comprehensive CV Fix: Image Embedding & Download Functionality"
echo "==========================================================="

# Define paths and files
CV_FILE="Rachel_Merveille_CV.html"
CV_DOWNLOAD_FILE="Rachel_Merveille_CV_download.html"
DOCS_DIR="docs"
PROFILE_IMAGE="profile1.jpg"
JS_FILE="cv-download.js"

# Step 1: Check if profile image exists
if [ ! -f "$PROFILE_IMAGE" ]; then
  echo "❌ Error: Profile image $PROFILE_IMAGE not found!"
  exit 1
fi

# Step 2: Create base64 encoding of the image
echo "🖼️ Encoding profile image as base64..."
BASE64_IMAGE=$(base64 -i "$PROFILE_IMAGE")
if [ $? -ne 0 ]; then
  echo "❌ Error encoding image!"
  exit 1
fi

# Step 3: Backup original files
echo "💾 Creating backups of original files..."
if [ -f "$CV_FILE" ]; then
  cp "$CV_FILE" "${CV_FILE}.bak"
fi

if [ -f "$JS_FILE" ]; then
  cp "$JS_FILE" "${JS_FILE}.bak"
fi

# Step 4: Make sure JS functions are exposed globally
echo "🔄 Ensuring JavaScript functions are exposed globally..."
if ! grep -q "window.downloadAsPDF" "$JS_FILE"; then
  # Add the global function declarations if they don't exist
  sed -i '' '1s/^/\/\/ Expose download functions globally\nwindow.downloadAsPDF = downloadAsPDF;\nwindow.downloadAsImage = downloadAsImage;\n\n/' "$JS_FILE"
fi

# Step 5: Update the CV file with embedded image
echo "📄 Updating CV with embedded profile image..."
# Search for the img tag and replace it with our base64 image
sed -i '' "s|<img src=\"[^\"]*\"|<img src=\"data:image/jpeg;base64,$BASE64_IMAGE\"|g" "$CV_FILE"

# Step 6: Create downloadable version
echo "📥 Creating downloadable version of CV..."
cp "$CV_FILE" "$CV_DOWNLOAD_FILE"

# Step 7: Copy updated files to docs directory
echo "📂 Updating files in docs directory..."
cp "$CV_FILE" "$DOCS_DIR/$CV_FILE"
cp "$CV_DOWNLOAD_FILE" "$DOCS_DIR/$CV_DOWNLOAD_FILE"
cp "$JS_FILE" "$DOCS_DIR/$JS_FILE"
cp "$PROFILE_IMAGE" "$DOCS_DIR/$PROFILE_IMAGE"

# Step 8: Update index.html to ensure download buttons work
echo "🔗 Ensuring download buttons are properly linked..."
INDEX_FILE="index.html"
DOCS_INDEX_FILE="$DOCS_DIR/$INDEX_FILE"

# Add script tag if it doesn't exist
for file in "$INDEX_FILE" "$DOCS_INDEX_FILE"; do
  if [ -f "$file" ] && ! grep -q "<script src=\"cv-download.js\">" "$file"; then
    sed -i '' 's|</head>|<script src="cv-download.js"></script>\n</head>|' "$file"
  fi
done

echo "✅ All updates completed successfully!"
echo "🌟 Your CV now has properly embedded images and working download functionality."
echo "🧪 Please test the following:"
echo "   1. Open index.html and try the PDF and Image download buttons"
echo "   2. Open Rachel_Merveille_CV.html and verify the profile image appears"
echo "   3. Try downloading the CV as PDF or Image from the CV page"
echo "   4. Check that all functionality works in the docs directory too"
