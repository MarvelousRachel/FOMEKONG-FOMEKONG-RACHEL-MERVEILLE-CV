import './Skills.css';

const Skills = () => {
  const technicalSkills = [
    {
      category: "SLAM & Navigation",
      skills: ["ORB-SLAM3", "NICE-SLAM", "Visual-Lidar SLAM", "Pose Graph Optimization (g2o)", "SuperPoint/SuperGlue", "Loop Closure Detection", "Custom SLAM Pipeline Development"]
    },
    {
      category: "Deep Learning",
      skills: ["PyTorch", "TensorFlow", "CNNs", "RNNs", "LSTMs", "GANs", "Reinforcement Learning", "Model Development", "Multi-class Classification"]
    },
    {
      category: "Sensor Fusion",
      skills: ["LiDAR", "IMU", "Camera", "DVL", "Sonar Integration", "Visual-inertial-depth Fusion", "Multi-stage Feature Matching"]
    },
    {
      category: "ROS & Robot Control",
      skills: ["ROS/ROS2", "RViz", "rqt", "Gazebo", "ROS2 Control Framework", "Launch Files", "URDF", "Message Handling"]
    },
    {
      category: "Programming & Tools",
      skills: ["Python", "C++", "MATLAB", "Arduino", "Ubuntu", "Git", "Docker", "VS Code"]
    },
    {
      category: "3D Data Processing",
      skills: ["Open3D", "Point Cloud Processing", "Voxel Mapping", "3D Reconstruction", "Adaptive Voxel Downsampling"]
    },
    {
      category: "Computer Vision",
      skills: ["OpenCV", "Image Classification", "Object Detection", "Feature Extraction", "Image Enhancement (CLAHE, Saliency)", "Turbidity-adaptive Preprocessing"]
    },
    {
      category: "Kinematics & Motion",
      skills: ["Robot Kinematics", "Differential Drive Control", "Motion Control", "Velocity Controllers", "Forward Kinematics"]
    },
    {
      category: "3D Design & Modeling",
      skills: ["Autodesk 123Design", "Fusion 360", "SolidWorks", "AutoCAD", "URDF Models"]
    },
    {
      category: "Underwater Technologies",
      skills: ["UUV Navigation", "Water Current Compensation", "Turbidity-adaptive Imaging", "Underwater Feature Matching"]
    }
  ];

  const softSkills = [
    "Problem Solving",
    "Research Methodology",
    "Time Management",
    "Project Planning",
    "Team Building",
    "Technical Writing",
    "Data Interpretation",
    "Progress Reporting",
    "Strategic Thinking",
    "Multitasking",
    "Financial Management",
    "Proposal Writing",
    "Teaching & Mentoring",
    "System Troubleshooting"
  ];

  return (
    <div className="skills-container">
      <h1>Skills</h1>
      
      <div className="skills-intro">
        <p>
          Throughout my academic and professional career, I've developed a diverse set of technical and soft skills
          that enable me to conduct innovative research and develop advanced solutions for underwater robotics and navigation.
        </p>
      </div>
      
      <div className="skills-section">
        <h2>Technical Skills</h2>
        <div className="technical-skills">
          {technicalSkills.map((skillGroup, index) => (
            <div className="skill-group" key={index}>
              <h3>{skillGroup.category}</h3>
              <ul>
                {skillGroup.skills.map((skill, idx) => (
                  <li key={idx}>{skill}</li>
                ))}
              </ul>
            </div>
          ))}
        </div>
      </div>
      
      <div className="skills-section">
        <h2>Soft Skills</h2>
        <div className="soft-skills">
          {softSkills.map((skill, index) => (
            <div className="soft-skill" key={index}>
              {skill}
            </div>
          ))}
        </div>
      </div>
      
      <div className="skills-section">
        <h2>Languages</h2>
        <div className="languages">
          <div className="language">
            <div className="language-name">English</div>
            <div className="language-level">
              <div className="level-bar">
                <div className="level-fill" style={{ width: '100%' }}></div>
              </div>
              <span>Fluent</span>
            </div>
          </div>
          <div className="language">
            <div className="language-name">French</div>
            <div className="language-level">
              <div className="level-bar">
                <div className="level-fill" style={{ width: '100%' }}></div>
              </div>
              <span>Fluent</span>
            </div>
          </div>
          <div className="language">
            <div className="language-name">Mandarin</div>
            <div className="language-level">
              <div className="level-bar">
                <div className="level-fill" style={{ width: '50%' }}></div>
              </div>
              <span>Intermediate (HSK 3)</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Skills;
