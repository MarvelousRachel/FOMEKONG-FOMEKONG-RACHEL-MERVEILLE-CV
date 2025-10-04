#!/bin/bash

echo "🚀 Creating direct HTML solution and deploying to GitHub Pages..."

# Create docs directory if it doesn't exist
mkdir -p /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/docs

# Create a standalone HTML file that works without JavaScript
cat > /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/docs/index.html << 'EOL'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fomekong Fomekong Rachel Merveille - Portfolio</title>
  <meta name="description" content="Portfolio of Fomekong Fomekong Rachel Merveille">
  <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
  <meta http-equiv="Pragma" content="no-cache">
  <meta http-equiv="Expires" content="0">
  <style>
    /* Base styles */
    :root {
      --navy: #0a192f;
      --light-navy: #112240;
      --lightest-navy: #233554;
      --slate: #8892b0;
      --light-slate: #a8b2d1;
      --lightest-slate: #ccd6f6;
      --white: #e6f1ff;
      --green: #64ffda;
    }
    
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }
    
    body {
      font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
      background-color: var(--navy);
      color: var(--lightest-slate);
      line-height: 1.6;
    }
    
    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 0 2rem;
    }
    
    /* Navigation */
    nav {
      background-color: var(--light-navy);
      padding: 1rem 2rem;
      position: sticky;
      top: 0;
      z-index: 1000;
      border-bottom: 1px solid var(--lightest-navy);
    }
    
    .nav-container {
      max-width: 1200px;
      margin: 0 auto;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    
    .logo {
      font-size: 1.5rem;
      font-weight: bold;
      color: var(--green);
      text-decoration: none;
    }
    
    .nav-links {
      display: flex;
      gap: 2rem;
    }
    
    .nav-link {
      color: var(--lightest-slate);
      text-decoration: none;
      font-size: 1rem;
    }
    
    .nav-link:hover {
      color: var(--green);
    }
    
    /* Hero section */
    .hero {
      text-align: center;
      padding: 4rem 2rem;
    }
    
    .profile-container {
      width: 200px;
      height: 200px;
      border-radius: 50%;
      margin: 0 auto 2rem;
      overflow: hidden;
      border: 4px solid var(--green);
      box-shadow: 0 0 20px rgba(100, 255, 218, 0.3);
    }
    
    .profile-img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    
    .name {
      font-size: 3.5rem;
      color: var(--lightest-slate);
      margin-bottom: 1rem;
    }
    
    .title {
      font-size: 2rem;
      color: var(--green);
      margin-bottom: 2rem;
    }
    
    .bio {
      font-size: 1.3rem;
      color: var(--light-slate);
      line-height: 1.6;
      max-width: 800px;
      margin: 0 auto 3rem;
    }
    
    .button-container {
      display: flex;
      gap: 1rem;
      justify-content: center;
    }
    
    .button-primary {
      background-color: var(--green);
      color: var(--navy);
      padding: 1rem 2rem;
      border: none;
      border-radius: 5px;
      font-size: 1.1rem;
      cursor: pointer;
      text-decoration: none;
      display: inline-block;
    }
    
    .button-secondary {
      background-color: transparent;
      color: var(--green);
      padding: 1rem 2rem;
      border: 2px solid var(--green);
      border-radius: 5px;
      font-size: 1.1rem;
      cursor: pointer;
      text-decoration: none;
      display: inline-block;
    }
    
    /* Footer */
    footer {
      text-align: center;
      padding: 2rem;
      border-top: 1px solid var(--lightest-navy);
      margin-top: 4rem;
    }
    
    /* About section */
    .about {
      padding: 4rem 2rem;
    }
    
    .section-title {
      font-size: 3rem;
      color: var(--green);
      margin-bottom: 2rem;
    }
    
    .education-card {
      background-color: var(--light-navy);
      padding: 2rem;
      border-radius: 10px;
      margin-bottom: 2rem;
    }
    
    .education-title {
      color: var(--lightest-slate);
      font-size: 1.5rem;
      margin-bottom: 0.5rem;
    }
    
    .education-school {
      color: var(--green);
      margin-bottom: 0.5rem;
    }
    
    /* Skills section */
    .skills {
      padding: 4rem 2rem;
    }
    
    .skills-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
      gap: 1.5rem;
      margin-bottom: 3rem;
    }
    
    .skill-card {
      background-color: var(--light-navy);
      padding: 1.5rem;
      border-radius: 5px;
      border: 1px solid var(--lightest-navy);
    }
    
    .skill-name {
      font-size: 1.2rem;
      color: var(--white);
    }
    
    /* Mobile responsiveness */
    @media (max-width: 768px) {
      .nav-container {
        flex-direction: column;
        gap: 1rem;
      }
      
      .nav-links {
        flex-wrap: wrap;
        justify-content: center;
      }
      
      .name {
        font-size: 2.5rem;
      }
      
      .title {
        font-size: 1.5rem;
      }
      
      .button-container {
        flex-direction: column;
        align-items: center;
      }
    }
  </style>
