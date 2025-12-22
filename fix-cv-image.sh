#!/bin/bash

echo "🖼️ Updating CV with embedded profile image..."

# Define paths
CV_FILE="Rachel_Merveille_CV.html"
CV_DOWNLOAD_FILE="Rachel_Merveille_CV_download.html"
DOCS_DIR="docs"
PROFILE_IMAGE="profile1.jpg"

# Check if profile image exists
if [ ! -f "$PROFILE_IMAGE" ]; then
  echo "❌ Error: Profile image $PROFILE_IMAGE not found!"
  exit 1
fi

# Get the base64 encoded image
echo "Encoding profile image as base64..."
PROFILE_BASE64=$(base64 -i "$PROFILE_IMAGE")

# Create a backup of the original CV file
if [ -f "$CV_FILE" ]; then
  echo "Creating backup of original CV file..."
  cp "$CV_FILE" "${CV_FILE}.bak"
fi

# Create a new CV HTML file with the embedded image
echo "Creating CV with embedded image..."
cat > "$CV_FILE" << EOL
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fomekong Fomekong Rachel Merveille - CV</title>
  <style>
    @media print {
      body {
        margin: 0;
        padding: 0;
      }
    }
    
    body {
      font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
      margin: 0;
      padding: 0;
      display: flex;
      color: #333;
    }
    
    /* Left column */
    .left-column {
      background-color: #2d2d2d;
      color: #fff;
      padding: 30px;
      width: 30%;
      box-sizing: border-box;
    }
    
    .profile-image {
      width: 150px;
      height: 150px;
      border-radius: 50%;
      overflow: hidden;
      margin: 0 auto 20px;
      display: flex;
      align-items: center;
      justify-content: center;
      background-color: #64ffda;
      color: #0a192f;
      font-size: 2rem;
      font-weight: bold;
    }
    
    .profile-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    
    .section-title {
      text-transform: uppercase;
      font-size: 16px;
      margin-top: 30px;
      margin-bottom: 15px;
      letter-spacing: 1px;
    }
    
    .links a {
      color: #fff;
      text-decoration: none;
      display: block;
      margin-bottom: 8px;
    }
    
    .reference {
      margin-bottom: 20px;
    }
    
    .reference p {
      margin: 2px 0;
      font-size: 14px;
    }
    
    .hobbies {
      margin-top: 20px;
    }
    
    .hobbies ul {
      list-style-type: none;
      padding-left: 0;
    }
    
    .hobbies li {
      margin-bottom: 8px;
      font-size: 14px;
    }
    
    .hobbies li:before {
      content: "• ";
    }
    
    /* Right column */
    .right-column {
      padding: 30px;
      width: 70%;
      box-sizing: border-box;
    }
    
    .name {
      font-size: 32px;
      text-transform: uppercase;
      margin: 0 0 5px 0;
      letter-spacing: 1px;
      color: #333;
    }
    
    .title {
      text-transform: uppercase;
      color: #666;
      font-size: 14px;
      letter-spacing: 1px;
      margin-top: 0;
      margin-bottom: 30px;
    }
    
    .contact-info {
      margin-bottom: 30px;
    }
    
    .contact-item {
      display: flex;
      align-items: center;
      margin-bottom: 8px;
      font-size: 14px;
    }
    
    .section-header {
      text-transform: uppercase;
      border-bottom: 1px solid #ddd;
      padding-bottom: 8px;
      margin-top: 25px;
      margin-bottom: 15px;
      font-size: 18px;
      color: #333;
    }
    
    .experience {
      display: flex;
      margin-bottom: 20px;
    }
    
    .experience-details {
      flex: 1;
    }
    
    .timeline {
      width: 100px;
      font-size: 14px;
      color: #666;
    }
    
    .job-title {
      font-weight: bold;
      margin-bottom: 5px;
      font-size: 16px;
    }
    
    .company {
      color: #666;
      margin-bottom: 10px;
      font-size: 14px;
    }
    
    .experience-bullets {
      list-style-type: none;
      padding-left: 0;
    }
    
    .experience-bullets li {
      position: relative;
      padding-left: 15px;
      margin-bottom: 5px;
      font-size: 14px;
    }
    
    .experience-bullets li:before {
      content: "• ";
      position: absolute;
      left: 0;
    }
    
    .skills-container {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 15px;
    }
    
    .skill {
      margin-bottom: 10px;
    }
    
    .skill-name {
      font-size: 14px;
      margin-bottom: 5px;
    }
    
    .skill-bar {
      height: 5px;
      background-color: #ddd;
      border-radius: 2px;
    }
    
    .skill-level {
      height: 100%;
      background-color: #333;
      border-radius: 2px;
    }
  </style>
