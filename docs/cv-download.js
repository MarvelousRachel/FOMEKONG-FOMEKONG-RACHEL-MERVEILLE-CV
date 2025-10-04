/**
 * Enhanced CV Download Script
 * Provides high-quality PDF and PNG downloads of Rachel Merveille's CV
 * 
 * Features:
 * - Optimized PDF generation with proper page breaks
 * - High-resolution image export
 * - Responsive loading indicators
 * - Print functionality
 * - Modern UI with hover effects
 */

// Expose download functions to global window object for external access
window.downloadAsPDF = downloadAsPDF;
window.downloadAsImage = downloadAsImage;
 
window.addEventListener('DOMContentLoaded', function() {
  // Add download buttons to the page
  const downloadOptions = document.createElement('div');
  downloadOptions.className = 'download-options';
  
  // Add icon SVGs
  const pdfIcon = '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"><path d="M4 0h8a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2zm0 1a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H4z"/><path d="M4.603 12.087a.81.81 0 0 1-.438-.42c-.195-.388-.13-.776.08-1.102.198-.307.526-.568.897-.787a7.68 7.68 0 0 1 1.482-.645 19.701 19.701 0 0 0 1.062-2.227 7.269 7.269 0 0 1-.43-1.295c-.086-.4-.119-.796-.046-1.136.075-.354.274-.672.65-.823.192-.077.4-.12.602-.077a.7.7 0 0 1 .477.365c.088.164.12.356.127.538.007.187-.012.395-.047.614-.084.51-.27 1.134-.52 1.794a10.954 10.954 0 0 0 .98 1.686 5.753 5.753 0 0 1 1.334.05c.364.065.734.195.96.465.12.144.193.32.2.518.007.192-.047.382-.138.563a1.04 1.04 0 0 1-.354.416.856.856 0 0 1-.51.138c-.331-.014-.654-.196-.933-.417a5.716 5.716 0 0 1-.911-.95 11.642 11.642 0 0 0-1.997.406 11.311 11.311 0 0 1-1.021 1.51c-.29.35-.608.655-.926.787a.793.793 0 0 1-.58.029zm1.379-1.901c-.166.076-.32.156-.459.238-.328.194-.541.383-.647.547-.094.145-.096.25-.04.361.01.022.02.036.026.044a.27.27 0 0 0 .035-.012c.137-.056.355-.235.635-.572a8.18 8.18 0 0 0 .45-.606zm1.64-1.33a12.647 12.647 0 0 1 1.01-.193 11.666 11.666 0 0 1-.51-.858 20.741 20.741 0 0 1-.5 1.05zm2.446.45c.15.162.296.3.435.41.24.19.407.253.498.256a.107.107 0 0 0 .07-.015.307.307 0 0 0 .094-.125.436.436 0 0 0 .059-.2.095.095 0 0 0-.026-.063c-.052-.062-.2-.152-.518-.209a3.881 3.881 0 0 0-.612-.053zM8.078 5.8a6.7 6.7 0 0 0 .2-.828c.031-.188.043-.343.038-.465a.613.613 0 0 0-.032-.198.517.517 0 0 0-.145.04c-.087.035-.158.106-.196.283-.04.192-.03.469.046.822.024.111.054.227.09.346z"/></svg>';
  
  const imageIcon = '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"><path d="M4.502 9a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z"/><path d="M14.002 13a2 2 0 0 1-2 2h-10a2 2 0 0 1-2-2V5A2 2 0 0 1 2 3a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v8a2 2 0 0 1-1.998 2zM14 2H4a1 1 0 0 0-1 1h9.002a2 2 0 0 1 2 2v7A1 1 0 0 0 15 11V3a1 1 0 0 0-1-1zM2.002 4a1 1 0 0 0-1 1v8l2.646-2.354a.5.5 0 0 1 .63-.062l2.66 1.773 3.71-3.71a.5.5 0 0 1 .577-.094l1.777 1.947V5a1 1 0 0 0-1-1h-10z"/></svg>';
  
  const printIcon = '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"><path d="M2.5 8a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1z"/><path d="M5 1a2 2 0 0 0-2 2v2H2a2 2 0 0 0-2 2v3a2 2 0 0 0 2 2h1v1a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2v-1h1a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2h-1V3a2 2 0 0 0-2-2H5zM4 3a1 1 0 0 1 1-1h6a1 1 0 0 1 1 1v2H4V3zm1 5a2 2 0 0 0-2 2v1H2a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-1v-1a2 2 0 0 0-2-2H5zm7 2v3a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h6a1 1 0 0 1 1 1z"/></svg>';
  
  const websiteIcon = '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"><path d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm7.5-6.923c-.67.204-1.335.82-1.887 1.855-.143.268-.276.56-.395.872.705.157 1.472.257 2.282.287V1.077zM4.249 3.539c.142-.384.304-.744.481-1.078a6.7 6.7 0 0 1 .597-.933A7.01 7.01 0 0 0 3.051 3.05c.362.184.763.349 1.198.49zM3.509 7.5c.036-1.07.188-2.087.436-3.008a9.124 9.124 0 0 1-1.565-.667A6.964 6.964 0 0 0 1.018 7.5h2.49zm1.4-2.741a12.344 12.344 0 0 0-.4 2.741H7.5V5.091c-.91-.03-1.783-.145-2.591-.332zM8.5 5.09V7.5h2.99a12.342 12.342 0 0 0-.399-2.741c-.808.187-1.681.301-2.591.332zM4.51 8.5c.035.987.176 1.914.399 2.741A13.612 13.612 0 0 1 7.5 10.91V8.5H4.51zm3.99 0v2.409c.91.03 1.783.145 2.591.332.223-.827.364-1.754.4-2.741H8.5zm-3.282 3.696c.12.312.252.604.395.872.552 1.035 1.218 1.65 1.887 1.855V11.91c-.81.03-1.577.13-2.282.287zm.11 2.276a6.696 6.696 0 0 1-.598-.933 8.853 8.853 0 0 1-.481-1.079 8.38 8.38 0 0 0-1.198.49 7.01 7.01 0 0 0 2.276 1.522zm-1.383-2.964A13.36 13.36 0 0 1 3.508 8.5h-2.49a6.963 6.963 0 0 0 1.362 3.675c.47-.258.995-.482 1.565-.667zm6.728 2.964a7.009 7.009 0 0 0 2.275-1.521 8.376 8.376 0 0 0-1.197-.49 8.853 8.853 0 0 1-.481 1.078 6.688 6.688 0 0 1-.597.933zM8.5 11.909v3.014c.67-.204 1.335-.82 1.887-1.855.143-.268.276-.56.395-.872A12.63 12.63 0 0 0 8.5 11.91zm3.555-.401c.57.185 1.095.409 1.565.667A6.963 6.963 0 0 0 14.982 8.5h-2.49a13.36 13.36 0 0 1-.437 3.008zM14.982 7.5a6.963 6.963 0 0 0-1.362-3.675c-.47.258-.995.482-1.565.667.248.92.4 1.938.437 3.008h2.49zM11.27 2.461c.177.334.339.694.482 1.078a8.368 8.368 0 0 0 1.196-.49 7.01 7.01 0 0 0-2.275-1.52c.218.283.418.597.597.932zm-.488 1.343a7.765 7.765 0 0 0-.395-.872C9.835 1.897 9.17 1.282 8.5 1.077V4.09c.81-.03 1.577-.13 2.282-.287z"/></svg>';
  
  // PDF Download button
  const pdfButton = document.createElement('button');
  pdfButton.className = 'download-button';
  pdfButton.innerHTML = `${pdfIcon} Download as PDF`;
  pdfButton.onclick = downloadAsPDF;
  
  // Image Download button
  const imageButton = document.createElement('button');
  imageButton.className = 'download-button';
  imageButton.innerHTML = `${imageIcon} Download as Image`;
  imageButton.onclick = downloadAsImage;
  
  // Print button
  const printButton = document.createElement('button');
  printButton.className = 'download-button';
  printButton.innerHTML = `${printIcon} Print CV`;
  printButton.onclick = function() { window.print(); };
  
  // Website link button
  const websiteButton = document.createElement('a');
  websiteButton.className = 'download-button';
  websiteButton.innerHTML = `${websiteIcon} Visit Website`;
  websiteButton.href = 'https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/'; // GitHub Pages URL
  websiteButton.target = '_blank'; // Open in new tab
  websiteButton.rel = 'noopener noreferrer'; // Security best practice for external links
  
  // Add buttons to container
  downloadOptions.appendChild(pdfButton);
  downloadOptions.appendChild(imageButton);
  downloadOptions.appendChild(printButton);
  downloadOptions.appendChild(websiteButton); // Add the website button
  downloadOptions.appendChild(websiteButton);
  
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
      box-shadow: 0 2px 10px rgba(0,0,0,0.2);
      background: rgba(255,255,255,0.9);
      padding: 10px;
      border-radius: 8px;
      backdrop-filter: blur(5px);
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
      padding: 10px 16px;
      border-radius: 4px;
      cursor: pointer;
      font-weight: bold;
      display: flex;
      align-items: center;
      text-decoration: none;
      font-size: 14px;
      transition: all 0.2s ease;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }
    
    .download-button:hover {
      background-color: #52d6b8;
      transform: translateY(-2px);
      box-shadow: 0 4px 8px rgba(0,0,0,0.15);
    }
    
    .download-button svg {
      margin-right: 8px;
    }
    
    /* Website button specific styles */
    .download-options a.download-button {
      text-decoration: none;
      margin-top: 10px;
      border-top: 1px solid rgba(0,0,0,0.1);
      padding-top: 15px;
    }
    
    /* Style for the loading indicator */
    .cv-loading-overlay {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(255, 255, 255, 0.9);
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      z-index: 10000;
    }
    
    .cv-loading-spinner {
      width: 50px;
      height: 50px;
      border: 5px solid #f3f3f3;
      border-top: 5px solid #64ffda;
      border-radius: 50%;
      animation: spin 1s linear infinite;
      margin-bottom: 20px;
    }
    
    @keyframes spin {
      0% { transform: rotate(0deg); }
      100% { transform: rotate(360deg); }
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
  // Create loading overlay with spinner
  const loadingOverlay = document.createElement('div');
  loadingOverlay.className = 'cv-loading-overlay';
  
  const spinner = document.createElement('div');
  spinner.className = 'cv-loading-spinner';
  
  const message = document.createElement('div');
  message.style.fontSize = '18px';
  message.style.fontWeight = 'bold';
  message.style.marginTop = '20px';
  message.textContent = 'Generating PDF...';
  
  loadingOverlay.appendChild(spinner);
  loadingOverlay.appendChild(message);
  document.body.appendChild(loadingOverlay);
  
  // Hide download buttons for capture
  const downloadButtons = document.querySelector('.download-options');
  const originalDisplayStyle = downloadButtons.style.display;
  downloadButtons.style.display = 'none';
  
  // Apply print-specific styling for better PDF output
  const printStyle = document.createElement('style');
  printStyle.id = 'print-pdf-style';
  printStyle.textContent = `
    body {
      -webkit-print-color-adjust: exact !important;
      print-color-adjust: exact !important;
      color-adjust: exact !important;
      background-color: white !important;
    }
    
    @page {
      margin: 0;
      size: A4;
    }
  `;
  document.head.appendChild(printStyle);
  
  // Capture the whole document with improved settings
  setTimeout(function() {
    html2canvas(document.body, {
      scale: 3, // Higher resolution for better quality
      useCORS: true,
      allowTaint: true,
      backgroundColor: '#ffffff',
      scrollY: -window.scrollY,
      windowHeight: document.documentElement.offsetHeight,
      logging: false,
      onclone: function(clonedDoc) {
        // Additional styling for the cloned document if needed
        const elements = clonedDoc.querySelectorAll('*');
        elements.forEach(el => {
          // Ensure all text is visible in the PDF
          if (window.getComputedStyle(el).color === 'transparent') {
            el.style.color = '#000000';
          }
          // Fix any potential overflow issues
          if (window.getComputedStyle(el).overflow === 'hidden') {
            el.style.overflow = 'visible';
          }
        });
      }
    }).then(function(canvas) {
      const imgData = canvas.toDataURL('image/jpeg', 1.0);
      
      // Determine page size based on content
      const imgWidth = 210; // A4 width in mm (standard paper size)
      const pageHeight = 297; // A4 height in mm
      const imgHeight = canvas.height * imgWidth / canvas.width;
      
      // Create PDF with proper orientation and metadata
      const pdf = new jspdf.jsPDF({
        orientation: 'portrait',
        unit: 'mm',
        format: 'a4',
        putOnlyUsedFonts: true,
        compress: true
      });
      
      // Add document metadata
      pdf.setProperties({
        title: 'Rachel Merveille CV',
        subject: 'Curriculum Vitae',
        author: 'Rachel Merveille',
        keywords: 'CV, resume, curriculum vitae',
        creator: 'CV Download Tool'
      });
      
      // Handle multi-page if content exceeds one page
      let heightLeft = imgHeight;
      let position = 0;
      let pageNumber = 1;
      
      // Add first page
      pdf.addImage(imgData, 'JPEG', 0, position, imgWidth, imgHeight);
      heightLeft -= pageHeight;
      
      // Add additional pages if needed
      while (heightLeft > 0) {
        position = -pageHeight * pageNumber;
        pdf.addPage();
        pdf.addImage(imgData, 'JPEG', 0, position, imgWidth, imgHeight);
        heightLeft -= pageHeight;
        pageNumber++;
      }
      
      // Download the PDF with proper filename
      pdf.save('Rachel_Merveille_CV.pdf');
      
      // Show download buttons again
      downloadButtons.style.display = originalDisplayStyle;
      
      // Remove loading overlay
      document.body.removeChild(loadingOverlay);
      
      // Remove temporary print style
      document.head.removeChild(printStyle);
    });
  }, 1000); // Wait a bit for everything to render properly
}

// Generate and download PNG image of CV
function downloadAsImage() {
  // Create loading overlay with spinner
  const loadingOverlay = document.createElement('div');
  loadingOverlay.className = 'cv-loading-overlay';
  
  const spinner = document.createElement('div');
  spinner.className = 'cv-loading-spinner';
  
  const message = document.createElement('div');
  message.style.fontSize = '18px';
  message.style.fontWeight = 'bold';
  message.style.marginTop = '20px';
  message.textContent = 'Generating Image...';
  
  loadingOverlay.appendChild(spinner);
  loadingOverlay.appendChild(message);
  document.body.appendChild(loadingOverlay);
  
  // Hide download buttons for capture
  const downloadButtons = document.querySelector('.download-options');
  const originalDisplayStyle = downloadButtons.style.display;
  downloadButtons.style.display = 'none';
  
  // Apply print-specific styling for better image output
  const imageStyle = document.createElement('style');
  imageStyle.id = 'image-capture-style';
  imageStyle.textContent = `
    body {
      -webkit-print-color-adjust: exact !important;
      print-color-adjust: exact !important;
      color-adjust: exact !important;
      background-color: white !important;
    }
  `;
  document.head.appendChild(imageStyle);
  
  // Capture the whole document with improved settings
  setTimeout(function() {
    html2canvas(document.body, {
      scale: 3, // Higher resolution for better quality
      useCORS: true,
      allowTaint: true,
      backgroundColor: '#ffffff',
      scrollY: -window.scrollY,
      windowHeight: document.documentElement.offsetHeight,
      logging: false,
      onclone: function(clonedDoc) {
        // Additional styling for the cloned document if needed
        const elements = clonedDoc.querySelectorAll('*');
        elements.forEach(el => {
          // Ensure all text is visible in the image
          if (window.getComputedStyle(el).color === 'transparent') {
            el.style.color = '#000000';
          }
          // Fix any potential overflow issues
          if (window.getComputedStyle(el).overflow === 'hidden') {
            el.style.overflow = 'visible';
          }
        });
      }
    }).then(function(canvas) {
      // Optimize canvas for high-quality PNG
      const ctx = canvas.getContext('2d');
      ctx.imageSmoothingEnabled = true;
      ctx.imageSmoothingQuality = 'high';
      
      // Create download link for the image
      const link = document.createElement('a');
      link.download = 'Rachel_Merveille_CV.png';
      
      // Use PNG format with highest quality
      link.href = canvas.toDataURL('image/png', 1.0);
      link.click();
      
      // Show download buttons again
      downloadButtons.style.display = originalDisplayStyle;
      
      // Remove loading overlay
      document.body.removeChild(loadingOverlay);
      
      // Remove temporary style
      document.head.removeChild(imageStyle);
      
      // Show success notification
      const notification = document.createElement('div');
      notification.style.position = 'fixed';
      notification.style.bottom = '20px';
      notification.style.right = '20px';
      notification.style.backgroundColor = '#64ffda';
      notification.style.color = '#212529';
      notification.style.padding = '15px';
      notification.style.borderRadius = '5px';
      notification.style.boxShadow = '0 2px 10px rgba(0,0,0,0.2)';
      notification.style.zIndex = '10000';
      notification.style.opacity = '1';
      notification.style.transition = 'opacity 0.5s';
      notification.textContent = 'Image downloaded successfully!';
      document.body.appendChild(notification);
      
      // Remove notification after 3 seconds
      setTimeout(function() {
        notification.style.opacity = '0';
        setTimeout(function() {
          document.body.removeChild(notification);
        }, 500);
      }, 3000);
    });
  }, 1000); // Wait a bit for everything to render properly
}
