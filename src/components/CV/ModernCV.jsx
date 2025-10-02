import React from 'react';
import './ModernCV.css';
import { FaMapMarkerAlt, FaPhone, FaEnvelope, FaLinkedin } from 'react-icons/fa';

const ModernCV = () => {
  return (
    <div className="cv-container">
      {/* Left Sidebar */}
      <div className="cv-sidebar">
        <div className="profile-section">
          <div className="profile-image">
            {/* Replace with your actual profile image */}
            <img src="./profile1.jpg" alt="Rachel Merveille" />
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
        <div className="cv-header">
          <h1>FOMEKONG FOMEKONG</h1>
          <h1>RACHEL MERVEILLE</h1>
          <h2>PhD CANDIDATE</h2>
          
          <div className="contact-info">
            <div className="contact-item">
              <FaMapMarkerAlt /> <span>Zhanjiang, Guangdong, China</span>
            </div>
            <div className="contact-item">
              <FaPhone /> <span>+86 123 456 7890</span>
            </div>
            <div className="contact-item">
              <FaEnvelope /> <span>rachel.fomekong@example.com</span>
            </div>
          </div>
        </div>
        
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
        
        <section className="cv-section">
          <h2>Skills</h2>
          <div className="skills-grid">
            <div className="skill-category">
              <h3>Python Programming</h3>
              <div className="skill-bar">
                <div className="skill-level" style={{ width: '95%' }}></div>
              </div>
            </div>
            
            <div className="skill-category">
              <h3>Deep Learning</h3>
              <div className="skill-bar">
                <div className="skill-level" style={{ width: '90%' }}></div>
              </div>
            </div>
            
            <div className="skill-category">
              <h3>SLAM & Navigation</h3>
              <div className="skill-bar">
                <div className="skill-level" style={{ width: '95%' }}></div>
              </div>
            </div>
            
            <div className="skill-category">
              <h3>Computer Vision</h3>
              <div className="skill-bar">
                <div className="skill-level" style={{ width: '85%' }}></div>
              </div>
            </div>
            
            <div className="skill-category">
              <h3>C++ Programming</h3>
              <div className="skill-bar">
                <div className="skill-level" style={{ width: '85%' }}></div>
              </div>
            </div>
            
            <div className="skill-category">
              <h3>ROS/ROS2</h3>
              <div className="skill-bar">
                <div className="skill-level" style={{ width: '80%' }}></div>
              </div>
            </div>
          </div>
        </section>
        
        <section className="cv-section">
          <h2>Languages</h2>
          <div className="language-grid">
            <div className="language-item">
              <h3>English</h3>
              <div className="language-bar">
                <div className="language-level" style={{ width: '100%' }}></div>
              </div>
            </div>
            
            <div className="language-item">
              <h3>French</h3>
              <div className="language-bar">
                <div className="language-level" style={{ width: '100%' }}></div>
              </div>
            </div>
            
            <div className="language-item">
              <h3>Mandarin</h3>
              <div className="language-bar">
                <div className="language-level" style={{ width: '50%' }}></div>
              </div>
            </div>
          </div>
        </section>
      </div>
    </div>
  );
};

export default ModernCV;
