#!/bin/bash

echo "🔗 Adding Download Buttons to Index Page"
echo "=================================="

# Define paths
INDEX_FILE="index.html"
DOCS_INDEX_FILE="docs/index.html"

# Check if the files exist
if [ ! -f "$INDEX_FILE" ]; then
  echo "❌ Error: $INDEX_FILE not found!"
  exit 1
fi

# Backup original files
echo "💾 Creating backups of original files..."
cp "$INDEX_FILE" "${INDEX_FILE}.bak"
if [ -f "$DOCS_INDEX_FILE" ]; then
  cp "$DOCS_INDEX_FILE" "${DOCS_INDEX_FILE}.bak"
fi

# Ensure the script tag is included
echo "📜 Adding script reference to index.html..."
if ! grep -q "<script src=\"cv-download.js\">" "$INDEX_FILE"; then
  sed -i '' 's|</head>|<script src="cv-download.js"></script>\n</head>|' "$INDEX_FILE"
fi

# Find where to add the download buttons (after the hero section)
echo "🔘 Adding download buttons to index.html..."
# Check if download buttons already exist
if ! grep -q "download-my-cv-buttons" "$INDEX_FILE"; then
  # Add the download buttons HTML
  DOWNLOAD_BUTTONS='<div id="download-my-cv-buttons" class="container" style="text-align:center; padding: 20px 0;">\n  <h3>Download My CV</h3>\n  <div style="display:flex; justify-content:center; gap:20px; margin-top:15px;">\n    <button onclick="downloadAsPDF()" class="btn" style="background:#3498db; color:white; padding:10px 20px; border:none; border-radius:5px; cursor:pointer;">Download as PDF</button>\n    <button onclick="downloadAsImage()" class="btn" style="background:#2ecc71; color:white; padding:10px 20px; border:none; border-radius:5px; cursor:pointer;">Download as Image</button>\n    <a href="Rachel_Merveille_CV.html" target="_blank" class="btn" style="background:#e74c3c; color:white; padding:10px 20px; border:none; border-radius:5px; cursor:pointer; text-decoration:none;">View Full CV</a>\n  </div>\n</div>'
  
  # Try to find the hero section or another suitable location to add buttons
  if grep -q "<section class=\"hero\"" "$INDEX_FILE"; then
    # Add after the hero section closing tag
    sed -i '' "s|</section><!-- end hero -->|</section><!-- end hero -->\n$DOWNLOAD_BUTTONS|" "$INDEX_FILE"
  elif grep -q "<section id=\"hero\"" "$INDEX_FILE"; then
    # Alternative section ID format
    sed -i '' "s|</section><!-- end hero -->|</section><!-- end hero -->\n$DOWNLOAD_BUTTONS|" "$INDEX_FILE"
  else
    # Fallback: Add after the opening body tag
    sed -i '' "s|<body>|<body>\n$DOWNLOAD_BUTTONS|" "$INDEX_FILE"
  fi
else
  echo "Download buttons already exist in index.html"
fi

# Copy to docs directory if it exists
if [ -d "docs" ]; then
  echo "📂 Updating docs/index.html..."
  cp "$INDEX_FILE" "$DOCS_INDEX_FILE"
fi

echo "✅ Download buttons added successfully!"
echo "🌟 Your website now has CV download functionality."
echo "🔄 Don't forget to run the fix-complete-solution.sh script to ensure all parts are working together."
