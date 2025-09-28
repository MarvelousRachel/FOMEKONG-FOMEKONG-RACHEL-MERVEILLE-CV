import React from 'react';
import './CV.css';
import { FaMapMarkerAlt, FaPhone, FaEnvelope, FaLinkedin } from 'react-icons/fa';

const CV = () => {
  return (
    <div className="cv-container">
      {/* Left Sidebar */}
      <div className="cv-sidebar">
        <div className="profile-section">
          <div className="profile-image">
            {/* Replace with your actual profile image */}
            <img src="/profile-image.jpg" alt="Rachel Merveille" />
          </div>
        </div>
        
        <div className="sidebar-section">
          <h2>About Me</h2>
          <p>
            Highly skilled and dedicated researcher specializing in underwater robotics, SLAM, and AI systems. 
            Currently pursuing a PhD in Marine Engineering with a focus on enhancing underwater navigation through 
            innovative applications of Visual-Lidar SLAM and deep learning techniques.
          </p>
        </div>
        
        <div className="sidebar-section links">
          <h2>Links</h2>
          <div className="link-item">
            <FaLinkedin />
            <a href="https://linkedin.com/in/rachel-fomekong" target="_blank" rel="noopener noreferrer">
              linkedin.com/in/rachel-fomekong
            </a>
          </div>
        </div>
        
        <div className="sidebar-section">
          <h2>References</h2>
          <div className="reference">
            <h3>DR. LI ZHANG</h3>
            <p>Guangdong Ocean University</p>
            <p>T: +86 123 456 7890</p>
            <p>E: li.zhang@gdou.edu.cn</p>
          </div>
          
          <div className="reference">
            <h3>DR. WANG JIAN</h3>
            <p>Huzhou University</p>
            <p>T: +86 987 654 3210</p>
            <p>E: wang.jian@huzhou.edu.cn</p>
          </div>
        </div>
        
        <div className="sidebar-section">
          <h2>Hobbies</h2>
          <ul>
            <li>Deep sea diving</li>
            <li>Programming</li>
            <li>Reading scientific publications</li>
            <li>Chess</li>
            <li>Photography</li>
          </ul>
        </div>
      </div>
      
      {/* Main Content */}
      <div className="cv-main">
        import React from 'react';
import ModernCV from './ModernCV';

const CV = () => {
  return (
    <ModernCV />
  );
};

export default CV;
        
        <section className="cv-section">
          <h2>Work Experience</h2>
          <div className="timeline-item">
            <div className="timeline-dot"></div>
            <div className="timeline-content">
              <h3>Research Engineer</h3>
              <div className="timeline-subtitle">
                <span>Huawei Technologies Co., Ltd.</span>
                <span>Sep 2022 - Present</span>
              </div>
              <ul className="job-details">
                <li>Conduct research on Neuromorphic Computing Systems and AI architectures</li>
                <li>Research on advanced AI models, architectures, and optimization algorithms</li>
                <li>Work on AI chip accelerator technologies and hardware architectures</li>
                <li>Develop Neural Architecture Search (NAS) and Energy-efficient models</li>
              </ul>
            </div>
          </div>
          
          <div className="timeline-item">
            <div className="timeline-dot"></div>
            <div className="timeline-content">
              <h3>Software Engineering Intern</h3>
              <div className="timeline-subtitle">
                <span>Huawei Technologies Co., Ltd.</span>
                <span>Feb 2022 - Aug 2022</span>
              </div>
              <ul className="job-details">
                <li>Worked on intelligent task offloading models for wireless communication systems</li>
                <li>Developed reinforcement learning models for dynamic task offloading</li>
                <li>Implemented deep Q-learning solutions for resource management</li>
              </ul>
            </div>
          </div>
          
          <div className="timeline-item">
            <div className="timeline-dot"></div>
            <div className="timeline-content">
              <h3>Research Assistant</h3>
              <div className="timeline-subtitle">
                <span>LAAS-CNRS</span>
                <span>Feb 2021 - Jul 2021</span>
              </div>
              <ul className="job-details">
                <li>Conducted research on fault-tolerant systems design and implementation</li>
                <li>Analyzed resilient computing methods for critical systems</li>
                <li>Developed simulation models for testing system reliability</li>
              </ul>
            </div>
          </div>
        </section>
        
        <section className="cv-section">
          <h2>Education</h2>
          <div className="timeline-item">
            <div className="timeline-dot"></div>
            <div className="timeline-content">
              <h3>PhD in Marine Engineering</h3>
              <div className="timeline-subtitle">
                <span>Guangdong Ocean University</span>
                <span>2020 - Present</span>
              </div>
              <ul className="education-details">
                <li>Specialized in underwater SLAM and robotics</li>
                <li>Research focus: Enhancement of Underwater UUV Navigation via Visual-Lidar SLAM</li>
                <li>Supervisor: Prof. Li Zhang</li>
                <li>GPA: 86.9/100</li>
              </ul>
            </div>
          </div>
          
          <div className="timeline-item">
            <div className="timeline-dot"></div>
            <div className="timeline-content">
              <h3>Master of Engineering in Control Engineering</h3>
              <div className="timeline-subtitle">
                <span>Huzhou University</span>
                <span>2018 - 2020</span>
              </div>
              <ul className="education-details">
                <li>Thesis: Robotic Arm Design for Injection Molding</li>
                <li>Supervisor: Prof. Wang Jian</li>
                <li>GPA: 80.6/100</li>
              </ul>
            </div>
          </div>
          
          <div className="timeline-item">
            <div className="timeline-dot"></div>
            <div className="timeline-content">
              <h3>BSc in Physics</h3>
              <div className="timeline-subtitle">
                <span>University of Yaoundé 1</span>
                <span>2013 - 2018</span>
              </div>
              <ul className="education-details">
                <li>Final Year Project: Simulation of Electromagnetic Wave Propagation</li>
                <li>Supervisor: Dr. Kamga Jean</li>
              </ul>
            </div>
          </div>
        </section>
        
        <div className="cv-item">
          <div className="cv-item-header">
            <h3>Master of Engineering in Control Engineering</h3>
            <span className="cv-date">2018 - 2020</span>
          </div>
          <p className="cv-institution">Huzhou University, Huzhou, Zhejiang, China</p>
          <p className="cv-details">
            <strong>Thesis:</strong> Robotic Arm Design for Injection Molding
          </p>
          <p className="cv-details">
            <strong>Supervisor:</strong> Prof. Wang Jian
          </p>
          <p className="cv-details">
            <strong>GPA:</strong> 80.6/100
          </p>
        </div>
        
        <div className="cv-item">
          <div className="cv-item-header">
            <h3>Bachelor of Science in Physics</h3>
            <span className="cv-date">2013 - 2018</span>
          </div>
          <p className="cv-institution">University of Yaoundé 1, Yaoundé, Cameroon</p>
          <p className="cv-details">
            <strong>Final Year Project:</strong> Simulation of Electromagnetic Wave Propagation
          </p>
          <p className="cv-details">
            <strong>Supervisor:</strong> Dr. Kamga Jean
          </p>
        </div>
      </div>
      
      <div className="cv-section">
        <h2>Research Experience</h2>
        <div className="cv-item">
          <div className="cv-item-header">
            <h3>Research Engineer</h3>
            <span className="cv-date">August 2022 - Present</span>
          </div>
          <p className="cv-institution">Huawei Technologies Co., Ltd., Shenzhen, China</p>
          <ul className="cv-responsibilities">
            <li>Conduct research on Neuromorphic Computing Systems and heterogeneous parallel computing platforms</li>
            <li>Research on advanced AI models, architectures, and optimization algorithms</li>
            <li>Work on AI chip accelerator technologies and hardware architectures</li>
            <li>Develop Neural Architecture Search (NAS) and Energy-efficient models</li>
            <li>Research on fault-tolerant systems and Federated Learning</li>
          </ul>
        </div>
        
        <div className="cv-item">
          <div className="cv-item-header">
            <h3>Software Engineering Intern</h3>
            <span className="cv-date">Feb 2022 - August 2022</span>
          </div>
          <p className="cv-institution">Huawei Technologies Co., Ltd., Shenzhen, China</p>
          <ul className="cv-responsibilities">
            <li>Worked on intelligent task offloading models for wireless communication systems</li>
            <li>Developed reinforcement learning models for dynamic task offloading</li>
            <li>Implemented deep Q-learning solutions for resource management</li>
            <li>Created simulation environments for testing offloading algorithms</li>
          </ul>
        </div>
        
        <div className="cv-item">
          <div className="cv-item-header">
            <h3>Research Assistant</h3>
            <span className="cv-date">Feb 2021 - July 2021</span>
          </div>
          <p className="cv-institution">Laboratory for Analysis and Architecture of Systems - CNRS, Toulouse, France</p>
          <ul className="cv-responsibilities">
            <li>Conducted research on fault-tolerant systems design and implementation</li>
            <li>Analyzed resilient computing methods for critical systems</li>
            <li>Developed simulation models for testing system reliability</li>
          </ul>
        </div>
        
        <div className="cv-item">
          <div className="cv-item-header">
            <h3>Teaching Assistant</h3>
            <span className="cv-date">Sept 2020 - Jan 2021</span>
          </div>
          <p className="cv-institution">Université Toulouse III - Paul Sabatier, Toulouse, France</p>
          <ul className="cv-responsibilities">
            <li>Assisted professors in teaching undergraduate computer science courses</li>
            <li>Conducted laboratory sessions and practical exercises</li>
            <li>Evaluated and graded student assignments and projects</li>
          </ul>
        </div>
      </div>
      
      <div className="cv-section">
        <h2>Technical Skills</h2>
        <div className="skills-grid">
          <div className="skill-category">
            <h3>Programming Languages</h3>
            <ul className="skill-list">
              <li>Python</li>
              <li>C++</li>
              <li>MATLAB</li>
              <li>C</li>
              <li>JavaScript</li>
            </ul>
          </div>
          
          <div className="skill-category">
            <h3>Deep Learning</h3>
            <ul className="skill-list">
              <li>PyTorch</li>
              <li>TensorFlow</li>
              <li>Keras</li>
              <li>CNNs, RNNs, LSTMs</li>
              <li>GANs</li>
            </ul>
          </div>
          
          <div className="skill-category">
            <h3>SLAM & Navigation</h3>
            <ul className="skill-list">
              <li>ORB-SLAM3</li>
              <li>NICE-SLAM</li>
              <li>Visual-Lidar SLAM</li>
              <li>Pose Graph Optimization</li>
              <li>Structure from Motion</li>
            </ul>
          </div>
          
          <div className="skill-category">
            <h3>Robotics</h3>
            <ul className="skill-list">
              <li>ROS/ROS2</li>
              <li>Robot Kinematics</li>
              <li>Path Planning</li>
              <li>Sensor Fusion</li>
              <li>Control Systems</li>
            </ul>
          </div>
        </div>
      </div>
      
      <div className="cv-section">
        <h2>Languages</h2>
        <div className="languages-grid">
          <div className="language-item">
            <span className="language-name">English</span>
            <div className="proficiency-bar">
              <div className="proficiency-level" style={{ width: '100%' }}></div>
            </div>
            <span className="proficiency-text">Fluent</span>
          </div>
          
          <div className="language-item">
            <span className="language-name">French</span>
            <div className="proficiency-bar">
              <div className="proficiency-level" style={{ width: '100%' }}></div>
            </div>
            <span className="proficiency-text">Native</span>
          </div>
          
          <div className="language-item">
            <span className="language-name">Mandarin</span>
            <div className="proficiency-bar">
              <div className="proficiency-level" style={{ width: '50%' }}></div>
            </div>
            <span className="proficiency-text">Intermediate (HSK 3)</span>
          </div>
        </div>
      </div>
      
      <div className="cv-section">
        <h2>Awards & Honors</h2>
        <div className="cv-item">
          <div className="cv-item-header">
            <h3>Chinese Government Scholarship for International Students</h3>
            <span className="cv-date">2020 - 2024</span>
          </div>
          <p className="cv-details">Full scholarship for PhD studies at Guangdong Ocean University</p>
        </div>
        
        <div className="cv-item">
          <div className="cv-item-header">
            <h3>Best Paper Award</h3>
            <span className="cv-date">2023</span>
          </div>
          <p className="cv-details">International Conference on Underwater Technology, Shanghai, China</p>
        </div>
        
        <div className="cv-item">
          <div className="cv-item-header">
            <h3>Excellence in Research Award</h3>
            <span className="cv-date">2022</span>
          </div>
          <p className="cv-details">Huawei Technologies Co., Ltd.</p>
        </div>
      </div>
      
      <div className="cv-section">
        <h2>Professional Memberships</h2>
        <div className="cv-item">
          <div className="cv-item-header">
            <h3>IEEE Robotics and Automation Society</h3>
            <span className="cv-date">2021 - Present</span>
          </div>
        </div>
        
        <div className="cv-item">
          <div className="cv-item-header">
            <h3>IEEE Oceanic Engineering Society</h3>
            <span className="cv-date">2020 - Present</span>
          </div>
        </div>
      </div>
    </div>
  );
};

export default CV;