</head>
<body>
  <nav>
    <div class="nav-container">
      <a href="#home" class="logo">Fomekong Fomekong Rachel Merveille</a>
      <div class="nav-links">
        <a href="#home" class="nav-link">Home</a>
        <a href="#about" class="nav-link">About</a>
        <a href="#cv" class="nav-link">CV</a>
        <a href="#skills" class="nav-link">Skills</a>
        <a href="#gallery" class="nav-link">Gallery</a>
        <a href="#contact" class="nav-link">Contact</a>
      </div>
    </div>
  </nav>
  
  <main>
    <!-- Home Section -->
    <section id="home" class="hero">
      <div class="profile-container">
        <img src="profile1.jpg" alt="Fomekong Fomekong Rachel Merveille" class="profile-img" onerror="this.onerror=null; this.style.display='none'; this.parentElement.innerHTML='<div style=\"width:100%;height:100%;background-color:#64ffda;display:flex;align-items:center;justify-content:center;font-size:4rem;font-weight:bold;color:#0a192f\">RF</div>'">
      </div>
      
      <h1 class="name">Fomekong Fomekong Rachel Merveille</h1>
      <h2 class="title">PhD Candidate in Marine Engineering</h2>
      <p class="bio">
        Self-motivated researcher with expertise in underwater robotics, SLAM (Simultaneous Localization and Mapping), 
        deep learning, and sensor fusion. Specializing in improving navigation and perception capabilities of 
        unmanned underwater vehicles (UUVs) in complex underwater environments.
      </p>
      <div class="button-container">
        <a href="#skills" class="button-primary">View Skills</a>
        <a href="#cv" class="button-secondary">View CV</a>
      </div>
    </section>
    
    <!-- About Section -->
    <section id="about" class="about container">
      <h2 class="section-title">About Me</h2>
      <div class="about-content">
        <p style="margin-bottom: 2rem">
          Competent and self-driven researcher with a focus on robotics, sensor fusion, SLAM, and robot control systems. 
          Extensive background in the development of both terrestrial and underwater robots, with practical knowledge of 
          kinematics, motor control, navigation, and localization methods like ORB-SLAM3 and vSLAM. Competent in ROS/ROS2, 
          C++, and Python, with a solid academic background in sensor integration and deep learning.
        </p>
        
        <p style="margin-bottom: 2rem">
          Enthusiastic about using state-of-the-art technologies to improve navigation and robotic systems in challenging 
          environments. Currently working toward a PhD with the goal of improving robotic autonomy through multi-sensor 
          fusion and underwater navigation. Experienced in developing complete SLAM pipelines integrating SuperPoint/SuperGlue 
          feature matching, adaptive voxel mapping with Open3D, and water current compensation algorithms.
        </p>
        
        <p style="margin-bottom: 2rem">
          Published researcher with multiple papers in prestigious journals including Sensors. Holder of utility model patent 
          for non-contact temperature detection device. Recipient of Guangdong Provincial Scholarship (2022, 2023) and 
          Zhejiang Provincial Scholarship for Excellent International Students (2021). Successfully developed complete 
          underwater SLAM systems and conducted field testing of UUVs in laboratory environments.
        </p>

        <h3 style="color: var(--green); font-size: 2rem; margin-top: 3rem; margin-bottom: 1rem">Education</h3>
        <div class="education-card">
          <h4 class="education-title">PhD in Marine Engineering</h4>
          <p class="education-school">Guangdong Ocean University, China (Expected 2026)</p>
          <p>Specialization: Underwater Robotics, SLAM, Deep Learning, Sensor Fusion</p>
          <p>GPA: 86.9/100</p>
        </div>

        <div class="education-card">
          <h4 class="education-title">Master of Engineering in Control Engineering</h4>
          <p class="education-school">Huzhou University, China (2022)</p>
          <p>GPA: 80.6/100</p>
        </div>

        <div class="education-card">
          <h4 class="education-title">Bachelor of Science in Physics</h4>
          <p class="education-school">University of Yaoundé 1, Cameroon (2018)</p>
        </div>
      </div>
    </section>
    
    <!-- Skills Section -->
    <section id="skills" class="skills container">
      <h2 class="section-title">Technical Skills</h2>
      
      <h3 style="color: var(--lightest-slate); font-size: 1.8rem; margin-bottom: 1.5rem">Programming Languages</h3>
      <div class="skills-grid">
        <div class="skill-card"><span class="skill-name">Python</span></div>
        <div class="skill-card"><span class="skill-name">C++</span></div>
        <div class="skill-card"><span class="skill-name">MATLAB</span></div>
        <div class="skill-card"><span class="skill-name">ROS/ROS2</span></div>
        <div class="skill-card"><span class="skill-name">JavaScript</span></div>
        <div class="skill-card"><span class="skill-name">HTML/CSS</span></div>
        <div class="skill-card"><span class="skill-name">Node.js</span></div>
      </div>
      
      <h3 style="color: var(--lightest-slate); font-size: 1.8rem; margin-bottom: 1.5rem">Robotics & AI</h3>
      <div class="skills-grid">
        <div class="skill-card"><span class="skill-name">SLAM</span></div>
        <div class="skill-card"><span class="skill-name">Computer Vision</span></div>
        <div class="skill-card"><span class="skill-name">Sensor Fusion</span></div>
        <div class="skill-card"><span class="skill-name">Deep Learning</span></div>
        <div class="skill-card"><span class="skill-name">Path Planning</span></div>
        <div class="skill-card"><span class="skill-name">Control Systems</span></div>
        <div class="skill-card"><span class="skill-name">ROS Navigation</span></div>
      </div>
      
      <h3 style="color: var(--lightest-slate); font-size: 1.8rem; margin-bottom: 1.5rem">Tools & Frameworks</h3>
      <div class="skills-grid">
        <div class="skill-card"><span class="skill-name">TensorFlow</span></div>
        <div class="skill-card"><span class="skill-name">PyTorch</span></div>
        <div class="skill-card"><span class="skill-name">OpenCV</span></div>
        <div class="skill-card"><span class="skill-name">PCL</span></div>
        <div class="skill-card"><span class="skill-name">Git</span></div>
        <div class="skill-card"><span class="skill-name">Docker</span></div>
        <div class="skill-card"><span class="skill-name">Linux</span></div>
      </div>
    </section>
    
    <!-- CV Section -->
    <section id="cv" class="container" style="padding: 4rem 2rem">
      <h2 class="section-title">Curriculum Vitae</h2>
      
      <div style="margin-bottom: 4rem">
        <h3 style="color: var(--lightest-slate); font-size: 2rem; margin-bottom: 1.5rem">Research Experience</h3>
        
        <div class="education-card">
          <h4 class="education-title">PhD Researcher</h4>
          <p class="education-school">Guangdong Ocean University | 2022 - Present</p>
          <ul style="color: var(--light-slate); margin-top: 1rem; padding-left: 1.5rem; line-height: 1.6">
            <li>Developing underwater SLAM systems using vision-based sensors and deep learning</li>
            <li>Implementing feature matching algorithms for underwater environments</li>
            <li>Designing robust control systems for underwater vehicles</li>
            <li>Testing and validating SLAM pipelines in laboratory environments</li>
          </ul>
        </div>
        
        <div class="education-card">
          <h4 class="education-title">Research Assistant</h4>
          <p class="education-school">Huzhou University | 2020 - 2022</p>
          <ul style="color: var(--light-slate); margin-top: 1rem; padding-left: 1.5rem; line-height: 1.6">
            <li>Implemented computer vision algorithms for autonomous navigation</li>
            <li>Developed a non-contact temperature detection device</li>
            <li>Created navigation algorithms for mobile robots</li>
          </ul>
        </div>
      </div>
      
      <div style="margin-bottom: 4rem">
        <h3 style="color: var(--lightest-slate); font-size: 2rem; margin-bottom: 1.5rem">Publications</h3>
        
        <div class="education-card">
          <h4 class="education-title">Underwater Visual SLAM Using Feature Matching</h4>
          <p class="education-school">Sensors Journal | 2023</p>
          <p style="color: var(--light-slate); margin-top: 1rem">
            A novel approach to underwater visual SLAM using SuperPoint and SuperGlue feature matching,
            accounting for water turbidity and lighting variations.
          </p>
        </div>
        
        <div class="education-card">
          <h4 class="education-title">Multi-sensor Fusion for Robust Underwater Navigation</h4>
          <p class="education-school">IEEE Transactions on Robotics | 2022</p>
          <p style="color: var(--light-slate); margin-top: 1rem">
            A framework for fusing data from multiple sensors to enhance underwater navigation
            accuracy in challenging environments.
          </p>
        </div>
      </div>
      
      <div>
        <h3 style="color: var(--lightest-slate); font-size: 2rem; margin-bottom: 1.5rem">Awards & Patents</h3>
        
        <div class="education-card">
          <h4 class="education-title">Guangdong Provincial Scholarship</h4>
          <p class="education-school">2022, 2023</p>
          <p style="color: var(--light-slate); margin-top: 1rem">
            Awarded for excellence in research and academic performance.
          </p>
        </div>
        
        <div class="education-card">
          <h4 class="education-title">Zhejiang Provincial Scholarship for Excellent International Students</h4>
          <p class="education-school">2021</p>
          <p style="color: var(--light-slate); margin-top: 1rem">
            Recognized for outstanding academic achievements.
          </p>
        </div>
        
        <div class="education-card">
          <h4 class="education-title">Utility Model Patent</h4>
          <p class="education-school">Non-contact Temperature Detection Device | 2021</p>
          <p style="color: var(--light-slate); margin-top: 1rem">
            Developed and patented a device for accurate non-contact temperature measurement.
          </p>
        </div>
      </div>
    </section>
    
    <!-- Gallery Section -->
    <section id="gallery" class="container" style="padding: 4rem 2rem">
      <h2 class="section-title">Project Gallery</h2>
      
      <div style="display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 2rem">
        <!-- Project 1 -->
        <div style="background-color: var(--light-navy); border-radius: 10px; overflow: hidden; box-shadow: 0 10px 30px -15px rgba(2,12,27,0.7)">
          <div style="height: 200px; overflow: hidden">
            <img src="profile1.jpg" alt="Underwater SLAM" style="width: 100%; height: 100%; object-fit: cover" onerror="this.onerror=null; this.parentElement.innerHTML='<div style=\"height:200px;display:flex;align-items:center;justify-content:center;background-color:#0a192f;color:#e6f1ff;\">Underwater SLAM</div>'">
          </div>
          <div style="padding: 1.5rem">
            <h3 style="color: var(--white); margin-bottom: 0.75rem">Underwater SLAM</h3>
            <p style="color: var(--light-slate)">
              Implementation of a visual SLAM system for underwater robots using custom feature matching.
            </p>
          </div>
        </div>
        
        <!-- Project 2 -->
        <div style="background-color: var(--light-navy); border-radius: 10px; overflow: hidden; box-shadow: 0 10px 30px -15px rgba(2,12,27,0.7)">
          <div style="height: 200px; overflow: hidden">
            <img src="profile2.jpg" alt="Multi-sensor Fusion" style="width: 100%; height: 100%; object-fit: cover" onerror="this.onerror=null; this.parentElement.innerHTML='<div style=\"height:200px;display:flex;align-items:center;justify-content:center;background-color:#0a192f;color:#e6f1ff;\">Multi-sensor Fusion</div>'">
          </div>
          <div style="padding: 1.5rem">
            <h3 style="color: var(--white); margin-bottom: 0.75rem">Multi-sensor Fusion</h3>
            <p style="color: var(--light-slate)">
              A system that combines data from cameras, IMUs, and sonar for improved underwater navigation.
            </p>
          </div>
        </div>
        
        <!-- Project 3 -->
        <div style="background-color: var(--light-navy); border-radius: 10px; overflow: hidden; box-shadow: 0 10px 30px -15px rgba(2,12,27,0.7)">
          <div style="height: 200px; overflow: hidden">
            <img src="profile3.jpg" alt="AUV Development" style="width: 100%; height: 100%; object-fit: cover" onerror="this.onerror=null; this.parentElement.innerHTML='<div style=\"height:200px;display:flex;align-items:center;justify-content:center;background-color:#0a192f;color:#e6f1ff;\">AUV Development</div>'">
          </div>
          <div style="padding: 1.5rem">
            <h3 style="color: var(--white); margin-bottom: 0.75rem">AUV Development</h3>
            <p style="color: var(--light-slate)">
              Design and implementation of autonomous underwater vehicle hardware and software.
            </p>
          </div>
        </div>
        
        <!-- Project 4 -->
        <div style="background-color: var(--light-navy); border-radius: 10px; overflow: hidden; box-shadow: 0 10px 30px -15px rgba(2,12,27,0.7)">
          <div style="height: 200px; overflow: hidden">
            <img src="profile4.jpg" alt="Vision-based Control" style="width: 100%; height: 100%; object-fit: cover" onerror="this.onerror=null; this.parentElement.innerHTML='<div style=\"height:200px;display:flex;align-items:center;justify-content:center;background-color:#0a192f;color:#e6f1ff;\">Vision-based Control</div>'">
          </div>
          <div style="padding: 1.5rem">
            <h3 style="color: var(--white); margin-bottom: 0.75rem">Vision-based Control</h3>
            <p style="color: var(--light-slate)">
              Control systems for underwater robots using visual feedback for precise positioning.
            </p>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Contact Section -->
    <section id="contact" class="container" style="padding: 4rem 2rem; text-align: center">
      <h2 class="section-title">Get In Touch</h2>
      <p style="font-size: 1.2rem; color: var(--light-slate); line-height: 1.8; max-width: 700px; margin: 0 auto 3rem">
        I'm currently looking for new opportunities in robotics research and engineering.
        Whether you have a question or just want to say hi, I'll get back to you!
      </p>
      
      <div style="background-color: var(--light-navy); padding: 2rem; border-radius: 10px; max-width: 500px; margin: 0 auto">
        <div style="margin-bottom: 1.5rem; text-align: left">
          <p style="color: var(--green); margin-bottom: 0.5rem">Email:</p>
          <p style="color: var(--white); font-size: 1.1rem">rachelmerveille@example.com</p>
        </div>
        <div style="margin-bottom: 1.5rem; text-align: left">
          <p style="color: var(--green); margin-bottom: 0.5rem">LinkedIn:</p>
          <p style="color: var(--white); font-size: 1.1rem">linkedin.com/in/rachel-merveille</p>
        </div>
        <div style="text-align: left">
          <p style="color: var(--green); margin-bottom: 0.5rem">GitHub:</p>
          <p style="color: var(--white); font-size: 1.1rem">github.com/MarvelousRachel</p>
        </div>
      </div>
    </section>
  </main>
  
  <footer>
    <p>© <script>document.write(new Date().getFullYear())</script> Fomekong Fomekong Rachel Merveille. All Rights Reserved.</p>
  </footer>

  <script>
    // Simple JavaScript for smooth scrolling
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
      anchor.addEventListener('click', function(e) {
        e.preventDefault();
        
        const targetId = this.getAttribute('href');
        const targetElement = document.querySelector(targetId);
        
        if (targetElement) {
          window.scrollTo({
            top: targetElement.offsetTop - 70,
            behavior: 'smooth'
          });
          
          // Update URL hash without jumping
          history.pushState(null, null, targetId);
        }
      });
    });
    
    // Handle initial hash in URL
    window.addEventListener('load', function() {
      if (window.location.hash) {
        const targetElement = document.querySelector(window.location.hash);
        if (targetElement) {
          setTimeout(() => {
            window.scrollTo({
              top: targetElement.offsetTop - 70,
              behavior: 'smooth'
            });
          }, 100);
        }
      }
    });
    
    // Log for debugging
    console.log('Static Portfolio loaded successfully');
  </script>
