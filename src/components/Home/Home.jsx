import './Home.css';

const Home = () => {
  return (
    <div className="home-container">
      <div className="hero-section">
        <div className="hero-content">
          <h1>Fomekong Fomekong Rachel Merveille</h1>
          <h2>PhD Candidate in Marine Engineering</h2>
          <p>Self-motivated researcher with expertise in underwater robotics, SLAM, deep learning, and sensor fusion</p>
          <div className="hero-buttons">
            <a href="#contact" className="btn primary-btn">Contact Me</a>
            <a href="#projects" className="btn secondary-btn">View Projects</a>
          </div>
        </div>
        <div className="hero-image">
          <div className="profile-image-container">
            <img 
              src="/profile.jpg" 
              alt="Fomekong Fomekong Rachel Merveille" 
              className="profile-image"
              onError={(e) => {
                e.target.style.display = 'none';
                e.target.nextSibling.style.display = 'flex';
              }}
            />
            <div className="profile-placeholder">
              <span>👤</span>
              <p>Add your photo as<br/>profile.jpg in public/</p>
            </div>
          </div>
        </div>
      </div>
      
      <div className="expertise-section">
        <h2>Areas of Expertise</h2>
        <div className="expertise-grid">
          <div className="expertise-card">
            <h3>Underwater SLAM</h3>
            <p>Developing advanced solutions for underwater navigation and mapping</p>
          </div>
          <div className="expertise-card">
            <h3>Deep Learning</h3>
            <p>Applying neural networks to enhance environmental perception</p>
          </div>
          <div className="expertise-card">
            <h3>Sensor Fusion</h3>
            <p>Integrating data from multiple sensors for robust positioning</p>
          </div>
        </div>
      </div>
      
      <div className="featured-section">
        <h2>Featured Research</h2>
        <div className="featured-card">
          <h3>Enhancing Underwater SLAM Navigation</h3>
          <p>A comprehensive review of deep learning integration for improved underwater navigation and perception.</p>
          <a href="#publications" className="read-more">Read Publication →</a>
        </div>
      </div>
    </div>
  );
};

export default Home;
