#!/bin/bash

echo "🔧 Creating Improved Export Version of CV"
echo "========================================"

# Define paths
CV_FILE="Rachel_Merveille_CV.html"
CV_EXPORT_FILE="Rachel_Merveille_CV_export.html"
DOCS_DIR="docs"

# Check if CV file exists
if [ ! -f "$CV_FILE" ]; then
  echo "❌ Error: CV file $CV_FILE not found!"
  exit 1
fi

echo "📄 Creating export-optimized version of CV..."

# Create a copy that we'll modify for export
cp "$CV_FILE" "$CV_EXPORT_FILE"

# Add the specific CSS to hide download buttons only in print and exported versions
cat << 'EOL' > temp_export_css.txt
<style id="export-print-style">
  /* Hide download buttons in print and exported versions */
  @media print {
    .download-options, .download-button, 
    [role="button"], button, 
    .btn, .nav, nav, header {
      display: none !important;
      visibility: hidden !important;
      opacity: 0 !important;
    }
  }
  
  /* Class to be added when exporting to PDF or image */
  body.exporting .download-options,
  body.exporting .download-button,
  body.exporting [role="button"],
  body.exporting button,
  body.exporting .btn, 
  body.exporting .nav,
  body.exporting nav, 
  body.exporting header {
    display: none !important;
    visibility: hidden !important;
    opacity: 0 !important;
  }
  
  /* Fix any potential layout issues in exported versions */
  @media print, (exporting) {
    body {
      background-color: white !important;
      -webkit-print-color-adjust: exact !important;
      print-color-adjust: exact !important;
    }
  }
</style>
EOL

# Insert the export-specific CSS into the head section
# For macOS, we'll use a simpler approach
head_content=$(grep -n "</head>" "$CV_EXPORT_FILE" | cut -d':' -f1)
head_part=$(head -n $((head_content-1)) "$CV_EXPORT_FILE")
tail_part=$(tail -n +$head_content "$CV_EXPORT_FILE")
echo "$head_part" > "$CV_EXPORT_FILE"
cat temp_export_css.txt >> "$CV_EXPORT_FILE"
echo "$tail_part" >> "$CV_EXPORT_FILE"

# Remove the temp file
rm temp_export_css.txt

# Replace the standard cv-download.js with a special export version
cat << 'EOL' > export-cv-download.js
/**
 * Export-optimized CV Download Script
 */

// When DOM is loaded, automatically add the exporting class
window.addEventListener('DOMContentLoaded', function() {
  // Add exporting class to body to trigger the CSS that hides buttons
  document.body.classList.add('exporting');
  
  // Replace existing buttons with non-functional versions for exports
  const downloadOptions = document.querySelector('.download-options');
  if (downloadOptions) {
    downloadOptions.style.display = 'none';
  }
});

// Override the download functions to do nothing in the export version
function downloadAsPDF() {
  console.log('PDF download function disabled in export version');
  return false;
}

function downloadAsImage() {
  console.log('Image download function disabled in export version');
  return false;
}
EOL

# Replace the script reference in the export file
sed -i '' 's|<script src="cv-download.js"></script>|<script src="export-cv-download.js"></script>|g' "$CV_EXPORT_FILE"

# Copy the export JS file to both main and docs directories
cp "export-cv-download.js" "$DOCS_DIR/export-cv-download.js"

# Copy the export version to docs directory
cp "$CV_EXPORT_FILE" "$DOCS_DIR/$CV_EXPORT_FILE"

echo "✅ Export-optimized CV created successfully!"
echo "🚀 Now update cv-download.js to use this version for downloads"
