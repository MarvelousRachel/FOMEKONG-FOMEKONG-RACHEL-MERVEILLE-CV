#!/bin/bash

# This script updates the Rachel_Merveille_CV.html and Rachel_Merveille_CV.txt files with the latest CV information

echo "Updating CV files..."

# Create the new HTML CV file with all updated content
cat > Rachel_Merveille_CV.html << 'EOL'
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
      font-size: 12px;
      color: #666;
      line-height: 1.4;
    }
    
    .job-title {
      font-weight: bold;
      margin-bottom: 4px;
      font-size: 16px;
    }
    
    .company {
      color: #777;
      margin-bottom: 8px;
      font-size: 14px;
    }
    
    .job-description {
      font-size: 14px;
      line-height: 1.5;
    }
    
    .job-description ul {
      margin-top: 8px;
      padding-left: 20px;
    }
    
    .job-description li {
      margin-bottom: 5px;
    }
    
    .education {
      margin-bottom: 15px;
    }
    
    .education-details {
      flex: 1;
    }
    
    .degree {
      font-weight: bold;
      margin-bottom: 4px;
      font-size: 16px;
    }
    
    .university {
      color: #777;
      margin-bottom: 8px;
      font-size: 14px;
    }
    
    .skills-list {
      list-style-type: none;
      padding-left: 0;
      margin: 0;
    }
    
    .skills-list li {
      margin-bottom: 15px;
    }
    
    .skill-name {
      display: flex;
      justify-content: space-between;
      margin-bottom: 5px;
      font-size: 14px;
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
      <!-- Profile image will be embedded via the fix-cv-image.sh script -->
      RF
    </div>
    
    <div class="section-title">Contact</div>
    <div class="links">
      <a href="mailto:marvelous@stu.gdou.edu.cn">marvelous@stu.gdou.edu.cn</a>
      <a href="tel:+8616662258487">+86 166-6225-8487</a>
      <p>Zhanjiang, Guangdong Province, 524091, China</p>
    </div>
    
    <div class="section-title">Languages</div>
    <ul class="hobbies">
      <li>English: Fluent</li>
      <li>Mandarin: Intermediate (HSK 3)</li>
      <li>French: Fluent</li>
    </ul>
    
    <div class="section-title">Key Technical Skills</div>
    <ul class="hobbies">
      <li>Deep Learning & SLAM</li>
      <li>Sensor Fusion & Integration</li>
      <li>ROS/ROS2</li>
      <li>Python, C++</li>
      <li>Computer Vision & 3D Mapping</li>
    </ul>
    
    <div class="section-title">Patents</div>
    <div class="reference">
      <p>CN202022594125.5 – A Human Non-Contact Temperature Detection Device (Utility Model Patent)</p>
    </div>
  </div>
  
  <!-- Right column -->
  <div class="right-column">
    <h1 class="name">Fomekong Fomekong Rachel Merveille</h1>
    <p class="title">PhD Researcher in Underwater Robotics & SLAM</p>
    
    <div class="section-header">Professional Summary</div>
    <p>Competent and self-driven researcher with a focus on robotics, sensor fusion, SLAM, and robot control systems. Extensive background in the development of both terrestrial and underwater robots, with practical knowledge of kinematics, motor control, navigation, and localization methods like ORB-SLAM3 and vSLAM. Competent in ROS/ROS2, C++, and Python, with a solid academic background in sensor integration and deep learning. Enthusiastic about using state-of-the-art technologies to improve navigation and robotic systems in challenging environments. Currently working toward a PhD with the goal of improving robotic autonomy through multi-sensor fusion and underwater navigation.</p>
    
    <div class="section-header">Experience</div>
    
    <div class="experience">
      <div class="timeline">2022 - Present</div>
      <div class="experience-details">
        <div class="job-title">Underwater Robotics Operator</div>
        <div class="company">Key Laboratory of Underwater Robotics, School of Naval Architecture and Maritime, Guangdong Ocean University, Zhanjiang, China</div>
        <div class="job-description">
          <ul>
            <li>Engaged in various research projects focused on the operation of unmanned underwater vehicles (UUVs) for navigation, mapping, and environmental perception.</li>
            <li>Conducted field testing and operation of UUVs in lab pool.</li>
            <li>Contributed to the development and optimization of underwater navigation systems, including integrating sensor data from IMUs, cameras for improved SLAM accuracy.</li>
            <li>Assisted in the design and implementation of deep learning models to enhance feature extraction and data fusion for more reliable navigation and environmental perception in complex underwater conditions.</li>
            <li>Assistant teacher to Master students in Simultaneous Localization and Mapping.</li>
            <li>Assistant teacher for English corner to undergraduate students at Marine college of Guangdong Ocean university.</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div class="experience">
      <div class="timeline">09/2022 - Present</div>
      <div class="experience-details">
        <div class="job-title">Professional Achievements, Underwater Robotics</div>
        <div class="company">Guangdong Ocean University, Zhanjiang, China</div>
        <div class="job-description">
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
      </div>
    </div>
    
    <div class="experience">
      <div class="timeline">08/2019 - 2022</div>
      <div class="experience-details">
        <div class="job-title">Graduate Research Student</div>
        <div class="company">Huzhou University, Huzhou, Zhejiang, China</div>
        <div class="job-description">
          <ul>
            <li>Contributed to research projects in the Key Laboratory of Electronics, focusing on drone assembly and 3D printing technologies.</li>
            <li>Participated in practical projects at Gaoyuangjin Machinery Technology Co., Ltd, gaining hands-on experience in mold part production and plastic product manufacturing.</li>
            <li>Successfully completed a graduation project titled "Robotized Solution for Selecting, Closing, and Packaging Products in Injection Molding Machines".</li>
            <li>Assisted in automation projects related to conveyor roller construction and machine building at Sanhe Automation Equipment Co., Ltd.</li>
            <li>Published an article titled "The Influence of Industry 4.0: A Case Study of Injection Molding Machines, Drones, 3D Printing, and Aeronautic Factories" in North American Academic Research Journal.</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div class="experience">
      <div class="timeline">08/2018 - 09/2019</div>
      <div class="experience-details">
        <div class="job-title">Undergraduate Student</div>
        <div class="company">University of Yaoundé 1, Yaoundé, Cameroon</div>
        <div class="job-description">
          <ul>
            <li>Conducted a comprehensive review on "Evaluation of the Woschni Model for the Variation of Variable Temperature Walls" in collaboration with a doctoral student and professor in Energy Physics.</li>
            <li>Co-designed and managed the I-Tech Educk project platform, which connected parents and teachers for home tutoring services.</li>
            <li>Taught the basics of mechanical physics to final-year students, helping them gain a strong understanding of key concepts.</li>
            <li>Managed the platform's social media presence, ensuring effective communication with stakeholders.</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div class="section-header">Education</div>
    
    <div class="experience">
      <div class="timeline">2022 - Expected 2026</div>
      <div class="education-details">
        <div class="degree">PhD in Marine Engineering (Underwater Robotics, SLAM, Deep Learning, Sensor Fusion)</div>
        <div class="university">Guangdong Ocean University, Zhanjiang, China</div>
        <div class="job-description">
          <p>Thesis: Comprehensive Enhancement of Underwater UUV Navigation via Visual-Lidar SLAM: A Multi-Sensor and AI-Integrated Approach</p>
          <p>GPA: 86.9/100</p>
          <p>Relevant Coursework: Advanced Robotics, Control Systems, Sensor Fusion, Applied Mathematics for Robotics</p>
        </div>
      </div>
    </div>
    
    <div class="experience">
      <div class="timeline">2019 - 2022</div>
      <div class="education-details">
        <div class="degree">Master of Engineering in Control Engineering</div>
        <div class="university">Huzhou University, Huzhou, China</div>
        <div class="job-description">
          <p>Thesis: Enhancing Manufacturing Efficiency: A New Robotic Arm Design for Injection Molding with Improved Adaptability and Precision</p>
          <p>GPA: 80.6/100</p>
        </div>
      </div>
    </div>
    
    <div class="experience">
      <div class="timeline">2018</div>
      <div class="education-details">
        <div class="degree">Bachelor of Science in Physics (Fundamental Physics)</div>
        <div class="university">University of Yaoundé 1, Yaoundé, Cameroon</div>
      </div>
    </div>
    
    <div class="section-header">Technical Skills</div>
    <div class="job-description">
      <ul>
        <li><strong>Deep Learning & Machine Learning:</strong> PyTorch, CNNs, GANs, RNNs, LSTMs, reinforcement learning, model development (linear regression, classification)</li>
        <li><strong>Sensor Fusion & Integration:</strong> LiDAR, IMU, camera, Doppler velocity logs (DVL), sonar integration for underwater navigation</li>
        <li><strong>SLAM (Simultaneous Localization and Mapping):</strong> ORB-SLAM3, NICE-SLAM, Visual-Lidar SLAM</li>
        <li><strong>Robot Operating System (ROS):</strong> RViz, rqt, rostopic, ROS nodes, message handling, sensor data integration</li>
        <li><strong>ROS 2 Ecosystem:</strong> RViz 2, Gazebo, ros2_control CLI, ROS 2 architecture, hardware abstraction, low-level device control, workspaces, package management</li>
        <li><strong>ROS 2 Programming:</strong> Python & C++ skills in developing publishers, subscribers, and handling parameters with the ROS 2 CLI</li>
        <li><strong>URDF & Visualization:</strong> Creating and visualizing URDF models, using Rviz 2 for robot simulation and interaction</li>
        <li><strong>Robot Simulation:</strong> Gazebo simulations, integrating ROS 2 for robot control</li>
        <li><strong>Motion Control:</strong> Robot kinematics, differential kinematics, velocity and speed controllers, differential drive kinematics</li>
        <li><strong>3D Data Processing & Computer Vision:</strong> Open3D, OpenCV, image classification, object recognition, multi-class classification</li>
        <li><strong>Programming & Tools:</strong> Python, C++, MATLAB, ARDUINO, Ubuntu, Colab, Visio, AutoCAD, SolidWorks, VS Code</li>
        <li><strong>System Integration:</strong> Virtual machine configuration, ORB-SLAM3, ROS development, system integration</li>
        <li><strong>3D Design & Modeling:</strong> Autodesk 123Design, Fusion 360, SolidWorks, AutoCAD</li>
        <li><strong>Custom SLAM Development:</strong> Feature extraction, matching, pose estimation, SuperGlue/SuperPoint integration</li>
        <li><strong>Advanced SLAM Development:</strong> Underwater SLAM pipelines, RANSAC-based pose estimation, adaptive voxel mapping, loop closure detection, g2o-based pose graph optimization</li>
        <li><strong>Underwater-Specific Techniques:</strong> Image preprocessing (CLAHE, saliency enhancement), turbidity-adaptive techniques, water current compensation algorithms</li>
      </ul>
    </div>
    
    <div class="section-header">Projects</div>
    <div class="experience">
      <div class="timeline">2024</div>
      <div class="experience-details">
        <div class="job-title">Underwater SLAM System Development</div>
        <div class="company">Guangdong Ocean University</div>
        <div class="job-description">
          <ul>
            <li>Designed and implemented a complete underwater SLAM solution using Python/PyTorch</li>
            <li>Integrated SuperGlue/SuperPoint networks for robust feature matching in low-visibility conditions</li>
            <li>Developed adaptive voxel mapping with dynamic resolution based on environment complexity</li>
            <li>Implemented water current compensation algorithms to improve pose estimation</li>
            <li>Developed real-time optimization techniques including g2o-based pose graph optimization and adaptive voxel downsampling</li>
            <li>Created comprehensive visualization tools for 3D trajectory and mapping evaluation</li>
          </ul>
        </div>
      </div>
    </div>

    <div class="experience">
      <div class="timeline">2022 - Present</div>
      <div class="experience-details">
        <div class="job-title">Robot Car with SLAM</div>
        <div class="company">Guangdong Ocean University</div>
        <div class="job-description">
          <ul>
            <li>Working on robot car with stereo-camera and lidar using SLAM with ROS integration</li>
            <li>Developing simultaneous localization and mapping techniques using sensors fusion and deep learning</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div class="section-header">Publications</div>
    <div class="job-description">
      <ul>
        <li>Fomekong, F. F., & Hugejile. (2021). The Influence of Industry 4.0: A Case Study of Injection Molding Machines, Drones, 3D Printing, and Automation Factories. North American Academic Research, 4(12), 221-238. DOI: 10.5281/zenodo.5789895</li>
        <li>Fomekong, F. F., Jia, B., Xu, Z., & Fred, B. (2024). Enhancing Underwater SLAM Navigation and Perception: A Comprehensive Review of Deep Learning Integration. Sensors, 24(21), 7034. DOI: 10.3390/s24217034</li>
        <li>Fomekong, F. F., Jia, B., Xu, Z., & Fred, B. (2024). Advancements in Sensor Fusion for Underwater SLAM: A Review on Enhanced Navigation and Environmental Perception. Sensors, 24(23), 7490. DOI: 10.3390/s24237490</li>
        <li>Fomekong, F. F, Hugejile, Fred, B. Enhancing Manufacturing Efficiency: A New Robotic Arm Design for Injection Molding with Improved Adaptability and Precision. DOI:10.21203/rs.3.rs-5524250/v1</li>
      </ul>
    </div>
    
    <div class="section-header">Honors & Awards</div>
    <div class="job-description">
      <ul>
        <li>Guangdong Provincial Scholarship (2022, 2023)</li>
        <li>Zhejiang Provincial Scholarship for Excellent International Students (2021)</li>
        <li>Graduate Merit Scholar Recipient, Huzhou University (2021)</li>
        <li>HSK 3 Chinese Language Proficiency Certificate (2021)</li>
        <li>AIESEC Cameroon Award (2017)</li>
      </ul>
    </div>
    
    <div class="section-header">Soft Skills</div>
    <div class="job-description">
      <ul>
        <li>Problem Solving, Time Management, Multitasking, Team Building</li>
        <li>Strategic Thinking, Financial Management, Project Planning</li>
        <li>Proposal and Research Article Writing, Data Interpretation</li>
        <li>In-class/Online Lectures, Progress Reporting, Survey Design</li>
      </ul>
    </div>
  </div>
</body>
</html>
EOL

# Create the text version of the CV
cat > Rachel_Merveille_CV.txt << 'EOL'
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
• Taught the basics of mechanical physics to final-year students, helping them gain a strong understanding of key concepts.
• Managed the platform's social media presence, ensuring effective communication with stakeholders.

EDUCATION
PhD in Marine Engineering (Underwater Robotics, SLAM, Deep Learning, Sensor Fusion)
Guangdong Ocean University, Zhanjiang, China
2022 - Expected 2026
Thesis: Comprehensive Enhancement of Underwater UUV Navigation via Visual-Lidar SLAM: A Multi-Sensor and AI-Integrated Approach
GPA: 86.9/100
Relevant Coursework: Advanced Robotics, Control Systems, Sensor Fusion, Applied Mathematics for Robotics

Master of Engineering in Control Engineering
Huzhou University, Huzhou, China
2019 - 2022
Thesis: Enhancing Manufacturing Efficiency: A New Robotic Arm Design for Injection Molding with Improved Adaptability and Precision
GPA: 80.6/100

Bachelor of Science in Physics (Fundamental Physics)
University of Yaoundé 1, Yaoundé, Cameroon
Graduated 2018

TECHNICAL SKILLS
• Deep Learning & Machine Learning: PyTorch, CNNs, GANs, RNNs, LSTMs, reinforcement learning, model development (linear regression, classification)
• Sensor Fusion & Integration: LiDAR, IMU, camera, Doppler velocity logs (DVL), sonar integration for underwater navigation
• SLAM (Simultaneous Localization and Mapping): ORB-SLAM3, NICE-SLAM, Visual-Lidar SLAM
• Robot Operating System (ROS): RViz, rqt, rostopic, ROS nodes, message handling, sensor data integration
• ROS 2 Ecosystem: RViz 2, Gazebo, ros2_control CLI, ROS 2 architecture, hardware abstraction, low-level device control, workspaces, package management
• ROS 2 Programming: Python & C++ skills in developing publishers, subscribers, and handling parameters with the ROS 2 CLI
• URDF & Visualization: Creating and visualizing URDF models, using Rviz 2 for robot simulation and interaction
• Robot Simulation: Gazebo simulations, integrating ROS 2 for robot control
• Motion Control: Robot kinematics, differential kinematics, velocity and speed controllers, differential drive kinematics
• 3D Data Processing & Computer Vision: Open3D, OpenCV, image classification, object recognition, multi-class classification
• Programming & Tools: Python, C++, MATLAB, ARDUINO, Ubuntu, Colab, Visio, AutoCAD, SolidWorks, VS Code
• System Integration: Virtual machine configuration, ORB-SLAM3, ROS development, system integration
• 3D Design & Modeling: Autodesk 123Design, Fusion 360, SolidWorks, AutoCAD
• Custom SLAM Development: Feature extraction, matching, pose estimation, SuperGlue/SuperPoint integration
• Advanced SLAM Development: Underwater SLAM pipelines, RANSAC-based pose estimation, adaptive voxel mapping, loop closure detection, g2o-based pose graph optimization
• Underwater-Specific Techniques: Image preprocessing (CLAHE, saliency enhancement), turbidity-adaptive techniques, water current compensation algorithms

PROJECTS
Underwater SLAM System Development
Guangdong Ocean University, 2024
• Designed and implemented a complete underwater SLAM solution using Python/PyTorch
• Integrated SuperGlue/SuperPoint networks for robust feature matching in low-visibility conditions
• Developed adaptive voxel mapping with dynamic resolution based on environment complexity
• Implemented water current compensation algorithms to improve pose estimation
• Developed real-time optimization techniques including g2o-based pose graph optimization and adaptive voxel downsampling
• Created comprehensive visualization tools for 3D trajectory and mapping evaluation

Robot Car with SLAM
Guangdong Ocean University, 2022 - Present
• Working on robot car with stereo-camera and lidar using SLAM with ROS integration
• Developing simultaneous localization and mapping techniques using sensors fusion and deep learning

PUBLICATIONS
• Fomekong, F. F., & Hugejile. (2021). The Influence of Industry 4.0: A Case Study of Injection Molding Machines, Drones, 3D Printing, and Automation Factories. North American Academic Research, 4(12), 221-238. DOI: 10.5281/zenodo.5789895
• Fomekong, F. F., Jia, B., Xu, Z., & Fred, B. (2024). Enhancing Underwater SLAM Navigation and Perception: A Comprehensive Review of Deep Learning Integration. Sensors, 24(21), 7034. DOI: 10.3390/s24217034
• Fomekong, F. F., Jia, B., Xu, Z., & Fred, B. (2024). Advancements in Sensor Fusion for Underwater SLAM: A Review on Enhanced Navigation and Environmental Perception. Sensors, 24(23), 7490. DOI: 10.3390/s24237490
• Fomekong, F. F, Hugejile, Fred, B. Enhancing Manufacturing Efficiency: A New Robotic Arm Design for Injection Molding with Improved Adaptability and Precision. DOI:10.21203/rs.3.rs-5524250/v1

PATENTS
• CN202022594125.5 – A Human Non-Contact Temperature Detection Device (Utility Model Patent)

HONORS & AWARDS
• Guangdong Provincial Scholarship (2022, 2023)
• Zhejiang Provincial Scholarship for Excellent International Students (2021)
• Graduate Merit Scholar Recipient, Huzhou University (2021)
• HSK 3 Chinese Language Proficiency Certificate (2021)
• AIESEC Cameroon Award (2017)

LANGUAGES
• English: Fluent
• Mandarin: Intermediate (HSK 3)
• French: Fluent

SOFT SKILLS
• Problem Solving, Time Management, Multitasking, Team Building
• Strategic Thinking, Financial Management, Project Planning
• Proposal and Research Article Writing, Data Interpretation
• In-class/Online Lectures, Progress Reporting, Survey Design
EOL

echo "CV files have been updated."
echo "Now we'll update the image in the HTML CV file..."

# Check if the fix-cv-image.sh script exists, and run it if it does
if [ -f "fix-cv-image.sh" ]; then
  ./fix-cv-image.sh
  echo "Image has been embedded in the CV."
else
  echo "fix-cv-image.sh script not found. Image not embedded."
fi

echo "Update complete. You can now download the CV files from the website."
