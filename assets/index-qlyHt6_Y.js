(function(){const r=document.createElement("link").relList;if(r&&r.supports&&r.supports("modulepreload"))return;for(const e of document.querySelectorAll('link[rel="modulepreload"]'))o(e);new MutationObserver(e=>{for(const n of e)if(n.type==="childList")for(const d of n.addedNodes)d.tagName==="LINK"&&d.rel==="modulepreload"&&o(d)}).observe(document,{childList:!0,subtree:!0});function i(e){const n={};return e.integrity&&(n.integrity=e.integrity),e.referrerPolicy&&(n.referrerPolicy=e.referrerPolicy),e.crossOrigin==="use-credentials"?n.credentials="include":e.crossOrigin==="anonymous"?n.credentials="omit":n.credentials="same-origin",n}function o(e){if(e.ep)return;e.ep=!0;const n=i(e);fetch(e.href,n)}})();function y(){return window.location.href}window.downloadAsPDF=b;window.downloadAsImage=x;window.addEventListener("DOMContentLoaded",function(){const a=document.createElement("div");a.className="download-options";const r='<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"><path d="M4 0h8a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2zm0 1a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H4z"/><path d="M4.603 12.087a.81.81 0 0 1-.438-.42c-.195-.388-.13-.776.08-1.102.198-.307.526-.568.897-.787a7.68 7.68 0 0 1 1.482-.645 19.701 19.701 0 0 0 1.062-2.227 7.269 7.269 0 0 1-.43-1.295c-.086-.4-.119-.796-.046-1.136.075-.354.274-.672.65-.823.192-.077.4-.12.602-.077a.7.7 0 0 1 .477.365c.088.164.12.356.127.538.007.187-.012.395-.047.614-.084.51-.27 1.134-.52 1.794a10.954 10.954 0 0 0 .98 1.686 5.753 5.753 0 0 1 1.334.05c.364.065.734.195.96.465.12.144.193.32.2.518.007.192-.047.382-.138.563a1.04 1.04 0 0 1-.354.416.856.856 0 0 1-.51.138c-.331-.014-.654-.196-.933-.417a5.716 5.716 0 0 1-.911-.95 11.642 11.642 0 0 0-1.997.406 11.311 11.311 0 0 1-1.021 1.51c-.29.35-.608.655-.926.787a.793.793 0 0 1-.58.029zm1.379-1.901c-.166.076-.32.156-.459.238-.328.194-.541.383-.647.547-.094.145-.096.25-.04.361.01.022.02.036.026.044a.27.27 0 0 0 .035-.012c.137-.056.355-.235.635-.572a8.18 8.18 0 0 0 .45-.606zm1.64-1.33a12.647 12.647 0 0 1 1.01-.193 11.666 11.666 0 0 1-.51-.858 20.741 20.741 0 0 1-.5 1.05zm2.446.45c.15.162.296.3.435.41.24.19.407.253.498.256a.107.107 0 0 0 .07-.015.307.307 0 0 0 .094-.125.436.436 0 0 0 .059-.2.095.095 0 0 0-.026-.063c-.052-.062-.2-.152-.518-.209a3.881 3.881 0 0 0-.612-.053zM8.078 5.8a6.7 6.7 0 0 0 .2-.828c.031-.188.043-.343.038-.465a.613.613 0 0 0-.032-.198.517.517 0 0 0-.145.04c-.087.035-.158.106-.196.283-.04.192-.03.469.046.822.024.111.054.227.09.346z"/></svg>',i='<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"><path d="M4.502 9a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z"/><path d="M14.002 13a2 2 0 0 1-2 2h-10a2 2 0 0 1-2-2V5A2 2 0 0 1 2 3a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v8a2 2 0 0 1-1.998 2zM14 2H4a1 1 0 0 0-1 1h9.002a2 2 0 0 1 2 2v7A1 1 0 0 0 15 11V3a1 1 0 0 0-1-1zM2.002 4a1 1 0 0 0-1 1v8l2.646-2.354a.5.5 0 0 1 .63-.062l2.66 1.773 3.71-3.71a.5.5 0 0 1 .577-.094l1.777 1.947V5a1 1 0 0 0-1-1h-10z"/></svg>',o='<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"><path d="M2.5 8a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1z"/><path d="M5 1a2 2 0 0 0-2 2v2H2a2 2 0 0 0-2 2v3a2 2 0 0 0 2 2h1v1a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2v-1h1a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2h-1V3a2 2 0 0 0-2-2H5zM4 3a1 1 0 0 1 1-1h6a1 1 0 0 1 1 1v2H4V3zm1 5a2 2 0 0 0-2 2v1H2a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-1v-1a2 2 0 0 0-2-2H5zm7 2v3a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h6a1 1 0 0 1 1 1z"/></svg>',e='<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"><path d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm7.5-6.923c-.67.204-1.335.82-1.887 1.855-.143.268-.276.56-.395.872.705.157 1.472.257 2.282.287V1.077zM4.249 3.539c.142-.384.304-.744.481-1.078a6.7 6.7 0 0 1 .597-.933A7.01 7.01 0 0 0 3.051 3.05c.362.184.763.349 1.198.49zM3.509 7.5c.036-1.07.188-2.087.436-3.008a9.124 9.124 0 0 1-1.565-.667A6.964 6.964 0 0 0 1.018 7.5h2.49zm1.4-2.741a12.344 12.344 0 0 0-.4 2.741H7.5V5.091c-.91-.03-1.783-.145-2.591-.332zM8.5 5.09V7.5h2.99a12.342 12.342 0 0 0-.399-2.741c-.808.187-1.681.301-2.591.332zM4.51 8.5c.035.987.176 1.914.399 2.741A13.612 13.612 0 0 1 7.5 10.91V8.5H4.51zm3.99 0v2.409c.91.03 1.783.145 2.591.332.223-.827.364-1.754.4-2.741H8.5zm-3.282 3.696c.12.312.252.604.395.872.552 1.035 1.218 1.65 1.887 1.855V11.91c-.81.03-1.577.13-2.282.287zm.11 2.276a6.696 6.696 0 0 1-.598-.933 8.853 8.853 0 0 1-.481-1.079 8.38 8.38 0 0 0-1.198.49 7.01 7.01 0 0 0 2.276 1.522zm-1.383-2.964A13.36 13.36 0 0 1 3.508 8.5h-2.49a6.963 6.963 0 0 0 1.362 3.675c.47-.258.995-.482 1.565-.667zm6.728 2.964a7.009 7.009 0 0 0 2.275-1.521 8.376 8.376 0 0 0-1.197-.49 8.853 8.853 0 0 1-.481 1.078 6.688 6.688 0 0 1-.597.933zM8.5 11.909v3.014c.67-.204 1.335-.82 1.887-1.855.143-.268.276-.56.395-.872A12.63 12.63 0 0 0 8.5 11.91zm3.555-.401c.57.185 1.095.409 1.565.667A6.963 6.963 0 0 0 14.982 8.5h-2.49a13.36 13.36 0 0 1-.437 3.008zM14.982 7.5a6.963 6.963 0 0 0-1.362-3.675c-.47.258-.995.482-1.565.667.248.92.4 1.938.437 3.008h2.49zM11.27 2.461c.177.334.339.694.482 1.078a8.368 8.368 0 0 0 1.196-.49 7.01 7.01 0 0 0-2.275-1.52c.218.283.418.597.597.932zm-.488 1.343a7.765 7.765 0 0 0-.395-.872C9.835 1.897 9.17 1.282 8.5 1.077V4.09c.81-.03 1.577-.13 2.282-.287z"/></svg>',n=document.createElement("button");n.className="download-button",n.innerHTML=`${r} Download as PDF`,n.onclick=b;const d=document.createElement("button");d.className="download-button",d.innerHTML=`${i} Download as Image`,d.onclick=x;const l=document.createElement("button");l.className="download-button",l.innerHTML=`${o} Print CV`,l.onclick=function(){window.print()};const t=document.createElement("a");t.className="download-button",t.innerHTML=`${e} Visit Website`,t.href="https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/",t.target="_blank",t.rel="noopener noreferrer",a.appendChild(n),a.appendChild(d),a.appendChild(l),a.appendChild(t),document.body.insertBefore(a,document.body.firstChild);const s=document.createElement("style");s.textContent=`
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
  `,document.head.appendChild(s),f("https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js",function(){f("https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js",function(){console.log("CV download libraries loaded")})})});function f(a,r){var i=document.createElement("script");i.type="text/javascript",i.src=a,i.onload=r,document.head.appendChild(i)}function b(){const a=document.createElement("div");a.className="cv-loading-overlay";const r=document.createElement("div");r.className="cv-loading-spinner";const i=document.createElement("div");i.style.fontSize="18px",i.style.fontWeight="bold",i.style.marginTop="20px",i.textContent="Generating PDF...",a.appendChild(r),a.appendChild(i),document.body.appendChild(a);const o=document.createElement("iframe");o.style.position="absolute",o.style.left="-9999px",o.style.width="1200px",o.style.height="15000px",o.src=y(),document.body.appendChild(o),o.onload=function(){setTimeout(function(){try{const e=o.contentDocument||o.contentWindow.document;e.body&&e.body.classList.add("exporting");const n=Math.max(e.body.scrollHeight,e.body.offsetHeight,e.documentElement.clientHeight,e.documentElement.scrollHeight,e.documentElement.offsetHeight);html2canvas(e.body,{scale:2,useCORS:!0,allowTaint:!0,backgroundColor:"#ffffff",scrollY:0,scrollX:0,windowHeight:n,height:n,logging:!1,onclone:function(d){d.querySelectorAll('.download-options, .download-button, [role="button"], button, .btn, .nav, nav, header').forEach(t=>{t.style.display="none",t.style.visibility="hidden",t.style.opacity="0"})}}).then(function(d){const l=d.toDataURL("image/jpeg",1),t=210,s=297,p=d.height*t/d.width,m=new jspdf.jsPDF({orientation:"portrait",unit:"mm",format:"a4",putOnlyUsedFonts:!0,compress:!0});m.setProperties({title:"Rachel Merveille CV",subject:"Curriculum Vitae",author:"Rachel Merveille",keywords:"CV, resume, curriculum vitae",creator:"CV Download Tool"});let u=p,h=0,g=1;for(m.addImage(l,"JPEG",0,h,t,p),u-=s;u>0;)h=-s*g,m.addPage(),m.addImage(l,"JPEG",0,h,t,p),u-=s,g++;m.save("Rachel_Merveille_CV.pdf"),document.body.removeChild(o),document.body.removeChild(a);const c=document.createElement("div");c.style.position="fixed",c.style.bottom="20px",c.style.right="20px",c.style.backgroundColor="#64ffda",c.style.color="#212529",c.style.padding="15px",c.style.borderRadius="5px",c.style.boxShadow="0 2px 10px rgba(0,0,0,0.2)",c.style.zIndex="10000",c.textContent="PDF successfully generated",document.body.appendChild(c),setTimeout(function(){document.body.removeChild(c)},3e3)})}catch(e){console.error("Error generating PDF:",e),document.body.removeChild(a),document.body.removeChild(o),alert("Error generating PDF. Please try again.")}},3e3)}}function x(){const a=document.createElement("div");a.className="cv-loading-overlay";const r=document.createElement("div");r.className="cv-loading-spinner";const i=document.createElement("div");i.style.fontSize="18px",i.style.fontWeight="bold",i.style.marginTop="20px",i.textContent="Generating Image...",a.appendChild(r),a.appendChild(i),document.body.appendChild(a);const o=document.createElement("iframe");o.style.position="absolute",o.style.left="-9999px",o.style.width="1200px",o.style.height="2000px",o.src=y(),document.body.appendChild(o),o.onload=function(){setTimeout(function(){try{const e=o.contentDocument||o.contentWindow.document;e.body&&e.body.classList.add("exporting"),html2canvas(e.body,{scale:3,useCORS:!0,allowTaint:!0,backgroundColor:"#ffffff",scrollY:0,windowHeight:e.documentElement.offsetHeight,logging:!1,onclone:function(n){n.querySelectorAll('.download-options, .download-button, [role="button"], button, .btn, .nav, nav, header').forEach(l=>{l.style.display="none",l.style.visibility="hidden",l.style.opacity="0"})}}).then(function(n){const d=n.getContext("2d");d.imageSmoothingEnabled=!0,d.imageSmoothingQuality="high";const l=document.createElement("a");l.download="Rachel_Merveille_CV.png",l.href=n.toDataURL("image/png",1),l.click(),document.body.removeChild(o),document.body.removeChild(a);const t=document.createElement("div");t.style.position="fixed",t.style.bottom="20px",t.style.right="20px",t.style.backgroundColor="#64ffda",t.style.color="#212529",t.style.padding="15px",t.style.borderRadius="5px",t.style.boxShadow="0 2px 10px rgba(0,0,0,0.2)",t.style.zIndex="10000",t.style.opacity="1",t.style.transition="opacity 0.5s",t.textContent="Image downloaded successfully!",document.body.appendChild(t),setTimeout(function(){t.style.opacity="0",setTimeout(function(){document.body.removeChild(t)},500)},3e3)})}catch(e){console.error("Error generating image:",e),document.body.removeChild(a),document.body.removeChild(o),alert("Error generating image. Please try again.")}},2e3)}}
