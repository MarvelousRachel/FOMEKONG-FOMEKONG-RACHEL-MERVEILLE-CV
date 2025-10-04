/**
 * This script adds download functionality to Rachel Merveille's CV
 * It enables downloading the CV as PDF or PNG image
 */
 
window.addEventListener('DOMContentLoaded', function() {
  // Add download buttons to the page
  const downloadOptions = document.createElement('div');
  downloadOptions.className = 'download-options';
  
  // PDF Download button
  const pdfButton = document.createElement('button');
  pdfButton.className = 'download-button';
  pdfButton.innerHTML = 'Download as PDF';
  pdfButton.onclick = downloadAsPDF;
  
  // Image Download button
  const imageButton = document.createElement('button');
  imageButton.className = 'download-button';
  imageButton.innerHTML = 'Download as Image';
  imageButton.onclick = downloadAsImage;
  
  // Print button
  const printButton = document.createElement('button');
  printButton.className = 'download-button';
  printButton.innerHTML = 'Print CV';
  printButton.onclick = function() { window.print(); };
  
  // Add buttons to container
  downloadOptions.appendChild(pdfButton);
  downloadOptions.appendChild(imageButton);
  downloadOptions.appendChild(printButton);
  
  // Add container to body
  document.body.insertBefore(downloadOptions, document.body.firstChild);
  
  // Add the required styles
  const style = document.createElement('style');
  style.textContent = `
    .download-options {
      position: fixed;
      top: 10px;
      right: 10px;
      z-index: 1000;
      display: flex;
      flex-direction: column;
      gap: 10px;
    }
    
    @media print {
      .download-options {
        display: none;
      }
    }
    
    .download-button {
      background-color: #64ffda;
      color: #212529;
      border: none;
      padding: 8px 16px;
      border-radius: 4px;
      cursor: pointer;
      font-weight: bold;
      display: flex;
      align-items: center;
      text-decoration: none;
      font-size: 14px;
    }
    
    .download-button:hover {
      background-color: #52d6b8;
    }
  `;
  document.head.appendChild(style);
  
  // Load required libraries
  loadScript('https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js', function() {
    loadScript('https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js', function() {
      console.log('CV download libraries loaded');
    });
  });
});

// Function to load external scripts
function loadScript(url, callback) {
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.src = url;
  script.onload = callback;
  document.head.appendChild(script);
}

// Generate and download PDF version of CV
function downloadAsPDF() {
  // Show loading indicator
  const loadingElement = document.createElement('div');
  loadingElement.style.position = 'fixed';
  loadingElement.style.top = '0';
  loadingElement.style.left = '0';
  loadingElement.style.width = '100%';
  loadingElement.style.height = '100%';
  loadingElement.style.backgroundColor = 'rgba(255, 255, 255, 0.8)';
  loadingElement.style.display = 'flex';
  loadingElement.style.alignItems = 'center';
  loadingElement.style.justifyContent = 'center';
  loadingElement.style.zIndex = '10000';
  loadingElement.innerHTML = '<div style="font-size: 24px; font-weight: bold;">Generating PDF...</div>';
  document.body.appendChild(loadingElement);
  
  // Hide download buttons for capture
  const downloadButtons = document.querySelector('.download-options');
  const originalDisplayStyle = downloadButtons.style.display;
  downloadButtons.style.display = 'none';
  
  // Capture the whole document
  setTimeout(function() {
    html2canvas(document.body, {
      scale: 2, // Higher resolution
      useCORS: true,
      allowTaint: true,
      scrollY: -window.scrollY,
      windowHeight: document.documentElement.offsetHeight
    }).then(function(canvas) {
      const imgData = canvas.toDataURL('image/jpeg', 1.0);
      
      // Determine page size based on content
      const imgWidth = 210; // A4 width in mm (standard paper size)
      const pageHeight = 297; // A4 height in mm
      const imgHeight = canvas.height * imgWidth / canvas.width;
      
      // Create PDF with proper orientation
      const pdf = new jspdf.jsPDF('p', 'mm', 'a4');
      
      // Add image to PDF, maintaining aspect ratio
      pdf.addImage(imgData, 'JPEG', 0, 0, imgWidth, imgHeight);
      
      // Download the PDF
      pdf.save('Rachel_Merveille_CV.pdf');
      
      // Show download buttons again
      downloadButtons.style.display = originalDisplayStyle;
      
      // Remove loading indicator
      document.body.removeChild(loadingElement);
    });
  }, 1000); // Wait a bit for everything to render properly
}

// Generate and download PNG image of CV
function downloadAsImage() {
  // Show loading indicator
  const loadingElement = document.createElement('div');
  loadingElement.style.position = 'fixed';
  loadingElement.style.top = '0';
  loadingElement.style.left = '0';
  loadingElement.style.width = '100%';
  loadingElement.style.height = '100%';
  loadingElement.style.backgroundColor = 'rgba(255, 255, 255, 0.8)';
  loadingElement.style.display = 'flex';
  loadingElement.style.alignItems = 'center';
  loadingElement.style.justifyContent = 'center';
  loadingElement.style.zIndex = '10000';
  loadingElement.innerHTML = '<div style="font-size: 24px; font-weight: bold;">Generating Image...</div>';
  document.body.appendChild(loadingElement);
  
  // Hide download buttons for capture
  const downloadButtons = document.querySelector('.download-options');
  const originalDisplayStyle = downloadButtons.style.display;
  downloadButtons.style.display = 'none';
  
  // Capture the whole document
  setTimeout(function() {
    html2canvas(document.body, {
      scale: 2, // Higher resolution
      useCORS: true,
      allowTaint: true,
      scrollY: -window.scrollY,
      windowHeight: document.documentElement.offsetHeight
    }).then(function(canvas) {
      // Create download link for the image
      const link = document.createElement('a');
      link.download = 'Rachel_Merveille_CV.png';
      link.href = canvas.toDataURL('image/png');
      link.click();
      
      // Show download buttons again
      downloadButtons.style.display = originalDisplayStyle;
      
      // Remove loading indicator
      document.body.removeChild(loadingElement);
    });
  }, 1000); // Wait a bit for everything to render properly
}
