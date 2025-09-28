import React from 'react';
import './ResumeCv.css';

const ResumeCv = () => {
  return (
    <div className="resume-container">
      {/* Left sidebar */}
      <div className="resume-sidebar">
        <div className="profile-photo">
          <img 
            src="/profile.jpg" 
            alt="Fomekong Fomekong Rachel Merveille" 
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
            Highly skilled and dedicated PhD candidate in Marine Engineering specializing in underwater robotics, 
            SLAM, and deep learning. Published multiple research papers and presented findings at international 
            conferences. Looking for challenging research positions to apply and further develop expertise.
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
            <a href="mailto:rachel.fomekong@gdou.edu.cn">
              rachel.fomekong@gdou.edu.cn
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

      {/* Right main content */}
      <div className="resume-main">
        <div className="resume-header">
          <h1>FOMEKONG FOMEKONG<br/>RACHEL MERVEILLE</h1>
          <h2>PhD CANDIDATE</h2>
          <div className="contact-info">
            <div className="contact-item">
              <span>📍</span> Zhanjiang, Guangdong, China, 524088
            </div>
            <div className="contact-item">
              <span>📞</span> +86 139 456 7890
            </div>
            <div className="contact-item">
              <span>✉️</span> rachel.fomekong@gdou.edu.cn
            </div>
          </div>
        </div>
          <div className="reference">
            <h3>DR. WANG JIAN</h3>
            <p>Huzhou University</p>
            <p>T: +86 987 654 3210</p>
            <p>E: wang.jian@huzhou.edu.cn</p>
          </div>
        </div>
        
        <div className="sidebar-section hobbies">
          <h2>HOBBIES</h2>
          <ul>
            <li>Deep sea diving</li>
            <li>Programming</li>
            <li>Reading scientific publications</li>
            <li>Chess</li>
            <li>Photography</li>
          </ul>
        </div>
      </div>
      
      {/* Main content */}
      <div className="resume-content">
        <div className="resume-header">
          <div className="name-title">
            <h1>FOMEKONG FOMEKONG</h1>
            <h1>RACHEL MERVEILLE</h1>
            <h2>PhD CANDIDATE</h2>
          </div>
          
          <div className="contact-info">
            <div className="contact-item">
              📍 <span>Zhanjiang, Guangdong, China</span>
            </div>
            <div className="contact-item">
              📞 <span>+86 123 456 7890</span>
            </div>
            <div className="contact-item">
              ✉️ <span>rachel.fomekong@example.com</span>
            </div>
          </div>
        </div>
        
        <section className="resume-section work-experience">
          <h2>WORK EXPERIENCE</h2>
          
          <div className="timeline-item">
            <div className="timeline-dot"></div>
            <div className="timeline-content">
              <h3>Research Engineer</h3>
              <div className="timeline-subtitle">
                <span className="company">Huawei Technologies Co., Ltd.</span>
                <span className="period">Sep 2022 - Present</span>
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
              <h3>Research Assistant</h3>
              <div className="timeline-subtitle">
                <span className="company">LAAS-CNRS, Toulouse</span>
                <span className="period">Feb 2021 - Jul 2021</span>
              </div>
              <ul className="job-details">
                <li>Conducted research on fault-tolerant systems design and implementation</li>
                <li>Analyzed resilient computing methods for critical systems</li>
                <li>Developed simulation models for testing system reliability</li>
              </ul>
            </div>
          </div>
        </section>
        
        <section className="resume-section education">
          <h2>EDUCATION</h2>
          
          <div className="timeline-item">
            <div className="timeline-dot"></div>
            <div className="timeline-content">
              <h3>PhD in Marine Engineering</h3>
              <div className="timeline-subtitle">
                <span className="institution">Guangdong Ocean University</span>
                <span className="period">2020 - Present</span>
              </div>
              <ul className="education-details">
                <li>Specialized in underwater SLAM and robotics</li>
                <li>Published several papers in renowned scientific journals</li>
                <li>Research focus: Enhancement of Underwater UUV Navigation via Visual-Lidar SLAM</li>
              </ul>
            </div>
          </div>
          
          <div className="timeline-item">
            <div className="timeline-dot"></div>
            <div className="timeline-content">
              <h3>BSc in Physics</h3>
              <div className="timeline-subtitle">
                <span className="institution">University of Yaoundé 1</span>
                <span className="period">2013 - 2018</span>
              </div>
              <ul className="education-details">
                <li>Graduated with honors</li>
                <li>Final Year Project: Simulation of Electromagnetic Wave Propagation</li>
              </ul>
            </div>
          </div>
        </section>
        
        <section className="resume-section skills">
          <h2>SKILLS</h2>
          
          <div className="skills-grid">
            <div className="skill-category">
              <h3>THEORETICAL PHYSICS</h3>
              <div className="skill-bar">
                <div className="skill-level" style={{ width: '90%' }}></div>
              </div>
            </div>
            
            <div className="skill-category">
              <h3>MATHEMATICAL MODELING</h3>
              <div className="skill-bar">
                <div className="skill-level" style={{ width: '85%' }}></div>
              </div>
            </div>
            
            <div className="skill-category">
              <h3>SCIENTIFIC WRITING</h3>
              <div className="skill-bar">
                <div className="skill-level" style={{ width: '95%' }}></div>
              </div>
            </div>
            
            <div className="skill-category">
              <h3>DATA ANALYSIS</h3>
              <div className="skill-bar">
                <div className="skill-level" style={{ width: '90%' }}></div>
              </div>
            </div>
          </div>
        </section>
        
        <section className="resume-section languages">
          <h2>LANGUAGES</h2>
          
          <div className="languages-grid">
            <div className="language-item">
              <h3>ENGLISH</h3>
              <div className="language-bar">
                <div className="language-level" style={{ width: '100%' }}></div>
              </div>
            </div>
            
            <div className="language-item">
              <h3>FRENCH</h3>
              <div className="language-bar">
                <div className="language-level" style={{ width: '100%' }}></div>
              </div>
            </div>
            
            <div className="language-item">
              <h3>MANDARIN</h3>
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

export default ResumeCv;
