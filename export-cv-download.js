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
