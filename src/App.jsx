import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import './App.css';

// Simple Navbar component
const Navbar = () => (
  <nav style={{
    backgroundColor: '#112240',
    padding: '1rem 2rem',
    position: 'sticky',
    top: 0,
    zIndex: 100
  }}>
    <div style={{
      display: 'flex',
      justifyContent: 'space-between',
      alignItems: 'center',
      maxWidth: '1200px',
      margin: '0 auto'
    }}>
      <h1 style={{color: '#64ffda', fontSize: '1.5rem', margin: 0}}>
        Fomekong Fomekong Rachel Merveille
      </h1>
      <div style={{display: 'flex', gap: '2rem'}}>
        <a href="/" style={{color: '#ccd6f6', textDecoration: 'none'}}>Home</a>
        <a href="/about" style={{color: '#ccd6f6', textDecoration: 'none'}}>About</a>
        <a href="/cv" style={{color: '#ccd6f6', textDecoration: 'none'}}>CV</a>
        <a href="/skills" style={{color: '#ccd6f6', textDecoration: 'none'}}>Skills</a>
        <a href="/gallery" style={{color: '#ccd6f6', textDecoration: 'none'}}>Gallery</a>
        <a href="/contact" style={{color: '#ccd6f6', textDecoration: 'none'}}>Contact</a>
      </div>
    </div>
  </nav>
);

// Simple About component
const About = () => (
  <div style={{
    maxWidth: '1200px',
    margin: '0 auto',
    padding: '4rem 2rem'
  }}>
    <h1 style={{fontSize: '3rem', color: '#64ffda', marginBottom: '2rem'}}>About Me</h1>
    <div style={{fontSize: '1.2rem', lineHeight: '1.8', color: '#a8b2d1'}}>
      <p style={{marginBottom: '2rem'}}>
        Competent and self-driven researcher with a focus on robotics, sensor fusion, SLAM, and robot control systems. 
        Extensive background in the development of both terrestrial and underwater robots, with practical knowledge of 
        kinematics, motor control, navigation, and localization methods like ORB-SLAM3 and vSLAM. Competent in ROS/ROS2, 
        C++, and Python, with a solid academic background in sensor integration and deep learning.
      </p>
      
      <p style={{marginBottom: '2rem'}}>
        Enthusiastic about using state-of-the-art technologies to improve navigation and robotic systems in challenging 
        environments. Currently working toward a PhD with the goal of improving robotic autonomy through multi-sensor 
        fusion and underwater navigation. Experienced in developing complete SLAM pipelines integrating SuperPoint/SuperGlue 
        feature matching, adaptive voxel mapping with Open3D, and water current compensation algorithms.
      </p>
      
      <p style={{marginBottom: '2rem'}}>
        Published researcher with multiple papers in prestigious journals including Sensors. Holder of utility model patent 
        for non-contact temperature detection device. Recipient of Guangdong Provincial Scholarship (2022, 2023) and 
        Zhejiang Provincial Scholarship for Excellent International Students (2021). Successfully developed complete 
        underwater SLAM systems and conducted field testing of UUVs in laboratory environments.
      </p>

      <h2 style={{color: '#64ffda', fontSize: '2rem', marginTop: '3rem', marginBottom: '1rem'}}>Education</h2>
      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px', marginBottom: '2rem'}}>
        <h3 style={{color: '#ccd6f6', fontSize: '1.5rem'}}>PhD in Marine Engineering</h3>
        <p style={{color: '#64ffda'}}>Guangdong Ocean University, China (Expected 2026)</p>
        <p>Specialization: Underwater Robotics, SLAM, Deep Learning, Sensor Fusion</p>
        <p>GPA: 86.9/100</p>
      </div>

      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px', marginBottom: '2rem'}}>
        <h3 style={{color: '#ccd6f6', fontSize: '1.5rem'}}>Master of Engineering in Control Engineering</h3>
        <p style={{color: '#64ffda'}}>Huzhou University, China (2022)</p>
        <p>GPA: 80.6/100</p>
      </div>

      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px'}}>
        <h3 style={{color: '#ccd6f6', fontSize: '1.5rem'}}>Bachelor of Science in Physics</h3>
        <p style={{color: '#64ffda'}}>University of Yaoundé 1, Cameroon (2018)</p>
      </div>
    </div>
  </div>
);

