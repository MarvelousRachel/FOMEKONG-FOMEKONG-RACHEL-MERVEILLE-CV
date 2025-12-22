#!/bin/bash

echo "🔍 Testing CV Image and Download Functionality"
echo "==========================================="

# Define paths and files
CV_FILE="Rachel_Merveille_CV.html"
CV_DOWNLOAD_FILE="Rachel_Merveille_CV_download.html"
DOCS_DIR="docs"
JS_FILE="cv-download.js"
INDEX_FILE="index.html"

# Test 1: Check if files exist
echo "📋 Test 1: Checking if all required files exist..."
FILES=("$CV_FILE" "$CV_DOWNLOAD_FILE" "$JS_FILE" "$INDEX_FILE" 
       "$DOCS_DIR/$CV_FILE" "$DOCS_DIR/$CV_DOWNLOAD_FILE" "$DOCS_DIR/$JS_FILE")

all_files_exist=true
for file in "${FILES[@]}"; do
  if [ ! -f "$file" ]; then
    echo "❌ Missing file: $file"
    all_files_exist=false
  fi
done

if $all_files_exist; then
  echo "✅ All required files exist."
else
  echo "⚠️ Some files are missing. Fix before continuing."
fi

# Test 2: Check if image is embedded in CV
echo -e "\n📋 Test 2: Checking for embedded image in CV files..."
for file in "$CV_FILE" "$CV_DOWNLOAD_FILE" "$DOCS_DIR/$CV_FILE" "$DOCS_DIR/$CV_DOWNLOAD_FILE"; do
  if grep -q "data:image/jpeg;base64," "$file"; then
    echo "✅ Embedded image found in $file"
  else
    echo "❌ No embedded image in $file"
  fi
done

# Test 3: Check if JS functions are exposed globally
echo -e "\n📋 Test 3: Checking if JS download functions are exposed globally..."
for js_file in "$JS_FILE" "$DOCS_DIR/$JS_FILE"; do
  if grep -q "window.downloadAsPDF" "$js_file" && grep -q "window.downloadAsImage" "$js_file"; then
    echo "✅ Download functions are exposed globally in $js_file"
  else
    echo "❌ Download functions are NOT exposed globally in $js_file"
  fi
done

# Test 4: Check if index.html includes the cv-download.js script
echo -e "\n📋 Test 4: Checking if index.html includes the download script..."
for idx_file in "$INDEX_FILE" "$DOCS_DIR/$INDEX_FILE"; do
  if grep -q "<script src=\"cv-download.js\">" "$idx_file"; then
    echo "✅ Script tag found in $idx_file"
  else
    echo "❌ Script tag missing in $idx_file"
  fi
done

echo -e "\n📊 Test Summary"
echo "=============="
echo "If all tests passed with ✅, your CV and download functionality should work correctly."
echo "If any tests failed with ❌, run the fix-complete-solution.sh script."
echo -e "\n📱 Next Steps:"
echo "1. Open index.html in a browser"
echo "2. Try the PDF and Image download buttons"
echo "3. Open Rachel_Merveille_CV.html and verify the image appears"
echo "4. Try downloading from the CV page as well"
