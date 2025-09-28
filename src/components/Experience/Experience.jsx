import React, { useState } from 'react';
import './Experience.css';

const Experience = () => {
  const [activeTab, setActiveTab] = useState(0);

  const experiences = [
    {
      company: "Key Laboratory of Underwater Robotics",
      title: "Underwater Robotics Researcher",
      location: "Guangdong Ocean University, Zhanjiang, China",
      duration: "2022 - Present",
      responsibilities: [
        "Lead the development of underwater SLAM systems, integrating deep feature extraction and multi-detector fusion (Faster R-CNN, DETR, YOLOv8)",
        "Develop visual-inertial SLAM algorithms combining IMU data and visual inputs for accurate pose estimation and trajectory refinement",
        "Implement incremental 3D reconstruction using Open3D, optimizing mapping accuracy in real-time",
        "Design and implement a complete underwater SLAM pipeline integrating SuperGlue/SuperPoint networks for robust feature matching",
        "Develop adaptive voxel mapping with dynamic resolution based on environment complexity and water current compensation algorithms",
        "Conduct field testing and operation of UUVs in lab pool environments to validate SLAM system performance",
        "Assist in teaching master students in simultaneous localization and mapping techniques"
      ]
    },
    {
      company: "Huzhou University",
      title: "Graduate Research Student",
      location: "Huzhou, Zhejiang, China",
      duration: "08/2019 - 2022",
      responsibilities: [
        "Researched robotic automation and 3D printing technologies at the Key Laboratory of Electronics",
        "Participated in practical projects at Gaoyuangjin Machinery Technology Co., Ltd, gaining hands-on experience in mold part production",
        "Successfully completed a graduation project on robotized solutions for injection molding machines",
        "Assisted in automation projects related to conveyor roller construction and machine building",
        "Published research on Industry 4.0's impact on robotics in North American Academic Research Journal",
        "Led 3D printer assembly and 3D object printing projects in the university laboratory"
      ]
    },
    {
      company: "University of Yaoundé 1",
      title: "Undergraduate Student",
      location: "Yaoundé, Cameroon",
      duration: "08/2018 - 09/2019",
      responsibilities: [
        "Conducted a comprehensive review on \"Evaluation of the Woschni Model for the Variation of Variable Temperature Walls\" with a doctoral student",
        "Co-designed and managed the I-Tech Educk project platform, connecting parents and teachers for home tutoring services",
        "Taught the basics of mechanical physics to final-year students",
        "Managed the platform's social media presence, ensuring effective communication with stakeholders"
      ]
    }
    
  ];

  return (
    <section id="experience" className="experience-section">
      <div className="experience-container">
        <div className="section-title">
          <h2>Where I've Worked</h2>
          <p>My professional journey spanning research, development, and academia</p>
        </div>
        
        <div className="experience-content">
          <div className="tabs">
            {experiences.map((exp, index) => (
              <button 
                key={index}
                className={`tab-button ${activeTab === index ? 'active' : ''}`}
                onClick={() => setActiveTab(index)}
              >
                {exp.company.split(' ')[0]}
              </button>
            ))}
          </div>
          
          <div className="tab-content">
            <div className="experience-header">
              <h3>
                <span className="job-title">{experiences[activeTab].title}</span>
                <span className="company"> @ {experiences[activeTab].company}</span>
              </h3>
              <p className="duration">{experiences[activeTab].duration}</p>
              <p className="location">{experiences[activeTab].location}</p>
            </div>
            
            <ul className="responsibilities">
              {experiences[activeTab].responsibilities.map((item, index) => (
                <li key={index}>{item}</li>
              ))}
            </ul>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Experience;