</body>
</html>
EOL

# Copy images to the docs directory
echo "📸 Copying images to the docs directory..."
cp -R /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/public/*.jpg /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/docs/
cp /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/public/*.svg /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/docs/

# Create an empty .nojekyll file in the docs folder
touch /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/docs/.nojekyll

# Create a 404 page that redirects to index.html
cat > /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/docs/404.html << 'EOL'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Redirecting...</title>
  <meta http-equiv="refresh" content="0;URL='/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/'">
  <script>
    window.location.href = "/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/";
  </script>
  <style>
    body {
      font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
      background-color: #0a192f;
      color: #e6f1ff;
      text-align: center;
      padding-top: 50px;
    }
    .container {
      max-width: 600px;
      margin: 0 auto;
      padding: 2rem;
      background-color: #112240;
      border-radius: 10px;
    }
    a {
      color: #64ffda;
      text-decoration: none;
    }
    a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Redirecting to Home Page</h1>
    <p>If you are not redirected automatically, <a href="/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/">click here</a>.</p>
  </div>
</body>
</html>
EOL

# List files in the docs directory
echo "📋 Listing files in the docs directory:"
ls -la /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/docs

echo "✅ HTML-only solution created successfully!"
echo "🔍 This solution uses a pure HTML/CSS implementation without any JavaScript frameworks"
echo ""
echo "🚀 To deploy this to GitHub Pages, run the following commands:"
echo ""
echo "cd /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\\ FOMEKONG\\ /portfolio"
echo "git add docs"
echo "git commit -m \"Add static HTML version of portfolio\""
echo "git push origin main"
echo ""
echo "📚 GitHub Pages Setup Instructions:"
echo "1. Go to your GitHub repository: https://github.com/MarvelousRachel/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV"
echo "2. Click on 'Settings'"
echo "3. Go to 'Pages' in the left sidebar"
echo "4. Under 'Source', select 'Deploy from a branch'"
echo "5. Select 'main' branch and '/docs' folder"
echo "6. Click 'Save'"
echo ""
echo "🌐 Your site will be available at: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
echo "⏱️ Allow 5-10 minutes for GitHub Pages to update"
echo ""
echo "🔄 After deploying:"
echo "1. Clear your browser cache completely (Cmd+Shift+Delete on Mac)"
echo "2. Try accessing in incognito/private mode"
echo "3. The HTML-only solution should work even if the JavaScript version doesn't"
