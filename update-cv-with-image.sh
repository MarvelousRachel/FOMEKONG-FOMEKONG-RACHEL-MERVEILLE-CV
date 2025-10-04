#!/bin/bash

echo "🔄 Creating a comprehensive HTML CV with embedded image..."

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
        <span class="skill-name">ROS/ROS2</span>
        <div class="skill-level">
          <div class="skill-level-fill" style="width: 90%"></div>
        </div>
      </div>
      <div class="skill-item">
        <span class="skill-name">C++</span>
        <div class="skill-level">
          <div class="skill-level-fill" style="width: 85%"></div>
        </div>
      </div>
      <div class="skill-item">
        <span class="skill-name">Python</span>
        <div class="skill-level">
          <div class="skill-level-fill" style="width: 95%"></div>
        </div>
      </div>
      <div class="skill-item">
        <span class="skill-name">SLAM</span>
        <div class="skill-level">
          <div class="skill-level-fill" style="width: 90%"></div>
        </div>
      </div>
      <div class="skill-item">
        <span class="skill-name">Deep Learning</span>
        <div class="skill-level">
          <div class="skill-level-fill" style="width: 80%"></div>
        </div>
      </div>
      <div class="skill-item">
        <span class="skill-name">Robot Control</span>
        <div class="skill-level">
          <div class="skill-level-fill" style="width: 85%"></div>
        </div>
      </div>
    </div>
    
    <div>
      <h2 class="section-title">Languages</h2>
      <div class="language-item">
        <span>English - Professional</span>
      </div>
      <div class="language-item">
        <span>Chinese - Intermediate</span>
      </div>
      <div class="language-item">
        <span>French - Native</span>
      </div>
    </div>
  </div>
  
  <div class="right-column">
    <h1 class="name">Fomekong Fomekong Rachel Merveille</h1>
    <div class="title">Robotics and SLAM Researcher</div>
    
    <div class="right-section">
      <h2 class="right-section-title">Professional Summary</h2>
      <p>
        Competent and self-driven researcher with a focus on robotics, sensor fusion, SLAM, and robot control systems. Extensive background in the development of both terrestrial and underwater robots, with practical knowledge of kinematics, motor control, navigation, and localization methods like ORB-SLAM3 and vSLAM. Competent in ROS/ROS2, C++, and Python, with a solid academic background in sensor integration and deep learning. Enthusiastic about using state-of-the-art technologies to improve navigation and robotic systems in challenging environments. Currently working toward a PhD with the goal of improving robotic autonomy through multi-sensor fusion and underwater navigation.
      </p>
    </div>
    
    <div class="right-section">
      <h2 class="right-section-title">Experience</h2>
      
      <div class="experience-item">
        <div class="job-title">Underwater Robotics Operator</div>
        <div class="company">Key Laboratory of Underwater Robotics, School of Naval Architecture and Maritime, Guangdong Ocean University, Zhanjiang, China</div>
        <div class="duration">2022 - Present</div>
        <ul>
          <li>Engaged in various research projects focused on the operation of unmanned underwater vehicles (UUVs) for navigation, mapping, and environmental perception.</li>
          <li>Conducted field testing and operation of UUVs in lab pool.</li>
          <li>Contributed to the development and optimization of underwater navigation systems, including integrating sensor data from IMUs, cameras for improved SLAM accuracy.</li>
          <li>Assisted in the design and implementation of deep learning models to enhance feature extraction and data fusion for more reliable navigation and environmental perception in complex underwater conditions.</li>
          <li>Assistant teacher to Master students in Simultaneous Localization and Mapping.</li>
          <li>Assistant teacher for English corner to undergraduate students at Marine college of Guangdong Ocean university.</li>
        </ul>
      </div>
      
      <div class="experience-item">
        <div class="job-title">Professional Achievements, Underwater Robotics</div>
        <div class="company">Guangdong Ocean University, Zhanjiang, China</div>
        <div class="duration">09/2022 - Present</div>
        <ul>
          <li>Developed a complete underwater SLAM pipeline integrating:
            <ul>
              <li>Advanced image preprocessing for turbid environments (CLAHE, saliency masking)</li>
              <li>Robust feature matching using SuperGlue/SuperPoint networks</li>
              <li>Adaptive voxel-based mapping with Open3D</li>
              <li>Water current compensation algorithms</li>
              <li>Keyframe selection optimized for underwater conditions</li>
            </ul>
          </li>
          <li>Implemented sensor fusion techniques combining:
            <ul>
              <li>Visual features with IMU/DVL data</li>
              <li>Depth sensor integration for 3D reconstruction</li>
              <li>Uncertainty modeling for underwater conditions</li>
            </ul>
          </li>
          <li>Implemented ORB-SLAM3 for SLAM, demonstrating proficiency in traditional and deep learning-based SLAM techniques.</li>
          <li>Developed a point cloud processing pipeline using Open3D and Python, improving the accuracy of underwater mapping.</li>
          <li>Integrated NICE-SLAM with deep learning techniques to enhance environmental perception for UUVs.</li>
          <li>Mastered ROS tools, including RViz, rqt, and rostopic, to facilitate seamless integration of sensors.</li>
        </ul>
      </div>

      <div class="experience-item">
        <div class="job-title">Graduate Research Student</div>
        <div class="company">Huzhou University, Huzhou, Zhejiang, China</div>
        <div class="duration">08/2019 - 2022</div>
        <ul>
          <li>Contributed to research projects in the Key Laboratory of Electronics, focusing on drone assembly and 3D printing technologies.</li>
          <li>Participated in practical projects at Gaoyuangjin Machinery Technology Co., Ltd, gaining hands-on experience in mold part production and plastic product manufacturing.</li>
          <li>Successfully completed a graduation project titled "Robotized Solution for Selecting, Closing, and Packaging Products in Injection Molding Machines".</li>
          <li>Assisted in automation projects related to conveyor roller construction and machine building at Sanhe Automation Equipment Co., Ltd.</li>
          <li>Published an article titled "The Influence of Industry 4.0: A Case Study of Injection Molding Machines, Drones, 3D Printing, and Aeronautic Factories" in North American Academic Research Journal.</li>
        </ul>
      </div>

      <div class="experience-item">
        <div class="job-title">Undergraduate Student</div>
        <div class="company">University of Yaoundé 1, Yaoundé, Cameroon</div>
        <div class="duration">08/2018 - 09/2019</div>
        <ul>
          <li>Conducted a comprehensive review on "Evaluation of the Woschni Model for the Variation of Variable Temperature Walls" in collaboration with a doctoral student and professor in Energy Physics.</li>
          <li>Co-designed and managed the I-Tech Educk project platform, which connected parents and teachers for home tutoring services.</li>
        </ul>
      </div>
    </div>
    
    <div class="right-section">
      <h2 class="right-section-title">Education</h2>
      
      <div class="education-item">
        <div class="job-title">PhD in Marine Technology</div>
        <div class="company">Guangdong Ocean University, Zhanjiang, China</div>
        <div class="duration">09/2022 - Present</div>
        <p>Focus on underwater robotics, particularly SLAM systems for UUVs. Research in sensor fusion, mapping, and environmental perception in complex underwater environments.</p>
      </div>
      
      <div class="education-item">
        <div class="job-title">Master's in Electronic Engineering</div>
        <div class="company">Huzhou University, Huzhou, China</div>
        <div class="duration">09/2019 - 06/2022</div>
        <p>Research on industrial automation, specifically robotized solutions for injection molding machines. GPA: 3.85/4.0</p>
      </div>
      
      <div class="education-item">
        <div class="job-title">Bachelor's in Physics</div>
        <div class="company">University of Yaoundé 1, Yaoundé, Cameroon</div>
        <div class="duration">09/2015 - 07/2018</div>
        <p>Specialized in Energy Physics. GPA: 3.7/4.0</p>
      </div>
    </div>
    
    <div class="right-section">
      <h2 class="right-section-title">Publications</h2>
      <ul>
        <li>Fomekong, R., et al. (2022). "The Influence of Industry 4.0: A Case Study of Injection Molding Machines, Drones, 3D Printing, and Aeronautic Factories." North American Academic Research Journal, Vol. 5, Issue 2.</li>
        <li>Fomekong, R., et al. (2023). "Underwater Visual SLAM: Challenges and Solutions for Turbid Environments." IEEE International Conference on Robotics and Automation (ICRA) (In Review).</li>
        <li>Fomekong, R., et al. (2023). "Multi-Sensor Fusion for Robust Navigation of Underwater Vehicles in Low-Visibility Conditions." Ocean Engineering (In Preparation).</li>
      </ul>
    </div>
    
    <div class="right-section">
      <h2 class="right-section-title">Certifications & Training</h2>
      <ul>
        <li>ROS Developer Advanced Certification - The Construct (2023)</li>
        <li>Deep Learning Specialization - Coursera, deeplearning.ai (2022)</li>
        <li>Computer Vision Specialist - Coursera, University of Michigan (2023)</li>
        <li>Embedded Systems & IoT Programming - Huawei ICT Academy (2021)</li>
      </ul>
    </div>
    
    <div class="right-section">
      <h2 class="right-section-title">Technical Skills</h2>
      <ul>
        <li><strong>Programming Languages:</strong> C++, Python, MATLAB, ROS/ROS2</li>
        <li><strong>Robotics Tools:</strong> RViz, Gazebo, ORB-SLAM3, Moveit, rqt</li>
        <li><strong>Computer Vision:</strong> OpenCV, PCL, Open3D, SuperPoint/SuperGlue</li>
        <li><strong>Machine Learning:</strong> PyTorch, TensorFlow, scikit-learn</li>
        <li><strong>Embedded Systems:</strong> Arduino, Raspberry Pi, STM32, Nvidia Jetson</li>
        <li><strong>3D Design:</strong> SolidWorks, AutoCAD, Fusion 360</li>
        <li><strong>Version Control:</strong> Git, GitHub</li>
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
Competent and self-driven researcher with a focus on robotics, sensor fusion, SLAM, and robot control systems. Extensive background in the development of both terrestrial and underwater robots, with practical knowledge of kinematics, motor control, navigation, and localization methods like ORB-SLAM3 and vSLAM. Competent in ROS/ROS2, C++, and Python, with a solid academic background in sensor integration and deep learning. Enthusiastic about using state-of-the-art technologies to improve navigation and robotic systems in challenging environments. Currently working toward a PhD with the goal of improving robotic autonomy through multi-sensor fusion and underwater navigation.

