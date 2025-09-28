import './About.css';

const About = () => {
  return (
    <div className="about-container">
      <h1>About Me</h1>
      
      <div className="about-content">
        <div className="about-text">
          <p>
            I am a PhD candidate in Marine Engineering at Guangdong Ocean University, specializing in underwater robotics, 
            SLAM (Simultaneous Localization and Mapping), deep learning, and sensor fusion. My research focuses on improving 
            the navigation and perception capabilities of unmanned underwater vehicles (UUVs) in complex underwater environments.
          </p>
          
          <p>
            As a competent and self-driven researcher, I have extensive background in the development of both terrestrial 
            and underwater robots, with practical knowledge of kinematics, motor control, navigation, and localization methods. 
            I am proficient in ROS/ROS2, C++, and Python, with a solid academic background in sensor integration and deep learning.
          </p>
          
          <p>
            I have successfully implemented various SLAM systems, including ORB-SLAM3 and NICE-SLAM, and have developed 
            point cloud processing pipelines using Open3D and Python. My work includes developing a complete underwater SLAM pipeline 
            integrating advanced techniques like SuperGlue/SuperPoint feature matching, adaptive voxel-based mapping, 
            and water current compensation algorithms.
          </p>
          
          <p>
            I am enthusiastic about using state-of-the-art technologies to improve navigation and robotic systems in challenging environments. 
            My goal is to advance robotic autonomy through multi-sensor fusion and underwater navigation, contributing 
            to the field of underwater robotics through innovative approaches that combine traditional techniques with 
            deep learning methods.
          </p>
        </div>
        
        <div className="about-image">
          <div className="about-photo-container">
            <img 
              src="/profile.jpg" 
              alt="Fomekong Fomekong Rachel Merveille" 
              className="about-profile-image"
              onError={(e) => {
                e.target.style.display = 'none';
                e.target.nextSibling.style.display = 'flex';
              }}
            />
            <div className="about-image-placeholder">
              <span>👤</span>
              <p>Add profile.jpg to public/</p>
            </div>
          </div>
          <div className="personal-details">
            <h3>Fomekong Fomekong Rachel Merveille</h3>
            <p>PhD Candidate in Marine Engineering</p>
            <p>Guangdong Ocean University, China</p>
          </div>
        </div>
      </div>
      
      <div className="education-section">
        <h2>Education</h2>
        <div className="education-item">
          <h3>PhD in Marine Engineering (Underwater Robotics, SLAM, Deep Learning, Sensor Fusion)</h3>
          <p>Guangdong Ocean University, Zhanjiang, Guangdong, China</p>
          <p className="timeline">Expected 2026</p>
          <p>Thesis: Comprehensive Enhancement of Underwater UUV Navigation via Visual-Lidar SLAM: A Multi-Sensor and AI-Integrated Approach</p>
          <p>GPA: 86.9/100</p>
          <p>Relevant Coursework: Advanced Robotics, Control Systems, Sensor Fusion, Applied Mathematics for Robotics</p>
        </div>
        
        <div className="education-item">
          <h3>Master of Engineering in Control Engineering</h3>
          <p>Huzhou University, Huzhou, Zhejiang, China</p>
          <p className="timeline">Graduated 2022</p>
          <p>Thesis: Enhancing Manufacturing Efficiency: A New Robotic Arm Design for Injection Molding with Improved Adaptability and Precision</p>
          <p>GPA: 80.6/100</p>
        </div>
        
        <div className="education-item">
          <h3>Bachelor of Science in Physics (Fundamental Physics)</h3>
          <p>University of Yaoundé 1, Yaoundé, Cameroon</p>
          <p className="timeline">Graduated 2018</p>
        </div>
      </div>
      
      <div className="research-interests">
        <h2>Research Interests</h2>
        <ul>
          <li>Underwater SLAM and Navigation</li>
          <li>Deep Learning for Environmental Perception</li>
          <li>Sensor Fusion (LiDAR, IMU, Camera, DVL)</li>
          <li>3D Point Cloud Processing and Mapping</li>
          <li>Robot Operating System (ROS) Development</li>
          <li>Computer Vision for Underwater Applications</li>
        </ul>
      </div>
    </div>
  );
};
