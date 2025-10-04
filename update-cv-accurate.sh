#!/bin/bash

echo "🔄 Updating CV with new accurate information..."

# First, let's ensure we have a copy of the current CV with the embedded image
if [ ! -f "Rachel_Merveille_CV.html" ]; then
  echo "❌ Error: Rachel_Merveille_CV.html file not found!"
  exit 1
fi

# Extract the base64 image data from the existing HTML CV
BASE64_IMAGE=$(grep -o 'data:image/[^"]*' "Rachel_Merveille_CV.html" | head -1)

if [ -z "$BASE64_IMAGE" ]; then
  echo "⚠️ Warning: No base64 image found in the HTML CV. Will create CV without image."
fi

# Create a new HTML CV file with updated content and the extracted image
cat > "Rachel_Merveille_CV_new.html" << EOL
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
    
    .contact-info {
      margin-bottom: 30px;
    }
    
    .contact-item {
      display: flex;
      align-items: center;
      margin-bottom: 10px;
    }
    
    .contact-item span {
      margin-left: 10px;
    }
    
    .section-title {
      font-size: 1.2rem;
      text-transform: uppercase;
      font-weight: bold;
      margin: 20px 0 10px;
      color: #64ffda;
    }
    
    .skill-item {
      display: flex;
      align-items: center;
      margin-bottom: 10px;
    }
    
    .skill-name {
      flex: 1;
    }
    
    .skill-level {
      flex: 1;
      height: 8px;
      background-color: #555;
      border-radius: 4px;
      overflow: hidden;
    }
    
    .skill-level-fill {
      height: 100%;
      background-color: #64ffda;
    }
    
    .language-item {
      margin-bottom: 10px;
    }
    
    /* Right column */
    .right-column {
      flex: 1;
      padding: 30px;
      box-sizing: border-box;
    }
    
    .name {
      font-size: 2rem;
      margin-bottom: 10px;
      color: #0a192f;
    }
    
    .title {
      font-size: 1.2rem;
      color: #64ffda;
      margin-bottom: 20px;
      background-color: #0a192f;
      display: inline-block;
      padding: 5px 10px;
      border-radius: 4px;
    }
    
    .right-section {
      margin-bottom: 30px;
    }
    
    .right-section-title {
      font-size: 1.2rem;
      text-transform: uppercase;
      font-weight: bold;
      margin: 0 0 15px;
      color: #0a192f;
      padding-bottom: 5px;
      border-bottom: 2px solid #64ffda;
    }
    
    .experience-item {
      margin-bottom: 20px;
    }
    
    .job-title {
      font-weight: bold;
      margin-bottom: 5px;
    }
    
    .company {
      font-style: italic;
      margin-bottom: 5px;
    }
    
    .duration {
      color: #666;
      margin-bottom: 10px;
    }
    
    .education-item {
      margin-bottom: 20px;
    }
    
    ul {
      padding-left: 20px;
    }
    
    li {
      margin-bottom: 5px;
    }
    
    @media (max-width: 768px) {
      body {
        flex-direction: column;
      }
      
      .left-column {
        width: 100%;
      }
    }
  </style>