EXPERIENCE
Underwater Robotics Operator
Key Laboratory of Underwater Robotics, School of Naval Architecture and Maritime, Guangdong Ocean University, Zhanjiang, China
2022 - Present
• Engaged in various research projects focused on the operation of unmanned underwater vehicles (UUVs) for navigation, mapping, and environmental perception.
• Conducted field testing and operation of UUVs in lab pool.
• Contributed to the development and optimization of underwater navigation systems, including integrating sensor data from IMUs, cameras for improved SLAM accuracy.
• Assisted in the design and implementation of deep learning models to enhance feature extraction and data fusion for more reliable navigation and environmental perception in complex underwater conditions.
• Assistant teacher to Master students in Simultaneous Localization and Mapping.
• Assistant teacher for English corner to undergraduate students at Marine college of Guangdong Ocean university.

Professional Achievements, Underwater Robotics
Guangdong Ocean University, Zhanjiang, China
09/2022 - Present
• Developed a complete underwater SLAM pipeline integrating:
  - Advanced image preprocessing for turbid environments (CLAHE, saliency masking)
  - Robust feature matching using SuperGlue/SuperPoint networks
  - Adaptive voxel-based mapping with Open3D
  - Water current compensation algorithms
  - Keyframe selection optimized for underwater conditions
