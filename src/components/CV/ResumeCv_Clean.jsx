import React from 'react';
import './ResumeCv_New.css';

const ResumeCv = () => {
  return (
    <div className="resume-container">
      <div className="resume-sidebar">
        <div className="profile-photo">
          <img 
            src="./profile1.jpg" 
            alt="Fomekong Rachel Marvelous" 
            className="cv-profile-image"
            onError={(e) => {
              e.target.style.display = 'none';
              e.target.nextSibling.style.display = 'flex';
            }}
          />
          <div className="cv-profile-placeholder">
            <span>RM</span>
            <p>Add profile.jpg to public/</p>
          </div>
        </div>
        
        <div className="sidebar-section about-me">
          <h2>ABOUT ME</h2>
          <p>
            PhD candidate in Marine Engineering at Guangdong Ocean University specializing in robotics, 
            underwater SLAM, and sensor fusion for autonomous navigation. Proficient in deep learning 
            (PyTorch, TensorFlow), SLAM frameworks, robot control systems (ROS2), and 3D mapping 
            techniques. Passionate about developing intelligent systems for underwater applications.
          </p>
        </div>
        
        <div className="sidebar-section links">
          <h2>LINKS</h2>
          <div className="link-item">
            <strong>LinkedIn:</strong><br/>
            <a href="https://linkedin.com/in/rachel-fomekong" target="_blank" rel="noopener noreferrer">
              linkedin.com/in/rachelfomekong
            </a>
          </div>
          <div className="link-item">
            <strong>Email:</strong><br/>
            <a href="mailto:marvelous@stu.gdou.edu.cn">
              marvelous@stu.gdou.edu.cn
            </a>
          </div>
        </div>
        
        <div className="sidebar-section references">
          <h2>REFERENCES</h2>
          <div className="reference">
            <h3>DR. LI ZHANG</h3>
            <p>Guangdong Ocean University</p>
            <p>T: +86 759 2383 123</p>
            <p>E: li.zhang@gdou.edu.cn</p>
          </div>
          
          <div className="reference">
            <h3>DR. CHEN WANG</h3>
            <p>Huzhou University</p>
            <p>T: +86 572 2321 234</p>
            <p>E: chen.wang@zjhu.edu.cn</p>
          </div>
        </div>

        <div className="sidebar-section hobbies">
          <h2>HOBBIES</h2>
          <ul>
            <li>• UNDERWATER ROBOTICS</li>
            <li>• RESEARCH PUBLICATIONS</li>
            <li>• DEEP LEARNING</li>
            <li>• SLAM ALGORITHMS</li>
            <li>• TECHNICAL WRITING</li>
          </ul>
        </div>
      </div>

      <div className="resume-main">
        <div className="resume-header">
          <h1>FOMEKONG RACHEL<br/>MARVELOUS</h1>
          <h2>PhD CANDIDATE</h2>
          <div className="contact-info">
            <div className="contact-item">
              <span>📍</span> Zhanjiang, Guangdong Province, 524091, China
            </div>
            <div className="contact-item">
              <span>📞</span> (+86) 166-6225-8487
            </div>
            <div className="contact-item">
              <span>✉️</span> marvelous@stu.gdou.edu.cn
            </div>
          </div>
        </div>
        
        <section className="resume-section work-experience">
          <h2>WORK EXPERIENCE</h2>
          
          <div className="timeline-item">
            <div className="timeline-dot"></div>
            <div className="timeline-content">
              <h3>Underwater Robotics Researcher</h3>
              <div className="timeline-subtitle">
                <span className="company">Key Laboratory of Underwater Robotics, Guangdong Ocean University</span>
                <span className="period">2022 - Present</span>
              </div>
              <ul className="job-details">
                <li>Led the development of underwater SLAM systems, integrating deep feature extraction and multi-detector fusion (Faster R-CNN, DETR, YOLOv8) for robust perception in degraded underwater imagery.</li>
                <li>Developed visual–inertial SLAM components combining IMU and visual inputs to improve pose estimation stability and long-horizon consistency.</li>
                <li>Implemented incremental dense RGB-D 3D reconstruction using Open3D, supporting online/offline mapping and improved reconstruction quality.</li>
                <li>Conducted experimental validation on underwater datasets, evaluating pose accuracy and system efficiency across multiple pipeline configurations.</li>
                <li>Integrated SplaTAM with an underwater RGB-D dataset and achieved stronger reconstruction quality than NICE-SLAM on the same sequence; conducted systematic debugging and optimization for long-sequence processing (4,015 frames) under high GPU utilization and memory constraints.</li>
                <li>Developed path planning modules adapted to underwater datasets, including multi-direction navigation planning and trajectory-to-goal planning.</li>
                <li>Validated navigation in ROS/Gazebo using the LRAUV model within a Docker environment, achieving successful simulation for straight-line navigation between two goal points.</li>
                <li>Implemented classical planning algorithms in C++, including A* and RRT, for baseline comparison and modular integration.</li>
                <li>Trained a deep learning model for monocular depth estimation (RGB → depth) and obtained high-quality depth outputs for downstream mapping/VO experiments.</li>
                <li>Built and tested multiple SLAM variants: feature-based pipelines using ORB (with fallback tests using SIFT/SURF where applicable), learning-based features (e.g., SuperPoint), and deep feature extractors (ResNet50/ResNet101); implemented feature matching, trajectory estimation, pose estimation via transformation matrices, and loop closure using Bag-of-Words and NetVLAD; performed 3D reconstruction using Open3D.</li>
                <li>Integrated occupancy-grid mapping and A* planning for shortest-path navigation from initial to goal positions, coupled with reconstruction outputs for end-to-end system demonstrations.</li>
                <li>Implemented additional computer vision algorithms for autonomous navigation and developed navigation algorithms for mobile robots.</li>
              </ul>
            </div>
          </div>
          
          <div className="timeline-item">
            <div className="timeline-dot"></div>
            <div className="timeline-content">
              <h3>Graduate Research Student</h3>
              <div className="timeline-subtitle">
                <span className="company">Huzhou University, Zhejiang, China</span>
                <span className="period">2019 - 2022</span>
              </div>
              <ul className="job-details">
                <li>Published research on Industry 4.0 and robotic automation</li>
                <li>Assisted in automation projects related to conveyor roller construction</li>
              </ul>
            </div>
          </div>
        </section>
        
        <section className="resume-section education">
          <h2>EDUCATION</h2>
          
          <div className="education-item">
            <div className="education-header">
              <h3>GUANGDONG OCEAN UNIVERSITY</h3>
              <span className="location">Zhanjiang</span>
            </div>
            <div className="degree-info">
              <span className="degree">🎓 PhD in Marine Engineering</span>
              <span className="date">Expected 2026</span>
            </div>
            <p>GPA: 3.8/4.0</p>
            <ul className="details">
              <li>• Specialized in underwater robotics and SLAM</li>
              <li>• Published several papers in renowned scientific journals</li>
            </ul>
          </div>

          <div className="education-item">
            <div className="education-header">
              <h3>HUZHOU UNIVERSITY</h3>
              <span className="location">Huzhou</span>
            </div>
            <div className="degree-info">
              <span className="degree">🎓 MSc in Control Engineering</span>
              <span className="date">2022</span>
            </div>
            <p>GPA: 3.7/4.0</p>
            <ul className="details">
              <li>• Graduated with honors</li>
              <li>• Published a research paper as an undergraduate</li>
            </ul>
          </div>
        </section>

        <section className="resume-section publications">
          <h2>PUBLICATIONS</h2>

          <div className="publication-item">
            <h4>"The Influence of Industry 4.0: A Case Study of Injection Molding Machines, Drones, 3D Printing, and Automation Factories"</h4>
            <p className="journal">North American Academic Research, 4(12), 221–238 (2021)</p>
            <p className="authors">Fomekong, F. F., &amp; Hugejile.</p>
          </div>

          <div className="publication-item">
            <h4>"Enhancing Underwater SLAM Navigation and Perception: A Comprehensive Review of Deep Learning Integration"</h4>
            <p className="journal">Sensors, 24(21), 7034 (2024)</p>
            <p className="authors">Fomekong, F. F., Jia, B., Xu, Z., &amp; Fred, B.</p>
          </div>

          <div className="publication-item">
            <h4>"Advancements in Sensor Fusion for Underwater SLAM: A Review on Enhanced Navigation and Environmental Perception"</h4>
            <p className="journal">Sensors, 24(23), 7490 (2024)</p>
            <p className="authors">Fomekong, F. F., Jia, B., Xu, Z., &amp; Fred, B.</p>
          </div>

          <h3 style={{ marginTop: '1.25rem' }}>Papers under review / submitted</h3>
          <ul style={{ marginTop: '0.5rem' }}>
            <li><strong>Turbidity-Resilient Underwater Mapping with Multi-Detector Fusion and Sequential RGB-D Odometry</strong> — submitted to <em>IEEE Journal of Oceanic Engineering (IEEE JOE)</em> (First Author)</li>
            <li><strong>Underwater SLAM via Deep Learning and Sensor Fusion</strong> (First Author)</li>
            <li><strong>Full-Sequence Reconstruction and Chunked Drift Reduction for Underwater SplaTAM</strong> (First Author)</li>
            <li><strong>Underwater SLAM for Long Sequences: Loop Closure and Artifact-Aware 3D Reconstruction</strong> (First Author)</li>
            <li><strong>JMPCNet: A Jointly-trained Network with Multi-scale Perception Capability for Underwater Fish Counting</strong> — <em>Engineering Applications of Artificial Intelligence</em> (Second Author)</li>
            <li><strong>Beyond Nutrition: How Dietary Methionine Shields Golden Pompano from Cold-Stress Triads via Nrf2 Activation</strong> (Second Author)</li>
          </ul>
        </section>

        <section className="resume-section skills">
          <h2>TECHNICAL SKILLS</h2>
          
          <div className="skills-grid">
            <div className="skill-category">
              <h3>DEEP LEARNING & ML</h3>
              <div className="skill-bar">
                <div className="skill-level" style={{ width: '90%' }}></div>
              </div>
              <p>PyTorch, CNNs, GANs, RNNs, LSTMs, Reinforcement Learning</p>
            </div>
            
            <div className="skill-category">
              <h3>SLAM & ROBOTICS</h3>
              <div className="skill-bar">
                <div className="skill-level" style={{ width: '95%' }}></div>
              </div>
              <p>ORB-SLAM3, NICE-SLAM, Visual-Lidar SLAM, ROS, SuperPoint/SuperGlue</p>
            </div>
            
            <div className="skill-category">
              <h3>PROGRAMMING</h3>
              <div className="skill-bar">
                <div className="skill-level" style={{ width: '85%' }}></div>
              </div>
              <p>Python, C++, MATLAB, Arduino, Ubuntu, VS Code</p>
            </div>
            
            <div className="skill-category">
              <h3>COMPUTER VISION</h3>
              <div className="skill-bar">
                <div className="skill-level" style={{ width: '90%' }}></div>
              </div>
              <p>OpenCV, Open3D, Image Classification, Object Recognition</p>
            </div>
            
            <div className="skill-category">
              <h3>SENSOR FUSION</h3>
              <div className="skill-bar">
                <div className="skill-level" style={{ width: '88%' }}></div>
              </div>
              <p>LiDAR, IMU, Camera, DVL, Sonar Integration</p>
            </div>
            
            <div className="skill-category">
              <h3>3D DESIGN & CAD</h3>
              <div className="skill-bar">
                <div className="skill-level" style={{ width: '80%' }}></div>
              </div>
              <p>SolidWorks, AutoCAD, Fusion 360, 3D Printing</p>
            </div>
          </div>
        </section>
        
        <section className="resume-section languages">
          <h2>LANGUAGES</h2>
          
          <div className="languages-grid">
            <div className="language-item">
              <h4>ENGLISH</h4>
              <div className="language-bar">
                <div className="language-fill" style={{width: '90%'}}></div>
              </div>
              <span>Fluent</span>
            </div>
            
            <div className="language-item">
              <h4>FRENCH</h4>
              <div className="language-bar">
                <div className="language-fill" style={{width: '95%'}}></div>
              </div>
              <span>Native</span>
            </div>
            
            <div className="language-item">
              <h4>CHINESE</h4>
              <div className="language-bar">
                <div className="language-fill" style={{width: '60%'}}></div>
              </div>
              <span>Conversational</span>
            </div>
          </div>
        </section>

        <section className="resume-section accomplishments">
          <h2>KEY ACCOMPLISHMENTS</h2>
          <ul>
            <li>Developed novel underwater SLAM algorithm with 15% improved accuracy</li>
            <li>Published 2+ peer-reviewed research papers in international journals</li>
            <li>Presented research at international marine robotics conferences</li>
            <li>Contributed to 3+ automation projects in industrial settings</li>
            <li>Maintained high academic performance (GPA 3.8+) throughout PhD program</li>
          </ul>
        </section>
      </div>
    </div>
  );
};

export default ResumeCv;
