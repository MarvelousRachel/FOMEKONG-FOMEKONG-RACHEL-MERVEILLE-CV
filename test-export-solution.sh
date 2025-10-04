#!/bin/bash

echo "🧪 Testing Export Solution"
echo "========================="

# Check if the export-optimized CV files were created
if [ -f "Rachel_Merveille_CV_export.html" ]; then
  echo "✅ Export CV HTML file exists"
else
  echo "❌ Export CV HTML file not found!"
  exit 1
fi

if [ -f "export-cv-download.js" ]; then
  echo "✅ Export CV download script exists"
else
  echo "❌ Export CV download script not found!"
  exit 1
fi

# Check if the files were also copied to docs
if [ -f "docs/Rachel_Merveille_CV_export.html" ]; then
  echo "✅ Export CV HTML file copied to docs"
else
  echo "❌ Export CV HTML file not found in docs!"
  exit 1
fi

if [ -f "docs/export-cv-download.js" ]; then
  echo "✅ Export CV download script copied to docs"
else
  echo "❌ Export CV download script not found in docs!"
  exit 1
fi

# Check if CV download functions properly use the export version
if grep -q "getExportVersionUrl()" "cv-download.js"; then
  echo "✅ CV download functions properly use the export version"
else
  echo "❌ CV download functions don't use the export version!"
  exit 1
fi

echo "✅ All tests passed! The export solution is correctly set up."
echo "📝 You can now test the actual download functionality in a browser."
echo "🔍 Check that no UI elements appear in the exported PDF or image."