• Implemented sensor fusion techniques combining:
  - Visual features with IMU/DVL data
  - Depth sensor integration for 3D reconstruction
  - Uncertainty modeling for underwater conditions
• Implemented ORB-SLAM3 for SLAM, demonstrating proficiency in traditional and deep learning-based SLAM techniques.
• Developed a point cloud processing pipeline using Open3D and Python, improving the accuracy of underwater mapping.
• Integrated NICE-SLAM with deep learning techniques to enhance environmental perception for UUVs.
• Mastered ROS tools, including RViz, rqt, and rostopic, to facilitate seamless integration of sensors.

Graduate Research Student
Huzhou University, Huzhou, Zhejiang, China
08/2019 - 2022
• Contributed to research projects in the Key Laboratory of Electronics, focusing on drone assembly and 3D printing technologies.
• Participated in practical projects at Gaoyuangjin Machinery Technology Co., Ltd, gaining hands-on experience in mold part production and plastic product manufacturing.
• Successfully completed a graduation project titled "Robotized Solution for Selecting, Closing, and Packaging Products in Injection Molding Machines".
• Assisted in automation projects related to conveyor roller construction and machine building at Sanhe Automation Equipment Co., Ltd.
• Published an article titled "The Influence of Industry 4.0: A Case Study of Injection Molding Machines, Drones, 3D Printing, and Aeronautic Factories" in North American Academic Research Journal.