</head>
<body>
  <div class="left-column">
    <div class="profile-image">
      <img src="${BASE64_IMAGE}" alt="Fomekong Fomekong Rachel Merveille" />
    </div>
    
    <div class="contact-info">
      <h2 class="section-title">Contact</h2>
      <div class="contact-item">
        <span>Email: marvelous@stu.gdou.edu.cn</span>
      </div>
      <div class="contact-item">
        <span>Phone: (+86) 166-6225-8487</span>
      </div>
      <div class="contact-item">
        <span>Address: Zhanjiang, Guangdong Province, 524091, China</span>
      </div>
    </div>
    
    <div>
      <h2 class="section-title">Skills</h2>
      <div class="skill-item">
        <span class="skill-name">SLAM</span>
        <div class="skill-level">
          <div class="skill-level-fill" style="width: 95%"></div>
        </div>
      </div>
      <div class="skill-item">
        <span class="skill-name">Sensor Fusion</span>
        <div class="skill-level">
          <div class="skill-level-fill" style="width: 90%"></div>
        </div>
      </div>
      <div class="skill-item">
        <span class="skill-name">Deep Learning</span>
        <div class="skill-level">
          <div class="skill-level-fill" style="width: 90%"></div>
        </div>
      </div>
      <div class="skill-item">
        <span class="skill-name">Python</span>
        <div class="skill-level">
          <div class="skill-level-fill" style="width: 95%"></div>
        </div>
      </div>
      <div class="skill-item">
        <span class="skill-name">C++</span>
        <div class="skill-level">
          <div class="skill-level-fill" style="width: 85%"></div>
        </div>
      </div>
      <div class="skill-item">
        <span class="skill-name">ROS2</span>
        <div class="skill-level">
          <div class="skill-level-fill" style="width: 90%"></div>
        </div>
      </div>
      <div class="skill-item">
        <span class="skill-name">3D Mapping</span>
        <div class="skill-level">
          <div class="skill-level-fill" style="width: 90%"></div>
        </div>
      </div>
    </div>
    
    <div>
      <h2 class="section-title">Languages</h2>
      <div class="language-item">
        <span>English: Fluent</span>
      </div>
      <div class="language-item">
        <span>Mandarin: Intermediate (HSK 3)</span>
      </div>
      <div class="language-item">
        <span>French: Fluent</span>
      </div>
    </div>
  </div>
  
  <div class="right-column">
    <h1 class="name">Fomekong Fomekong Rachel Merveille</h1>
    <div class="title">PhD Candidate in Marine Engineering</div>
    
    <div class="right-section">
      <h2 class="right-section-title">Professional Summary</h2>
      <p>
        PhD candidate in Marine Engineering at Guangdong Ocean University with a focus on underwater SLAM, robotics, and sensor fusion. Proficient in deep learning (PyTorch, TensorFlow), robot control systems (ROS2), and sensor integration (LiDAR, IMU, camera). Skilled in Python, C++, and 3D mapping techniques. Passionate about advancing autonomous robotics for real-world applications in challenging underwater environments.
      </p>
    </div>
    
    <div class="right-section">
      <h2 class="right-section-title">Experience</h2>
      
      <div class="experience-item">
        <div class="job-title">Underwater Robotics Researcher</div>
        <div class="company">Key Laboratory of Underwater Robotics, Guangdong Ocean University</div>
        <div class="duration">2022 - Present</div>
        <ul>
          <li>Lead the development of underwater SLAM systems, integrating deep feature extraction and multi-detector fusion (Faster R-CNN, DETR, YOLOv8).</li>
          <li>Develop visual-inertial SLAM algorithms combining IMU data and visual inputs for accurate pose estimation and trajectory refinement.</li>
          <li>Implement incremental 3D reconstruction using Open3D, optimizing mapping accuracy in real-time.</li>
          <li>Conduct experimental validation on underwater datasets, demonstrating improvements in pose accuracy and system efficiency.</li>
        </ul>
      </div>

      <div class="experience-item">
        <div class="job-title">Graduate Research Student</div>
        <div class="company">Huzhou University, Huzhou, Zhejiang, China</div>
        <div class="duration">08/2019 - 2022</div>
        <ul>
          <li>Researched robotic automation and 3D printing technologies.</li>
          <li>Published research on Industry 4.0's impact on robotics in North American Academic Research Journal.</li>
        </ul>
      </div>

      <div class="experience-item">
        <div class="job-title">Undergraduate Student</div>
        <div class="company">University of Yaoundé 1, Yaoundé, Cameroon</div>
        <div class="duration">08/2018 - 09/2019</div>
        <ul>
          <li>Co-designed the I-Tech Educk platform, facilitating home tutoring services.</li>
          <li>Taught mechanical physics to final-year students.</li>
        </ul>
      </div>
    </div>
    
    <div class="right-section">
      <h2 class="right-section-title">Education</h2>
      
      <div class="education-item">
        <div class="job-title">PhD in Marine Engineering (Underwater Robotics, SLAM)</div>
        <div class="company">Guangdong Ocean University, Zhanjiang, Guangdong, China</div>
        <div class="duration">Expected 2026</div>
        <p>Thesis: Enhancement of Underwater UUV Navigation via Visual-Lidar SLAM<br>GPA: 86.9/100</p>
      </div>
      
      <div class="education-item">
        <div class="job-title">Master of Engineering in Control Engineering</div>
        <div class="company">Huzhou University, Huzhou, Zhejiang, China</div>
        <div class="duration">Graduated 2022</div>
        <p>Thesis: Robotic Arm Design for Injection Molding<br>GPA: 80.6/100</p>
      </div>
      
      <div class="education-item">
        <div class="job-title">Bachelor of Science in Physics</div>
        <div class="company">University of Yaoundé 1, Yaoundé, Cameroon</div>
        <div class="duration">Graduated 2018</div>
      </div>
    </div>
    
    <div class="right-section">
      <h2 class="right-section-title">Publications</h2>
      <ul>
        <li>Fomekong, F. F., & Hugejile. (2021). "The Influence of Industry 4.0: A Case Study of Injection Molding Machines, Drones, 3D Printing, and Automation Factories." North American Academic Research, 4(12), 221-238.</li>
        <li>Fomekong, F. F., Jia, B., Xu, Z., & Fred, B. (2024). "Enhancing Underwater SLAM Navigation and Perception: A Comprehensive Review of Deep Learning Integration." Sensors, 24(21), 7034.</li>
        <li>Fomekong, F. F., Jia, B., Xu, Z., & Fred, B. (2024). "Advancements in Sensor Fusion for Underwater SLAM: A Review on Enhanced Navigation and Environmental Perception." Sensors, 24(23), 7490.</li>
      </ul>
    </div>
    
    <div class="right-section">
      <h2 class="right-section-title">Patents</h2>
      <ul>
        <li>CN202022594125.5 – A Human Non-Contact Temperature Detection Device (Utility Model Patent)</li>
      </ul>
    </div>
    
    <div class="right-section">
      <h2 class="right-section-title">Projects</h2>
      <div class="experience-item">
        <div class="job-title">Underwater SLAM System Development</div>
        <p>Developed a complete underwater SLAM system using Python/PyTorch, integrating SuperGlue/SuperPoint feature matching and voxel mapping for robust underwater navigation.</p>
      </div>
      <div class="experience-item">
        <div class="job-title">Robust Underwater Visual SLAM System</div>
        <p>Created a visual SLAM system using deep feature matching, OpenCV, Open3D, and pose graph optimization for high-accuracy mapping in low-visibility underwater environments.</p>
      </div>
    </div>
    
    <div class="right-section">
      <h2 class="right-section-title">Technical Skills</h2>
      <ul>
        <li><strong>SLAM:</strong> ORB-SLAM3, NICE-SLAM, Visual-Lidar SLAM, Pose Graph Optimization (g2o)</li>
        <li><strong>Sensor Fusion:</strong> LiDAR, IMU, Camera, DVL</li>
        <li><strong>Deep Learning:</strong> CNNs, RNNs, GANs, PyTorch, TensorFlow</li>
        <li><strong>Programming:</strong> Python, C++, MATLAB, ROS2, Arduino</li>
        <li><strong>3D Mapping:</strong> Open3D, Point Cloud Processing, Object Recognition</li>
        <li><strong>Tools:</strong> OpenCV, Gazebo, RViz, SolidWorks, AutoCAD</li>
      </ul>
    </div>
    
    <div class="right-section">
      <h2 class="right-section-title">Accomplishments</h2>
      <ul>
        <li>Proficient in deep learning and robotic systems, improving accuracy and system performance.</li>
        <li>Extensive experience in problem-solving, model training, and performance enhancement.</li>
      </ul>
    </div>
  </div>
