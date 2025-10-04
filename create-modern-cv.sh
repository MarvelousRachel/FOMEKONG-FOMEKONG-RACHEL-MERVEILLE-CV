#!/bin/bash

echo "🔄 Creating a new modern CV based on your template..."

# Create a directory for the new template
mkdir -p modern_cv

# Create the modern CV HTML file
cat > "modern_cv/Rachel_Merveille_CV_Modern.html" << 'EOL'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fomekong Fomekong Rachel Merveille - CV</title>
  <style>
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

    .publications-section {
      margin-top: 25px;
    }
    
    .publication {
      margin-bottom: 15px;
    }
    
    .publication-title {
      font-weight: bold;
      margin-bottom: 3px;
      font-size: 15px;
    }
    
    .publication-journal {
      font-style: italic;
      color: #666;
      margin-bottom: 3px;
      font-size: 14px;
    }
    
    .publication-description {
      font-size: 14px;
      line-height: 1.5;
    }
  </style>
</head>
<body>
  <!-- Left column -->
  <div class="left-column">
    <div class="profile-image">
      <img src="profile1.jpg" alt="RF">
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
        <span>+86 166-6225-8487</span>
      </div>
      <div class="contact-item">
        <span>marvelous@stu.gdou.edu.cn</span>
      </div>
    </div>
    
    <h3 class="section-header">Work Experience</h3>
    
    <div class="experience">
      <div class="timeline">
        <p>2022 - Present</p>
      </div>
      <div class="experience-details">
        <div class="job-title">Underwater Robotics Researcher</div>
        <div class="company">Guangdong Ocean University, China</div>
        <ul class="experience-bullets">
          <li>Lead the development of underwater SLAM systems, integrating deep feature extraction and multi-detector fusion (Faster R-CNN, DETR, YOLOv8)</li>
          <li>Develop visual-inertial SLAM algorithms combining IMU data and visual inputs for accurate pose estimation</li>
          <li>Implement incremental 3D reconstruction using Open3D, optimizing mapping accuracy in real-time</li>
          <li>Conduct experimental validation on underwater datasets, demonstrating improvements in pose accuracy</li>
        </ul>
      </div>
    </div>
    
    <div class="experience">
      <div class="timeline">
        <p>2019 - 2022</p>
      </div>
      <div class="experience-details">
        <div class="job-title">Graduate Research Student</div>
        <div class="company">Huzhou University, China</div>
        <ul class="experience-bullets">
          <li>Researched robotic automation and 3D printing technologies</li>
          <li>Published research on Industry 4.0's impact on robotics in North American Academic Research Journal</li>
          <li>Developed a non-contact temperature detection device (Utility Model Patent CN202022594125.5)</li>
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
          <li>Thesis: Enhancement of Underwater UUV Navigation via Visual-Lidar SLAM</li>
          <li>GPA: 86.9/100</li>
          <li>Specializing in underwater robotics, SLAM, and deep learning</li>
        </ul>
      </div>
    </div>
    
    <div class="experience">
      <div class="timeline">
        <p>2019 - 2022</p>
      </div>
      <div class="experience-details">
        <div class="job-title">Master of Engineering in Control Engineering</div>
        <div class="company">Huzhou University, China</div>
        <ul class="experience-bullets">
          <li>Thesis: Robotic Arm Design for Injection Molding</li>
          <li>GPA: 80.6/100</li>
        </ul>
      </div>
    </div>
    
    <div class="experience">
      <div class="timeline">
        <p>2015 - 2018</p>
      </div>
      <div class="experience-details">
        <div class="job-title">Bachelor of Science in Physics</div>
        <div class="company">University of Yaoundé 1, Cameroon</div>
      </div>
    </div>
    
    <h3 class="section-header">Publications</h3>
    
    <div class="publications-section">
      <div class="publication">
        <div class="publication-title">Underwater Visual SLAM Using Feature Matching</div>
        <div class="publication-journal">Sensors Journal | 2023</div>
        <div class="publication-description">
          A novel approach to underwater visual SLAM using SuperPoint and SuperGlue feature matching, accounting for water turbidity and lighting variations.
        </div>
      </div>
      
      <div class="publication">
        <div class="publication-title">Multi-sensor Fusion for Robust Underwater Navigation</div>
        <div class="publication-journal">IEEE Transactions on Robotics | 2022</div>
      </div>
      
      <div class="publication">
        <div class="publication-title">The Influence of Industry 4.0: A Case Study of Injection Molding Machines, Drones, 3D Printing, and Automation Factories</div>
        <div class="publication-journal">North American Academic Research, 4(12), 221-238 | 2021</div>
      </div>
    </div>
    
    <h3 class="section-header">Patents</h3>
    <div class="experience">
      <div class="timeline">
        <p>2020</p>
      </div>
      <div class="experience-details">
        <div class="job-title">CN202022594125.5</div>
        <div class="company">A Human Non-Contact Temperature Detection Device (Utility Model Patent)</div>
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

# Copy profile image to the modern CV directory
cp profile1.jpg modern_cv/

echo "✅ Modern CV created successfully!"
echo "📂 The modern CV is located in the 'modern_cv' directory."
echo "🌟 You can view it by opening 'modern_cv/Rachel_Merveille_CV_Modern.html' in your browser."
echo ""
echo "Would you like to copy this modern CV to your main directory and docs folder? (y/n)"
read -p "> " answer

if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
  cp modern_cv/Rachel_Merveille_CV_Modern.html docs/
  cp modern_cv/Rachel_Merveille_CV_Modern.html ./
  echo "✅ Modern CV copied to main directory and docs folder!"
else
  echo "📝 Modern CV remains in the modern_cv directory. You can copy it manually later if needed."
fi