</head>
<body>
  <!-- Left column -->
  <div class="left-column">
    <div class="profile-image">
      <img src="data:image/jpeg;base64,${PROFILE_IMAGE}" alt="Rachel Merveille">
    </div>
    
    <h2 class="section-title">About Me</h2>
    <p style="font-size: 14px; line-height: 1.6;">
      Highly skilled and dedicated researcher with a focus on underwater robotics, SLAM, and deep learning. 
      Published multiple papers in renowned scientific journals and presented findings at international conferences. 
      Looking for a challenging position to apply and further develop my skills.
    </p>
    
    <h2 class="section-title">Links</h2>
    <div class="links">
      <a href="https://linkedin.com/in/rachel-merveille">LinkedIn: linkedin.com/in/rachel-merveille</a>
      <a href="https://github.com/MarvelousRachel">GitHub: github.com/MarvelousRachel</a>
    </div>
    
    <h2 class="section-title">References</h2>
    <div class="reference">
      <p><strong>Prof. Zhang Wei</strong></p>
      <p>Guangdong Ocean University</p>
      <p>T: +86 123 456 7890</p>
      <p>E: zhang.wei@gdou.edu.cn</p>
    </div>
    <div class="reference">
      <p><strong>Prof. Li Jianping</strong></p>
      <p>Huzhou University</p>
      <p>T: +86 987 654 3210</p>
      <p>E: li.jianping@huzhou.edu.cn</p>
    </div>
    
    <h2 class="section-title">Hobbies</h2>
    <div class="hobbies">
      <ul>
        <li>UNDERWATER PHOTOGRAPHY</li>
        <li>ROBOTICS PROJECTS</li>
        <li>READING SCIENTIFIC PAPERS</li>
        <li>PROGRAMMING CHALLENGES</li>
        <li>MOUNTAIN HIKING</li>
      </ul>
    </div>
  </div>
  
  <!-- Right column -->
  <div class="right-column">
    <h1 class="name">Fomekong Fomekong<br>Rachel Merveille</h1>
    <h2 class="title">PhD Candidate in Marine Engineering</h2>
    
    <div class="contact-info">
      <div class="contact-item">
        <span>Guangdong, China</span>
      </div>
      <div class="contact-item">
        <span>+86 123 456 7890</span>
      </div>
      <div class="contact-item">
        <span>rachelmerveille@example.com</span>
      </div>
    </div>
    
    <h3 class="section-header">Work Experience</h3>
    
    <div class="experience">
      <div class="timeline">
        <p>2022 - Present</p>
      </div>
      <div class="experience-details">
        <div class="job-title">PhD Researcher</div>
        <div class="company">Guangdong Ocean University, China</div>
        <ul class="experience-bullets">
          <li>Conducted research on underwater SLAM systems for UUVs</li>
          <li>Published several papers in prestigious scientific journals</li>
          <li>Collaborated with fellow researchers on various projects</li>
          <li>Presented findings at international conferences</li>
        </ul>
      </div>
    </div>
    
    <div class="experience">
      <div class="timeline">
        <p>2020 - 2022</p>
      </div>
      <div class="experience-details">
        <div class="job-title">Research Assistant</div>
        <div class="company">Huzhou University, China</div>
        <ul class="experience-bullets">
          <li>Assisted in theoretical physics research</li>
          <li>Conducted experiments and collected data</li>
          <li>Co-authored research papers</li>
          <li>Assisted in teaching undergraduate courses</li>
        </ul>
      </div>
    </div>
    
    <h3 class="section-header">Education</h3>
    
    <div class="experience">
      <div class="timeline">
        <p>2022 - 2026<br>(Expected)</p>
      </div>
      <div class="experience-details">
        <div class="job-title">PhD in Marine Engineering</div>
        <div class="company">Guangdong Ocean University, China</div>
        <ul class="experience-bullets">
          <li>Specializing in underwater robotics, SLAM, and deep learning</li>
          <li>Published several papers in renowned scientific journals</li>
        </ul>
      </div>
    </div>
    
    <div class="experience">
      <div class="timeline">
        <p>2020 - 2022</p>
      </div>
      <div class="experience-details">
        <div class="job-title">Master of Engineering in Control Engineering</div>
        <div class="company">Huzhou University, China</div>
        <ul class="experience-bullets">
          <li>GPA: 80.6/100</li>
          <li>Developed a non-contact temperature detection device (Utility Model Patent)</li>
        </ul>
      </div>
    </div>
    
    <div class="experience">
      <div class="timeline">
        <p>2014 - 2018</p>
      </div>
      <div class="experience-details">
        <div class="job-title">Bachelor of Science in Physics</div>
        <div class="company">University of Yaoundé 1, Cameroon</div>
      </div>
    </div>
    
    <h3 class="section-header">Skills</h3>
    
    <div class="skills-container">
      <div class="skill">
        <div class="skill-name">UNDERWATER ROBOTICS</div>
        <div class="skill-bar">
          <div class="skill-level" style="width: 95%"></div>
        </div>
      </div>
      
      <div class="skill">
        <div class="skill-name">SLAM</div>
        <div class="skill-bar">
          <div class="skill-level" style="width: 90%"></div>
        </div>
      </div>
      
      <div class="skill">
        <div class="skill-name">DEEP LEARNING</div>
        <div class="skill-bar">
          <div class="skill-level" style="width: 85%"></div>
        </div>
      </div>
      
      <div class="skill">
        <div class="skill-name">SENSOR FUSION</div>
        <div class="skill-bar">
          <div class="skill-level" style="width: 90%"></div>
        </div>
      </div>
      
      <div class="skill">
        <div class="skill-name">PYTHON</div>
        <div class="skill-bar">
          <div class="skill-level" style="width: 95%"></div>
        </div>
      </div>
      
      <div class="skill">
        <div class="skill-name">C++</div>
        <div class="skill-bar">
          <div class="skill-level" style="width: 85%"></div>
        </div>
      </div>
      
      <div class="skill">
        <div class="skill-name">ROS/ROS2</div>
        <div class="skill-bar">
          <div class="skill-level" style="width: 90%"></div>
        </div>
      </div>
      
      <div class="skill">
        <div class="skill-name">SCIENTIFIC WRITING</div>
        <div class="skill-bar">
          <div class="skill-level" style="width: 90%"></div>
        </div>
      </div>
    </div>
    
    <h3 class="section-header">Languages</h3>
    
    <div class="skills-container">
      <div class="skill">
        <div class="skill-name">ENGLISH</div>
        <div class="skill-bar">
          <div class="skill-level" style="width: 90%"></div>
        </div>
      </div>
      
      <div class="skill">
        <div class="skill-name">FRENCH</div>
        <div class="skill-bar">
          <div class="skill-level" style="width: 100%"></div>
        </div>
      </div>
      
      <div class="skill">
        <div class="skill-name">CHINESE (MANDARIN)</div>
        <div class="skill-bar">
          <div class="skill-level" style="width: 65%"></div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
EOL

echo "✅ Updated CV with embedded profile image successfully!"
echo "📄 The profile image is now embedded directly in the HTML file."
echo "🔄 Now the image will display correctly when the CV is downloaded."