Undergraduate Student
University of Yaoundé 1, Yaoundé, Cameroon
08/2018 - 09/2019
• Conducted a comprehensive review on "Evaluation of the Woschni Model for the Variation of Variable Temperature Walls" in collaboration with a doctoral student and professor in Energy Physics.
• Co-designed and managed the I-Tech Educk project platform, which connected parents and teachers for home tutoring services.

EDUCATION
PhD in Marine Technology
Guangdong Ocean University, Zhanjiang, China
09/2022 - Present
Focus on underwater robotics, particularly SLAM systems for UUVs. Research in sensor fusion, mapping, and environmental perception in complex underwater environments.

Master's in Electronic Engineering
Huzhou University, Huzhou, China
09/2019 - 06/2022
Research on industrial automation, specifically robotized solutions for injection molding machines. GPA: 3.85/4.0

Bachelor's in Physics
University of Yaoundé 1, Yaoundé, Cameroon
09/2015 - 07/2018
Specialized in Energy Physics. GPA: 3.7/4.0

PUBLICATIONS
• Fomekong, R., et al. (2022). "The Influence of Industry 4.0: A Case Study of Injection Molding Machines, Drones, 3D Printing, and Aeronautic Factories." North American Academic Research Journal, Vol. 5, Issue 2.
• Fomekong, R., et al. (2023). "Underwater Visual SLAM: Challenges and Solutions for Turbid Environments." IEEE International Conference on Robotics and Automation (ICRA) (In Review).
• Fomekong, R., et al. (2023). "Multi-Sensor Fusion for Robust Navigation of Underwater Vehicles in Low-Visibility Conditions." Ocean Engineering (In Preparation).

CERTIFICATIONS & TRAINING
• ROS Developer Advanced Certification - The Construct (2023)
• Deep Learning Specialization - Coursera, deeplearning.ai (2022)
• Computer Vision Specialist - Coursera, University of Michigan (2023)
• Embedded Systems & IoT Programming - Huawei ICT Academy (2021)

TECHNICAL SKILLS
• Programming Languages: C++, Python, MATLAB, ROS/ROS2
• Robotics Tools: RViz, Gazebo, ORB-SLAM3, Moveit, rqt
• Computer Vision: OpenCV, PCL, Open3D, SuperPoint/SuperGlue
• Machine Learning: PyTorch, TensorFlow, scikit-learn
• Embedded Systems: Arduino, Raspberry Pi, STM32, Nvidia Jetson
• 3D Design: SolidWorks, AutoCAD, Fusion 360
• Version Control: Git, GitHub

LANGUAGES
• English - Professional
• Chinese - Intermediate
• French - Native
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
echo "🔍 Please check the CV files to ensure they contain both the updated content and the embedded image."
echo "🌐 Your updated CV is ready to deploy to GitHub Pages."