</body>
</html>
EOL

# Create the text version of the CV
cat > "Rachel_Merveille_CV_new.txt" << EOL
Fomekong Fomekong Rachel Merveille
Email: marvelous@stu.gdou.edu.cn | Phone: (+86) 166-6225-8487
Address: Zhanjiang, Guangdong Province, 524091, China

PROFESSIONAL SUMMARY
PhD candidate in Marine Engineering at Guangdong Ocean University with a focus on underwater SLAM, robotics, and sensor fusion. Proficient in deep learning (PyTorch, TensorFlow), robot control systems (ROS2), and sensor integration (LiDAR, IMU, camera). Skilled in Python, C++, and 3D mapping techniques. Passionate about advancing autonomous robotics for real-world applications in challenging underwater environments.

SKILLS
• SLAM: ORB-SLAM3, NICE-SLAM, Visual-Lidar SLAM, Pose Graph Optimization (g2o)
• Sensor Fusion: LiDAR, IMU, Camera, DVL
• Deep Learning: CNNs, RNNs, GANs, PyTorch, TensorFlow
• Programming: Python, C++, MATLAB, ROS2, Arduino
• 3D Mapping: Open3D, Point Cloud Processing, Object Recognition
• Tools: OpenCV, Gazebo, RViz, SolidWorks, AutoCAD