// Simple Skills component
const Skills = () => (
  <div style={{
    maxWidth: '1200px',
    margin: '0 auto',
    padding: '4rem 2rem'
  }}>
    <h1 style={{fontSize: '3rem', color: '#64ffda', marginBottom: '2rem'}}>Technical Skills</h1>
    <div style={{display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(350px, 1fr))', gap: '2rem'}}>
      
      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px'}}>
        <h3 style={{color: '#64ffda', marginBottom: '1rem'}}>Deep Learning & Machine Learning</h3>
        <ul style={{color: '#a8b2d1', lineHeight: '1.6', fontSize: '0.9rem'}}>
          <li>PyTorch, CNNs, GANs, RNNs, LSTMs</li>
          <li>Reinforcement Learning</li>
          <li>Model Development (Linear Regression, Classification)</li>
          <li>Computer Vision & Object Recognition</li>
          <li>Multi-class Classification</li>
        </ul>
      </div>

      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px'}}>
        <h3 style={{color: '#64ffda', marginBottom: '1rem'}}>SLAM & Navigation</h3>
        <ul style={{color: '#a8b2d1', lineHeight: '1.6', fontSize: '0.9rem'}}>
          <li>ORB-SLAM3, NICE-SLAM, Visual-Lidar SLAM</li>
          <li>SuperPoint/SuperGlue Integration</li>
          <li>Custom SLAM Pipeline Development</li>
          <li>Loop Closure Detection</li>
          <li>g2o-based Pose Graph Optimization</li>
        </ul>
      </div>

      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px'}}>
        <h3 style={{color: '#64ffda', marginBottom: '1rem'}}>ROS/ROS2 Ecosystem</h3>
        <ul style={{color: '#a8b2d1', lineHeight: '1.6', fontSize: '0.9rem'}}>
          <li>RViz, RViz2, Gazebo, ros2_control CLI</li>
          <li>ROS2 Publishers, Subscribers, Parameters</li>
          <li>URDF Modeling & Visualization</li>
          <li>Robot Simulation & Control</li>
          <li>Package Management & Inter-process Messaging</li>
        </ul>
      </div>

      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px'}}>
        <h3 style={{color: '#64ffda', marginBottom: '1rem'}}>Sensor Fusion & Integration</h3>
        <ul style={{color: '#a8b2d1', lineHeight: '1.6', fontSize: '0.9rem'}}>
          <li>LiDAR, IMU, Camera, DVL</li>
          <li>Sonar Integration for Underwater Navigation</li>
          <li>Visual-Inertial-Depth Sensor Fusion</li>
          <li>Multi-sensor Fusion with Uncertainty Modeling</li>
        </ul>
      </div>

      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px'}}>
        <h3 style={{color: '#64ffda', marginBottom: '1rem'}}>Programming & Development</h3>
        <ul style={{color: '#a8b2d1', lineHeight: '1.6', fontSize: '0.9rem'}}>
          <li>Python, C++, MATLAB, Arduino</li>
          <li>Ubuntu, Colab, VS Code</li>
          <li>Virtual Machine Configuration</li>
          <li>System Integration & Development</li>
        </ul>
      </div>

      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px'}}>
        <h3 style={{color: '#64ffda', marginBottom: '1rem'}}>3D Processing & Design</h3>
        <ul style={{color: '#a8b2d1', lineHeight: '1.6', fontSize: '0.9rem'}}>
          <li>Open3D Point Cloud Processing</li>
          <li>OpenCV Image Processing</li>
          <li>SolidWorks, AutoCAD, Fusion 360</li>
          <li>Voxel Mapping & 3D Reconstruction</li>
        </ul>
      </div>

      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px'}}>
        <h3 style={{color: '#64ffda', marginBottom: '1rem'}}>Underwater Robotics</h3>
        <ul style={{color: '#a8b2d1', lineHeight: '1.6', fontSize: '0.9rem'}}>
          <li>Water Current Compensation Algorithms</li>
          <li>Turbidity-adaptive Image Preprocessing</li>
          <li>Underwater Computer Vision Techniques</li>
          <li>UUV Operation & Field Testing</li>
        </ul>
      </div>

      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px'}}>
        <h3 style={{color: '#64ffda', marginBottom: '1rem'}}>Robotics & Control</h3>
        <ul style={{color: '#a8b2d1', lineHeight: '1.6', fontSize: '0.9rem'}}>
          <li>Robot Kinematics & Motion Control</li>
          <li>Differential Drive Control</li>
          <li>Velocity & Speed Controllers</li>
          <li>Hardware Abstraction & Device Control</li>
        </ul>
      </div>
    </div>
  </div>
);

// Professional CV component
const CV = () => {
  const downloadCV = () => {
    window.print();
  };

  return (
    <div style={{
      maxWidth: '1200px',
      margin: '0 auto',
      padding: '2rem'
    }}>
      {/* Download Button */}
      <div style={{textAlign: 'center', marginBottom: '2rem', '@media print': {display: 'none'}}}>
        <button 
          onClick={downloadCV}
          style={{
            backgroundColor: '#64ffda',
            color: '#0a192f',
            border: 'none',
            padding: '1rem 2rem',
            borderRadius: '5px',
            fontSize: '1.1rem',
            fontWeight: 'bold',
            cursor: 'pointer',
            marginBottom: '2rem'
          }}
        >
          Download CV as PDF
        </button>
      </div>

      {/* CV Content */}
      <div style={{
        backgroundColor: 'white',
        color: '#333',
        minHeight: '100vh',
        display: 'flex',
        fontFamily: 'Arial, sans-serif'
      }}>
        {/* Left Sidebar */}
        <div style={{
          width: '300px',
          backgroundColor: '#4a4a4a',
          color: 'white',
          padding: '2rem',
          display: 'flex',
          flexDirection: 'column'
        }}>
          {/* Profile Image */}
          <div style={{
            width: '150px',
            height: '150px',
            borderRadius: '50%',
            margin: '0 auto 2rem',
            overflow: 'hidden',
            border: '3px solid #64ffda'
          }}>
            <img 
              src="/profile1.jpg" 
              alt="Fomekong Fomekong Rachel Merveille" 
              onError={(e) => {
                e.target.style.display = 'none';
                e.target.nextSibling.style.display = 'flex';
              }}
              style={{
                width: '100%',
                height: '100%',
                objectFit: 'cover'
              }}
            />
            <div style={{
              width: '100%',
              height: '100%',
              backgroundColor: '#64ffda',
              display: 'none',
              alignItems: 'center',
              justifyContent: 'center',
              fontSize: '3rem',
              fontWeight: 'bold',
              color: '#0a192f'
            }}>
              RF
            </div>
          </div>

          {/* About Me */}
          <div style={{marginBottom: '2rem'}}>
            <h3 style={{
              fontSize: '1.2rem',
              marginBottom: '1rem',
              borderBottom: '2px solid #64ffda',
              paddingBottom: '0.5rem'
            }}>
              PROFESSIONAL SUMMARY
            </h3>
            <p style={{fontSize: '0.9rem', lineHeight: '1.4'}}>
              Competent and self-driven researcher with a focus on robotics, sensor fusion, SLAM, and robot control systems. 
              Extensive background in the development of both terrestrial and underwater robots, with practical knowledge of 
              kinematics, motor control, navigation, and localization methods like ORB-SLAM3 and vSLAM. Competent in ROS/ROS2, 
              C++, and Python, with a solid academic background in sensor integration and deep learning. Enthusiastic about 
              using state-of-the-art technologies to improve navigation and robotic systems in challenging environments. 
              Working toward a PhD with the goal of improving robotic autonomy through multi-sensor fusion and underwater navigation.
            </p>
          </div>

          {/* Links */}
          <div style={{marginBottom: '2rem'}}>
            <h3 style={{
              fontSize: '1.2rem',
              marginBottom: '1rem',
              borderBottom: '2px solid #64ffda',
              paddingBottom: '0.5rem'
            }}>
              CONTACT
            </h3>
            <p style={{fontSize: '0.9rem', marginBottom: '0.5rem'}}>
              <strong>Email:</strong><br/>
              marvelous@stu.gdou.edu.cn
            </p>
            <p style={{fontSize: '0.9rem', marginBottom: '0.5rem'}}>
              <strong>Phone:</strong><br/>
              (+86) 166-6225-8487
            </p>
            <p style={{fontSize: '0.9rem'}}>
              <strong>Address:</strong><br/>
              Zhanjiang, Guangdong Province<br/>
              524091, China
            </p>
          </div>

          {/* References */}
          <div style={{marginBottom: '2rem'}}>
            <h3 style={{
              fontSize: '1.2rem',
              marginBottom: '1rem',
              borderBottom: '2px solid #64ffda',
              paddingBottom: '0.5rem'
            }}>
              REFERENCES
            </h3>
            <div style={{marginBottom: '1rem'}}>
              <h4 style={{fontSize: '1rem', color: '#64ffda'}}>DR. SUPERVISOR</h4>
              <p style={{fontSize: '0.8rem', margin: '0'}}>Guangdong Ocean University</p>
              <p style={{fontSize: '0.8rem', margin: '0'}}>Available upon request</p>
            </div>
          </div>

          {/* Skills */}
          <div>
            <h3 style={{
              fontSize: '1.2rem',
              marginBottom: '1rem',
              borderBottom: '2px solid #64ffda',
              paddingBottom: '0.5rem'
            }}>
              CORE SKILLS
            </h3>
            <div style={{fontSize: '0.8rem', lineHeight: '1.5'}}>
              <p style={{marginBottom: '0.5rem'}}><strong>SLAM:</strong> ORB-SLAM3, NICE-SLAM, Visual-Lidar SLAM, SuperPoint/SuperGlue</p>
              <p style={{marginBottom: '0.5rem'}}><strong>Deep Learning:</strong> PyTorch, CNNs, GANs, RNNs, LSTMs, Reinforcement Learning</p>
              <p style={{marginBottom: '0.5rem'}}><strong>ROS/ROS2:</strong> RViz, Gazebo, ros2_control, URDF, Publishers/Subscribers</p>
              <p style={{marginBottom: '0.5rem'}}><strong>Sensor Fusion:</strong> LiDAR, IMU, Camera, DVL, Sonar Integration</p>
              <p style={{marginBottom: '0.5rem'}}><strong>Programming:</strong> Python, C++, MATLAB, Arduino, Ubuntu</p>
              <p style={{marginBottom: '0.5rem'}}><strong>3D Processing:</strong> Open3D, OpenCV, Point Cloud Processing</p>
              <p style={{marginBottom: '0.5rem'}}><strong>Design:</strong> SolidWorks, AutoCAD, Fusion 360</p>
              <p><strong>Underwater:</strong> UUV Operation, Water Current Compensation, Turbidity Processing</p>
            </div>
          </div>

          {/* Awards */}
          <div>
            <h3 style={{
              fontSize: '1.2rem',
              marginBottom: '1rem',
              borderBottom: '2px solid #64ffda',
              paddingBottom: '0.5rem'
            }}>
              HONORS & AWARDS
            </h3>
            <div style={{fontSize: '0.8rem', lineHeight: '1.5'}}>
              <p style={{marginBottom: '0.5rem'}}>• Guangdong Provincial Scholarship (2022, 2023)</p>
              <p style={{marginBottom: '0.5rem'}}>• Zhejiang Provincial Scholarship for Excellent International Students (2021)</p>
              <p style={{marginBottom: '0.5rem'}}>• Graduate Merit Scholar, Huzhou University (2021)</p>
              <p style={{marginBottom: '0.5rem'}}>• HSK 3 Chinese Language Proficiency Certificate (2021)</p>
              <p>• AIESEC Cameroon Award (2017)</p>
            </div>
          </div>
        </div>

        {/* Right Content */}
        <div style={{flex: 1, padding: '2rem'}}>
          {/* Header */}
          <div style={{marginBottom: '2rem'}}>
            <h1 style={{
              fontSize: '3rem',
              fontWeight: 'bold',
              margin: '0',
              color: '#333',
              letterSpacing: '2px'
            }}>
              FOMEKONG<br/>
              FOMEKONG
            </h1>
            <h2 style={{
              fontSize: '1.2rem',
              color: '#666',
              margin: '0.5rem 0 2rem',
              letterSpacing: '1px'
            }}>
              PHD CANDIDATE
            </h2>
            <div style={{display: 'flex', alignItems: 'center', gap: '2rem', fontSize: '0.9rem', color: '#666', flexWrap: 'wrap'}}>
              <span>📍 Zhanjiang, Guangdong Province, 524091, China</span>
              <span>📞 (+86) 166-6225-8487</span>
              <span>✉️ marvelous@stu.gdou.edu.cn</span>
            </div>
          </div>

          {/* Work Experience */}
          <div style={{marginBottom: '3rem'}}>
            <h2 style={{
              fontSize: '1.5rem',
              color: '#333',
              borderBottom: '3px solid #333',
              paddingBottom: '0.5rem',
              marginBottom: '1.5rem'
            }}>
              EXPERIENCE
            </h2>
            
            <div style={{marginBottom: '2rem'}}>
              <div style={{display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.5rem'}}>
                <h3 style={{fontSize: '1.2rem', color: '#333', margin: '0'}}>UNDERWATER ROBOTICS RESEARCHER</h3>
                <span style={{fontSize: '0.9rem', color: '#666'}}>🏛️ Key Laboratory of Underwater Robotics</span>
              </div>
              <p style={{fontSize: '0.9rem', color: '#666', margin: '0 0 0.5rem'}}>
                Guangdong Ocean University • 2022 - Present
              </p>
              <ul style={{fontSize: '0.9rem', lineHeight: '1.5', paddingLeft: '1.5rem'}}>
                <li>Engaged in various research projects focused on the operation of unmanned underwater vehicles (UUVs) for navigation, mapping, and environmental perception</li>
                <li>Conducted field testing and operation of UUVs in lab pool environments</li>
                <li>Contributed to the development and optimization of underwater navigation systems, integrating sensor data from IMUs, cameras for improved SLAM accuracy</li>
                <li>Assisted in the design and implementation of deep learning models to enhance feature extraction and data fusion for more reliable navigation</li>
                <li>Engaged in simultaneous localization and mapping research including SuperPoint, SuperGlue, CNN (encoder, decoder), pose optimization methods such as g2o</li>
                <li>Assistant teacher to Master students in Simultaneous Localization and Mapping</li>
                <li>Assistant teacher for English corner to undergraduates at Marine College of Guangdong Ocean University</li>
              </ul>
            </div>

            <div style={{marginBottom: '2rem'}}>
              <div style={{display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.5rem'}}>
                <h3 style={{fontSize: '1.2rem', color: '#333', margin: '0'}}>GRADUATE RESEARCH STUDENT</h3>
                <span style={{fontSize: '0.9rem', color: '#666'}}>🏛️ Huzhou University</span>
              </div>
              <p style={{fontSize: '0.9rem', color: '#666', margin: '0 0 0.5rem'}}>
                Huzhou, Zhejiang, China • Aug 2019 - 2022
              </p>
              <ul style={{fontSize: '0.9rem', lineHeight: '1.5', paddingLeft: '1.5rem'}}>
                <li>Contributed to research projects in the Key Laboratory of Electronics, focusing on drone assembly and 3D printing technologies</li>
                <li>Participated in practical projects at Gaoyuangjin Machinery Technology Co., Ltd, gaining hands-on experience in mold part production and plastic product manufacturing</li>
                <li>Successfully completed graduation project titled "Robotized Solution for Selecting, Closing, and Packaging Products in Injection Molding Machines"</li>
                <li>Assisted in automation projects related to conveyor roller construction and machine building at Sanhe Automation Equipment Co., Ltd</li>
                <li>Published research on Industry 4.0's impact on robotics in North American Academic Research Journal</li>
              </ul>
            </div>

            <div style={{marginBottom: '2rem'}}>
              <div style={{display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.5rem'}}>
                <h3 style={{fontSize: '1.2rem', color: '#333', margin: '0'}}>UNDERGRADUATE STUDENT</h3>
                <span style={{fontSize: '0.9rem', color: '#666'}}>🏛️ University of Yaoundé 1</span>
              </div>
              <p style={{fontSize: '0.9rem', color: '#666', margin: '0 0 0.5rem'}}>
                Yaoundé, Cameroon • Aug 2018 - Sep 2019
              </p>
              <ul style={{fontSize: '0.9rem', lineHeight: '1.5', paddingLeft: '1.5rem'}}>
                <li>Conducted comprehensive review on "Evaluation of the Woschni Model for the Variation of Variable Temperature Walls" in collaboration with doctoral student and professor in Energy Physics</li>
                <li>Co-designed and managed the I-Tech Educk project platform, connecting parents and teachers for home tutoring services</li>
                <li>Taught the basics of mechanical physics to final-year students, helping them gain strong understanding of key concepts</li>
                <li>Managed the platform's social media presence, ensuring effective communication with stakeholders</li>
              </ul>
            </div>

            {/* Professional Achievements */}
            <div style={{marginBottom: '2rem'}}>
              <div style={{display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.5rem'}}>
                <h3 style={{fontSize: '1.2rem', color: '#333', margin: '0'}}>PROFESSIONAL ACHIEVEMENTS</h3>
                <span style={{fontSize: '0.9rem', color: '#666'}}>🏛️ Underwater Robotics</span>
              </div>
              <p style={{fontSize: '0.9rem', color: '#666', margin: '0 0 0.5rem'}}>
                Guangdong Ocean University • Sep 2022 - Current
              </p>
              <ul style={{fontSize: '0.9rem', lineHeight: '1.5', paddingLeft: '1.5rem'}}>
                <li>Developed complete underwater SLAM pipeline integrating advanced image preprocessing for turbid environments (CLAHE, saliency masking)</li>
                <li>Implemented robust feature matching using SuperGlue/SuperPoint networks with adaptive voxel-based mapping using Open3D</li>
                <li>Created water current compensation algorithms and keyframe selection optimized for underwater conditions</li>
                <li>Implemented sensor fusion techniques combining visual features with IMU/DVL data and depth sensor integration for 3D reconstruction</li>
                <li>Developed real-time optimization techniques including g2o-based pose graph optimization and efficient loop closure detection</li>
                <li>Created comprehensive visualization tools for 3D trajectory and mapping evaluation</li>
              </ul>
            </div>
          </div>

          {/* Education */}
          <div style={{marginBottom: '3rem'}}>
            <h2 style={{
              fontSize: '1.5rem',
              color: '#333',
              borderBottom: '3px solid #333',
              paddingBottom: '0.5rem',
              marginBottom: '1.5rem'
            }}>
              EDUCATION
            </h2>

            <div style={{marginBottom: '1.5rem'}}>
              <div style={{display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.5rem'}}>
                <h3 style={{fontSize: '1.2rem', color: '#333', margin: '0'}}>GUANGDONG OCEAN UNIVERSITY</h3>
                <span style={{fontSize: '0.9rem', color: '#666'}}>🎓 PhD in Marine Engineering</span>
              </div>
              <p style={{fontSize: '0.9rem', color: '#666', margin: '0 0 0.5rem'}}>
                Zhanjiang • Expected 2026
              </p>
              <ul style={{fontSize: '0.9rem', lineHeight: '1.5', paddingLeft: '1.5rem'}}>
                <li>Specialization: Underwater Robotics, SLAM, Deep Learning, Sensor Fusion</li>
                <li>Thesis: Comprehensive Enhancement of Underwater UUV Navigation via Visual-Lidar SLAM: A Multi-Sensor and AI-Integrated Approach</li>
                <li>GPA: 86.9/100</li>
                <li>Relevant Coursework: Advanced Robotics, Control Systems, Sensor Fusion, Applied Mathematics for Robotics</li>
              </ul>
            </div>

            <div style={{marginBottom: '1.5rem'}}>
              <div style={{display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.5rem'}}>
                <h3 style={{fontSize: '1.2rem', color: '#333', margin: '0'}}>HUZHOU UNIVERSITY</h3>
                <span style={{fontSize: '0.9rem', color: '#666'}}>🎓 MEng in Control Engineering</span>
              </div>
              <p style={{fontSize: '0.9rem', color: '#666', margin: '0 0 0.5rem'}}>
                Huzhou • Graduated 2022
              </p>
              <ul style={{fontSize: '0.9rem', lineHeight: '1.5', paddingLeft: '1.5rem'}}>
                <li>Thesis: Enhancing Manufacturing Efficiency: A New Robotic Arm Design for Injection Molding with Improved Adaptability and Precision</li>
                <li>GPA: 80.6/100</li>
              </ul>
            </div>

            <div style={{marginBottom: '1.5rem'}}>
              <div style={{display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.5rem'}}>
                <h3 style={{fontSize: '1.2rem', color: '#333', margin: '0'}}>UNIVERSITY OF YAOUNDÉ 1</h3>
                <span style={{fontSize: '0.9rem', color: '#666'}}>🎓 BSc in Physics</span>
              </div>
              <p style={{fontSize: '0.9rem', color: '#666', margin: '0 0 0.5rem'}}>
                Cameroon • 2015 - 2018
              </p>
              <ul style={{fontSize: '0.9rem', lineHeight: '1.5', paddingLeft: '1.5rem'}}>
                <li>Graduated with honors</li>
                <li>Strong foundation in mathematical physics</li>
              </ul>
            </div>
          </div>

          {/* Skills */}
          <div style={{marginBottom: '3rem'}}>
            <h2 style={{
              fontSize: '1.5rem',
              color: '#333',
              borderBottom: '3px solid #333',
              paddingBottom: '0.5rem',
              marginBottom: '1.5rem'
            }}>
              SKILLS
            </h2>
            
            <div style={{display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '2rem'}}>
              <div>
                <div style={{marginBottom: '1rem'}}>
                  <h4 style={{fontSize: '1rem', margin: '0 0 0.5rem', color: '#333'}}>SLAM & ROBOTICS</h4>
                  <div style={{height: '10px', backgroundColor: '#e0e0e0', borderRadius: '5px'}}>
                    <div style={{height: '100%', width: '90%', backgroundColor: '#333', borderRadius: '5px'}}></div>
                  </div>
                </div>
                <div style={{marginBottom: '1rem'}}>
                  <h4 style={{fontSize: '1rem', margin: '0 0 0.5rem', color: '#333'}}>DEEP LEARNING</h4>
                  <div style={{height: '10px', backgroundColor: '#e0e0e0', borderRadius: '5px'}}>
                    <div style={{height: '100%', width: '85%', backgroundColor: '#333', borderRadius: '5px'}}></div>
                  </div>
                </div>
                <div style={{marginBottom: '1rem'}}>
                  <h4 style={{fontSize: '1rem', margin: '0 0 0.5rem', color: '#333'}}>PROGRAMMING</h4>
                  <div style={{height: '10px', backgroundColor: '#e0e0e0', borderRadius: '5px'}}>
                    <div style={{height: '100%', width: '80%', backgroundColor: '#333', borderRadius: '5px'}}></div>
                  </div>
                </div>
              </div>
              <div>
                <div style={{marginBottom: '1rem'}}>
                  <h4 style={{fontSize: '1rem', margin: '0 0 0.5rem', color: '#333'}}>SENSOR FUSION</h4>
                  <div style={{height: '10px', backgroundColor: '#e0e0e0', borderRadius: '5px'}}>
                    <div style={{height: '100%', width: '85%', backgroundColor: '#333', borderRadius: '5px'}}></div>
                  </div>
                </div>
                <div style={{marginBottom: '1rem'}}>
                  <h4 style={{fontSize: '1rem', margin: '0 0 0.5rem', color: '#333'}}>RESEARCH WRITING</h4>
                  <div style={{height: '10px', backgroundColor: '#e0e0e0', borderRadius: '5px'}}>
                    <div style={{height: '100%', width: '90%', backgroundColor: '#333', borderRadius: '5px'}}></div>
                  </div>
                </div>
                <div style={{marginBottom: '1rem'}}>
                  <h4 style={{fontSize: '1rem', margin: '0 0 0.5rem', color: '#333'}}>PUBLIC SPEAKING</h4>
                  <div style={{height: '10px', backgroundColor: '#e0e0e0', borderRadius: '5px'}}>
                    <div style={{height: '100%', width: '75%', backgroundColor: '#333', borderRadius: '5px'}}></div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          {/* Languages */}
          <div style={{marginBottom: '3rem'}}>
            <h2 style={{
              fontSize: '1.5rem',
              color: '#333',
              borderBottom: '3px solid #333',
              paddingBottom: '0.5rem',
              marginBottom: '1.5rem'
            }}>
              LANGUAGES
            </h2>
            <div style={{display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: '1rem'}}>
              <div>
                <h4 style={{fontSize: '1rem', margin: '0 0 0.5rem', color: '#333'}}>ENGLISH</h4>
                <p style={{fontSize: '0.9rem', color: '#666'}}>Fluent</p>
              </div>
              <div>
                <h4 style={{fontSize: '1rem', margin: '0 0 0.5rem', color: '#333'}}>FRENCH</h4>
                <p style={{fontSize: '0.9rem', color: '#666'}}>Fluent</p>
              </div>
              <div>
                <h4 style={{fontSize: '1rem', margin: '0 0 0.5rem', color: '#333'}}>MANDARIN</h4>
                <p style={{fontSize: '0.9rem', color: '#666'}}>Intermediate (HSK 3)</p>
              </div>
            </div>
          </div>

          {/* Publications */}
          <div style={{marginBottom: '3rem'}}>
            <h2 style={{
              fontSize: '1.5rem',
              color: '#333',
              borderBottom: '3px solid #333',
              paddingBottom: '0.5rem',
              marginBottom: '1.5rem'
            }}>
              PUBLICATIONS
            </h2>
            <ul style={{fontSize: '0.9rem', lineHeight: '1.6', paddingLeft: '1.5rem'}}>
              <li style={{marginBottom: '1rem'}}>
                <strong>Fomekong, F. F.</strong>, & Hugejile. (2021). "The Influence of Industry 4.0: A Case Study of Injection 
                Molding Machines, Drones, 3D Printing, and Automation Factories." <em>North American Academic Research</em>, 4(12), 221-238. 
                DOI: 10.5281/zenodo.5789895
              </li>
              <li style={{marginBottom: '1rem'}}>
                <strong>Fomekong, F. F.</strong>, Jia, B., Xu, Z., & Fred, B. (2024). "Enhancing Underwater SLAM Navigation 
                and Perception: A Comprehensive Review of Deep Learning Integration." <em>Sensors</em>, 24(21), 7034. 
                DOI: 10.3390/s24217034
              </li>
              <li style={{marginBottom: '1rem'}}>
                <strong>Fomekong, F. F.</strong>, Jia, B., Xu, Z., & Fred, B. (2024). "Advancements in Sensor Fusion for Underwater SLAM: 
                A Review on Enhanced Navigation and Environmental Perception." <em>Sensors</em>, 24(23), 7490. 
                DOI: 10.3390/s24237490
              </li>
              <li style={{marginBottom: '1rem'}}>
                <strong>Fomekong, F. F.</strong>, Hugejile, Fred, B. "Enhancing Manufacturing Efficiency: A New Robotic Arm Design for Injection Molding with Improved Adaptability and Precision." 
                DOI: 10.21203/rs.3.rs-5524250/v1
              </li>
            </ul>
          </div>

          {/* Patents */}
          <div style={{marginBottom: '3rem'}}>
            <h2 style={{
              fontSize: '1.5rem',
              color: '#333',
              borderBottom: '3px solid #333',
              paddingBottom: '0.5rem',
              marginBottom: '1.5rem'
            }}>
              PATENTS
            </h2>
            <ul style={{fontSize: '0.9rem', lineHeight: '1.6', paddingLeft: '1.5rem'}}>
              <li>
                <strong>CN202022594125.5</strong> – A Human Non-Contact Temperature Detection Device (Utility Model Patent)
              </li>
            </ul>
          </div>

          {/* Projects */}
          <div style={{marginBottom: '3rem'}}>
            <h2 style={{
              fontSize: '1.5rem',
              color: '#333',
              borderBottom: '3px solid #333',
              paddingBottom: '0.5rem',
              marginBottom: '1.5rem'
            }}>
              PROJECTS
            </h2>
            
            <div style={{marginBottom: '2rem'}}>
              <h3 style={{fontSize: '1.1rem', color: '#333', marginBottom: '0.5rem'}}>Underwater SLAM System Development</h3>
              <p style={{fontSize: '0.9rem', lineHeight: '1.5', color: '#555'}}>
                Developed a complete underwater SLAM system using Python/PyTorch, integrating SuperGlue/SuperPoint 
                feature matching and voxel mapping for robust underwater navigation.
              </p>
            </div>
            
            <div style={{marginBottom: '2rem'}}>
              <h3 style={{fontSize: '1.1rem', color: '#333', marginBottom: '0.5rem'}}>Robust Underwater Visual SLAM System</h3>
              <p style={{fontSize: '0.9rem', lineHeight: '1.5', color: '#555'}}>
                Created a visual SLAM system using deep feature matching, OpenCV, Open3D, and pose graph 
                optimization for high-accuracy mapping in low-visibility underwater environments.
              </p>
            </div>
          </div>

          {/* Accomplishments */}
          <div>
            <h2 style={{
              fontSize: '1.5rem',
              color: '#333',
              borderBottom: '3px solid #333',
              paddingBottom: '0.5rem',
              marginBottom: '1.5rem'
            }}>
              ACCOMPLISHMENTS
            </h2>
            <ul style={{fontSize: '0.9rem', lineHeight: '1.6', paddingLeft: '1.5rem'}}>
              <li style={{marginBottom: '0.5rem'}}>
                Proficient in deep learning and robotic systems, improving accuracy and system performance
              </li>
              <li>
                Extensive experience in problem-solving, model training, and performance enhancement
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  );
};

// Professional Gallery component
const Gallery = () => (
  <div style={{
    maxWidth: '1200px',
    margin: '0 auto',
    padding: '4rem 2rem'
  }}>
    <h1 style={{fontSize: '3rem', color: '#64ffda', marginBottom: '2rem', textAlign: 'center'}}>Professional Gallery</h1>
    <p style={{fontSize: '1.2rem', color: '#a8b2d1', textAlign: 'center', marginBottom: '3rem'}}>
      A collection of professional photos showcasing my academic and research journey
    </p>
    
    <div style={{display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(300px, 1fr))', gap: '2rem'}}>
      {/* Photo 1 */}
      <div style={{
        backgroundColor: '#112240',
        borderRadius: '15px',
        overflow: 'hidden',
        boxShadow: '0 10px 30px rgba(0,0,0,0.3)',
        transition: 'transform 0.3s ease',
        cursor: 'pointer'
      }}
      onMouseOver={(e) => e.target.style.transform = 'scale(1.05)'}
      onMouseOut={(e) => e.target.style.transform = 'scale(1)'}
      >
        <img 
          src="/profile1.jpg" 
          alt="Professional Headshot 1" 
          style={{
            width: '100%',
            height: '300px',
            objectFit: 'cover'
          }}
        />
        <div style={{padding: '1rem'}}>
          <h3 style={{color: '#64ffda', marginBottom: '0.5rem'}}>Professional Headshot</h3>
          <p style={{color: '#a8b2d1', fontSize: '0.9rem'}}>Formal academic portrait for conferences and publications</p>
        </div>
      </div>

      {/* Photo 2 */}
      <div style={{
        backgroundColor: '#112240',
        borderRadius: '15px',
        overflow: 'hidden',
        boxShadow: '0 10px 30px rgba(0,0,0,0.3)',
        transition: 'transform 0.3s ease',
        cursor: 'pointer'
      }}
      onMouseOver={(e) => e.target.style.transform = 'scale(1.05)'}
      onMouseOut={(e) => e.target.style.transform = 'scale(1)'}
      >
        <img 
          src="/profile2.jpg" 
          alt="Professional Photo 2" 
          style={{
            width: '100%',
            height: '300px',
            objectFit: 'cover'
          }}
        />
        <div style={{padding: '1rem'}}>
          <h3 style={{color: '#64ffda', marginBottom: '0.5rem'}}>Research Portrait</h3>
          <p style={{color: '#a8b2d1', fontSize: '0.9rem'}}>Professional photo for research presentations</p>
        </div>
      </div>

      {/* Photo 3 */}
      <div style={{
        backgroundColor: '#112240',
        borderRadius: '15px',
        overflow: 'hidden',
        boxShadow: '0 10px 30px rgba(0,0,0,0.3)',
        transition: 'transform 0.3s ease',
        cursor: 'pointer'
      }}
      onMouseOver={(e) => e.target.style.transform = 'scale(1.05)'}
      onMouseOut={(e) => e.target.style.transform = 'scale(1)'}
      >
        <img 
          src="/profile3.jpg" 
          alt="Professional Photo 3" 
          style={{
            width: '100%',
            height: '300px',
            objectFit: 'cover'
          }}
        />
        <div style={{padding: '1rem'}}>
          <h3 style={{color: '#64ffda', marginBottom: '0.5rem'}}>Academic Portrait</h3>
          <p style={{color: '#a8b2d1', fontSize: '0.9rem'}}>Professional image for academic profiles</p>
        </div>
      </div>

      {/* Photo 4 */}
      <div style={{
        backgroundColor: '#112240',
        borderRadius: '15px',
        overflow: 'hidden',
        boxShadow: '0 10px 30px rgba(0,0,0,0.3)',
        transition: 'transform 0.3s ease',
        cursor: 'pointer'
      }}
      onMouseOver={(e) => e.target.style.transform = 'scale(1.05)'}
      onMouseOut={(e) => e.target.style.transform = 'scale(1)'}
      >
        <img 
          src="/profile4.jpg" 
          alt="Professional Photo 4" 
          style={{
            width: '100%',
            height: '300px',
            objectFit: 'cover'
          }}
        />
        <div style={{padding: '1rem'}}>
          <h3 style={{color: '#64ffda', marginBottom: '0.5rem'}}>Conference Photo</h3>
          <p style={{color: '#a8b2d1', fontSize: '0.9rem'}}>Professional image for industry networking</p>
        </div>
      </div>
    </div>

    <div style={{
      textAlign: 'center',
      marginTop: '3rem',
      padding: '2rem',
      backgroundColor: '#112240',
      borderRadius: '10px'
    }}>
      <h3 style={{color: '#64ffda', marginBottom: '1rem'}}>Professional Use</h3>
      <p style={{color: '#a8b2d1', lineHeight: '1.6'}}>
        These professional photos are used across various platforms including academic profiles, 
        conference presentations, research publications, and professional networking. Each image 
        represents different aspects of my academic and research journey in marine engineering and underwater robotics.
      </p>
    </div>
  </div>
);

// Simple Contact component
const Contact = () => (
  <div style={{
    maxWidth: '1200px',
    margin: '0 auto',
    padding: '4rem 2rem',
    textAlign: 'center'
  }}>
    <h1 style={{fontSize: '3rem', color: '#64ffda', marginBottom: '2rem'}}>Get In Touch</h1>
    <p style={{fontSize: '1.2rem', color: '#a8b2d1', marginBottom: '3rem', maxWidth: '600px', margin: '0 auto 3rem'}}>
      I'm always interested in discussing research opportunities, collaborations, or potential projects in underwater robotics and SLAM.
    </p>
    
    <div style={{backgroundColor: '#112240', padding: '3rem', borderRadius: '10px', maxWidth: '600px', margin: '0 auto'}}>
      <h3 style={{color: '#ccd6f6', marginBottom: '2rem'}}>Contact Information</h3>
      <div style={{color: '#a8b2d1', fontSize: '1.1rem', lineHeight: '2'}}>
        <p><strong>Email:</strong> marvelous@stu.gdou.edu.cn</p>
        <p><strong>Phone:</strong> (+86) 166-6225-8487</p>
        <p><strong>Institution:</strong> Guangdong Ocean University</p>
        <p><strong>Location:</strong> Zhanjiang, Guangdong, China</p>
        <p><strong>Research Focus:</strong> Underwater Robotics & SLAM</p>
      </div>
    </div>
  </div>
);
const Home = () => (
  <div style={{
    maxWidth: '1200px',
    margin: '0 auto',
    padding: '4rem 2rem',
    textAlign: 'center'
  }}>
    {/* Profile Photo */}
    <div style={{
      width: '200px',
      height: '200px',
      borderRadius: '50%',
      margin: '0 auto 2rem',
      overflow: 'hidden',
      border: '4px solid #64ffda',
      boxShadow: '0 0 20px rgba(100, 255, 218, 0.3)'
    }}>
      <img 
        src="/profile1.jpg" 
        alt="Fomekong Fomekong Rachel Merveille" 
        onError={(e) => {
          e.target.style.display = 'none';
          e.target.nextSibling.style.display = 'flex';
        }}
        style={{
          width: '100%',
          height: '100%',
          objectFit: 'cover'
        }}
      />
      <div style={{
        width: '100%',
        height: '100%',
        backgroundColor: '#64ffda',
        display: 'none',
        alignItems: 'center',
        justifyContent: 'center',
        fontSize: '4rem',
        fontWeight: 'bold',
        color: '#0a192f'
      }}>
        RF
      </div>
    </div>
    
    <h1 style={{
      fontSize: '3.5rem',
      color: '#ccd6f6',
      marginBottom: '1rem'
    }}>
      Fomekong Fomekong Rachel Merveille
    </h1>
    <h2 style={{
      fontSize: '2rem',
      color: '#64ffda',
      marginBottom: '2rem'
    }}>
      PhD Candidate in Marine Engineering
    </h2>
    <p style={{
      fontSize: '1.3rem',
      color: '#a8b2d1',
      lineHeight: '1.6',
      maxWidth: '800px',
      margin: '0 auto 3rem'
    }}>
      Self-motivated researcher with expertise in underwater robotics, SLAM (Simultaneous Localization and Mapping), 
      deep learning, and sensor fusion. Specializing in improving navigation and perception capabilities of 
      unmanned underwater vehicles (UUVs) in complex underwater environments.
    </p>
    <div style={{display: 'flex', gap: '1rem', justifyContent: 'center'}}>
      <button style={{
        backgroundColor: '#64ffda',
        color: '#0a192f',
        padding: '1rem 2rem',
        border: 'none',
        borderRadius: '5px',
        fontSize: '1.1rem',
        cursor: 'pointer'
      }}>
        View Projects
      </button>
      <button style={{
        backgroundColor: 'transparent',
        color: '#64ffda',
        padding: '1rem 2rem',
        border: '2px solid #64ffda',
        borderRadius: '5px',
        fontSize: '1.1rem',
        cursor: 'pointer'
      }}>
        Download CV
      </button>
    </div>
  </div>
);

function App() {
  return (
    <Router>
      <div style={{
        backgroundColor: '#0a192f',
        minHeight: '100vh',
        color: '#ccd6f6'
      }}>
        <Navbar />
        <div>
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/about" element={<About />} />
            <Route path="/cv" element={<CV />} />
            <Route path="/skills" element={<Skills />} />
            <Route path="/gallery" element={<Gallery />} />
            <Route path="/contact" element={<Contact />} />
          </Routes>
        </div>
        <footer style={{
          textAlign: 'center',
          padding: '2rem',
          borderTop: '1px solid #233554',
          marginTop: '4rem'
        }}>
          <p>© {new Date().getFullYear()} Fomekong Fomekong Rachel Merveille. All Rights Reserved.</p>
        </footer>
      </div>
    </Router>
  );
}

export default App;