EXPERIENCE
Underwater Robotics Researcher
Key Laboratory of Underwater Robotics, Guangdong Ocean University
2022 - Present
• Lead the development of underwater SLAM systems, integrating deep feature extraction and multi-detector fusion (Faster R-CNN, DETR, YOLOv8).
• Develop visual-inertial SLAM algorithms combining IMU data and visual inputs for accurate pose estimation and trajectory refinement.
• Implement incremental 3D reconstruction using Open3D, optimizing mapping accuracy in real-time.
• Conduct experimental validation on underwater datasets, demonstrating improvements in pose accuracy and system efficiency.

Graduate Research Student
Huzhou University, Huzhou, Zhejiang, China
08/2019 - 2022
• Researched robotic automation and 3D printing technologies.
• Published research on Industry 4.0's impact on robotics in North American Academic Research Journal.

Undergraduate Student
University of Yaoundé 1, Yaoundé, Cameroon
08/2018 - 09/2019
• Co-designed the I-Tech Educk platform, facilitating home tutoring services.
• Taught mechanical physics to final-year students.

EDUCATION
PhD in Marine Engineering (Underwater Robotics, SLAM)
Guangdong Ocean University, Zhanjiang, Guangdong, China
Expected 2026
Thesis: Enhancement of Underwater UUV Navigation via Visual-Lidar SLAM
GPA: 86.9/100

Master of Engineering in Control Engineering
Huzhou University, Huzhou, Zhejiang, China
Graduated 2022
Thesis: Robotic Arm Design for Injection Molding
GPA: 80.6/100

Bachelor of Science in Physics
University of Yaoundé 1, Yaoundé, Cameroon
Graduated 2018

PUBLICATIONS
• Fomekong, F. F., & Hugejile. (2021). "The Influence of Industry 4.0: A Case Study of Injection Molding Machines, Drones, 3D Printing, and Automation Factories." North American Academic Research, 4(12), 221-238.
• Fomekong, F. F., Jia, B., Xu, Z., & Fred, B. (2024). "Enhancing Underwater SLAM Navigation and Perception: A Comprehensive Review of Deep Learning Integration." Sensors, 24(21), 7034.
• Fomekong, F. F., Jia, B., Xu, Z., & Fred, B. (2024). "Advancements in Sensor Fusion for Underwater SLAM: A Review on Enhanced Navigation and Environmental Perception." Sensors, 24(23), 7490.

PATENTS
• CN202022594125.5 – A Human Non-Contact Temperature Detection Device (Utility Model Patent)

PROJECTS
Underwater SLAM System Development
Developed a complete underwater SLAM system using Python/PyTorch, integrating SuperGlue/SuperPoint feature matching and voxel mapping for robust underwater navigation.

Robust Underwater Visual SLAM System
Created a visual SLAM system using deep feature matching, OpenCV, Open3D, and pose graph optimization for high-accuracy mapping in low-visibility underwater environments.

LANGUAGES
• English: Fluent
• Mandarin: Intermediate (HSK 3)
• French: Fluent

ACCOMPLISHMENTS
• Proficient in deep learning and robotic systems, improving accuracy and system performance.
• Extensive experience in problem-solving, model training, and performance enhancement.
EOL

# Replace the old files with the new ones
echo "🔄 Replacing old CV files with updated versions..."
mv "Rachel_Merveille_CV_new.html" "Rachel_Merveille_CV.html"
mv "Rachel_Merveille_CV_new.txt" "Rachel_Merveille_CV.txt"

# Copy the updated files to the docs directory
echo "📋 Copying updated CV files to the docs directory..."
cp "Rachel_Merveille_CV.html" "docs/"
cp "Rachel_Merveille_CV.txt" "docs/"

echo "✅ CV update complete!"
echo "🔍 Your CV has been updated with the accurate information."
echo "🌐 Your updated CV is ready to deploy to GitHub Pages."
