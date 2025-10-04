#!/bin/bash

echo "🛠️ Creating a simplified fix for blank pages..."

# Clean and prepare
echo "🧹 Cleaning workspace..."
rm -rf node_modules/.cache
rm -rf dist

# Install dependencies
echo "📦 Installing dependencies..."
npm ci

# Fix the assetUtils.js file
echo "🔧 Fixing asset utilities..."
mv /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/src/utils/assetUtils.js.new \
   /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/src/utils/assetUtils.js

# Simplified App.jsx that doesn't use JSX in utils
echo "🔄 Creating simplified App.jsx..."
cat > /Users/fomekongrachelmarvelous/Desktop/FOMEKONG\ FOMEKONG\ /portfolio/src/App.jsx << 'EOL'
import { HashRouter as Router, Routes, Route, Link } from 'react-router-dom';
import { getAssetPath } from './utils/assetUtils';
import './App.css';

// Simple Navbar component
const Navbar = () => (
  <nav style={{
    backgroundColor: '#112240',
    padding: '1rem 2rem',
    position: 'sticky',
    top: 0,
    zIndex: 1000,
    borderBottom: '1px solid #233554'
  }}>
    <div style={{
      maxWidth: '1200px',
      margin: '0 auto',
      display: 'flex',
      justifyContent: 'space-between',
      alignItems: 'center'
    }}>
      <Link to="/" style={{
        fontSize: '1.5rem',
        fontWeight: 'bold',
        color: '#64ffda',
        textDecoration: 'none'
      }}>
        Fomekong Fomekong Rachel Merveille
      </Link>
      <div style={{display: 'flex', gap: '2rem'}}>
        <Link to="/" style={{color: '#ccd6f6', textDecoration: 'none', fontSize: '1rem'}}>Home</Link>
        <Link to="/about" style={{color: '#ccd6f6', textDecoration: 'none', fontSize: '1rem'}}>About</Link>
        <Link to="/cv" style={{color: '#ccd6f6', textDecoration: 'none', fontSize: '1rem'}}>CV</Link>
        <Link to="/skills" style={{color: '#ccd6f6', textDecoration: 'none', fontSize: '1rem'}}>Skills</Link>
        <Link to="/gallery" style={{color: '#ccd6f6', textDecoration: 'none', fontSize: '1rem'}}>Gallery</Link>
        <Link to="/contact" style={{color: '#ccd6f6', textDecoration: 'none', fontSize: '1rem'}}>Contact</Link>
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
    
    <div style={{marginBottom: '3rem'}}>
      <h2 style={{color: '#ccd6f6', fontSize: '1.8rem', marginBottom: '1.5rem'}}>Programming Languages</h2>
      <div style={{display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(250px, 1fr))', gap: '1.5rem'}}>
        {['Python', 'C++', 'MATLAB', 'ROS/ROS2', 'JavaScript', 'HTML/CSS', 'Node.js'].map(skill => (
          <div key={skill} style={{
            backgroundColor: '#112240',
            padding: '1.5rem',
            borderRadius: '5px',
            border: '1px solid #233554'
          }}>
            <span style={{fontSize: '1.2rem', color: '#e6f1ff'}}>{skill}</span>
          </div>
        ))}
      </div>
    </div>
    
    <div style={{marginBottom: '3rem'}}>
      <h2 style={{color: '#ccd6f6', fontSize: '1.8rem', marginBottom: '1.5rem'}}>Robotics & AI</h2>
      <div style={{display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(250px, 1fr))', gap: '1.5rem'}}>
        {['SLAM', 'Computer Vision', 'Sensor Fusion', 'Deep Learning', 'Path Planning', 'Control Systems', 'ROS Navigation'].map(skill => (
          <div key={skill} style={{
            backgroundColor: '#112240',
            padding: '1.5rem',
            borderRadius: '5px',
            border: '1px solid #233554'
          }}>
            <span style={{fontSize: '1.2rem', color: '#e6f1ff'}}>{skill}</span>
          </div>
        ))}
      </div>
    </div>
    
    <div style={{marginBottom: '3rem'}}>
      <h2 style={{color: '#ccd6f6', fontSize: '1.8rem', marginBottom: '1.5rem'}}>Tools & Frameworks</h2>
      <div style={{display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(250px, 1fr))', gap: '1.5rem'}}>
        {['TensorFlow', 'PyTorch', 'OpenCV', 'PCL', 'Git', 'Docker', 'Linux', 'RViz', 'Gazebo'].map(skill => (
          <div key={skill} style={{
            backgroundColor: '#112240',
            padding: '1.5rem',
            borderRadius: '5px',
            border: '1px solid #233554'
          }}>
            <span style={{fontSize: '1.2rem', color: '#e6f1ff'}}>{skill}</span>
          </div>
        ))}
      </div>
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
    <p style={{
      fontSize: '1.2rem',
      color: '#a8b2d1',
      lineHeight: '1.8',
      maxWidth: '700px',
      margin: '0 auto 3rem'
    }}>
      I'm currently looking for new opportunities in robotics research and engineering.
      Whether you have a question or just want to say hi, I'll get back to you!
    </p>
    
    <div style={{
      backgroundColor: '#112240',
      padding: '2rem',
      borderRadius: '10px',
      maxWidth: '500px',
      margin: '0 auto'
    }}>
      <div style={{marginBottom: '1.5rem', textAlign: 'left'}}>
        <p style={{color: '#64ffda', marginBottom: '0.5rem'}}>Email:</p>
        <p style={{color: '#e6f1ff', fontSize: '1.1rem'}}>rachelmerveille@example.com</p>
      </div>
      <div style={{marginBottom: '1.5rem', textAlign: 'left'}}>
        <p style={{color: '#64ffda', marginBottom: '0.5rem'}}>LinkedIn:</p>
        <p style={{color: '#e6f1ff', fontSize: '1.1rem'}}>linkedin.com/in/rachel-merveille</p>
      </div>
      <div style={{textAlign: 'left'}}>
        <p style={{color: '#64ffda', marginBottom: '0.5rem'}}>GitHub:</p>
        <p style={{color: '#e6f1ff', fontSize: '1.1rem'}}>github.com/MarvelousRachel</p>
      </div>
    </div>
  </div>
);

// Simple CV component
const CV = () => (
  <div style={{
    maxWidth: '1200px',
    margin: '0 auto',
    padding: '4rem 2rem'
  }}>
    <h1 style={{fontSize: '3rem', color: '#64ffda', marginBottom: '2rem'}}>Curriculum Vitae</h1>
    
    <div style={{marginBottom: '4rem'}}>
      <h2 style={{color: '#ccd6f6', fontSize: '2rem', marginBottom: '1.5rem'}}>Research Experience</h2>
      
      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px', marginBottom: '2rem'}}>
        <h3 style={{color: '#e6f1ff', fontSize: '1.5rem'}}>PhD Researcher</h3>
        <p style={{color: '#64ffda'}}>Guangdong Ocean University | 2022 - Present</p>
        <ul style={{color: '#a8b2d1', marginTop: '1rem', paddingLeft: '1.5rem', lineHeight: '1.6'}}>
          <li>Developing underwater SLAM systems using vision-based sensors and deep learning</li>
          <li>Implementing feature matching algorithms for underwater environments</li>
          <li>Designing robust control systems for underwater vehicles</li>
          <li>Testing and validating SLAM pipelines in laboratory environments</li>
        </ul>
      </div>
      
      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px'}}>
        <h3 style={{color: '#e6f1ff', fontSize: '1.5rem'}}>Research Assistant</h3>
        <p style={{color: '#64ffda'}}>Huzhou University | 2020 - 2022</p>
        <ul style={{color: '#a8b2d1', marginTop: '1rem', paddingLeft: '1.5rem', lineHeight: '1.6'}}>
          <li>Implemented computer vision algorithms for autonomous navigation</li>
          <li>Developed a non-contact temperature detection device</li>
          <li>Created navigation algorithms for mobile robots</li>
        </ul>
      </div>
    </div>
    
    <div style={{marginBottom: '4rem'}}>
      <h2 style={{color: '#ccd6f6', fontSize: '2rem', marginBottom: '1.5rem'}}>Publications</h2>
      
      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px', marginBottom: '2rem'}}>
        <h3 style={{color: '#e6f1ff', fontSize: '1.5rem'}}>Underwater Visual SLAM Using Feature Matching</h3>
        <p style={{color: '#64ffda'}}>Sensors Journal | 2023</p>
        <p style={{color: '#a8b2d1', marginTop: '1rem'}}>
          A novel approach to underwater visual SLAM using SuperPoint and SuperGlue feature matching,
          accounting for water turbidity and lighting variations.
        </p>
      </div>
      
      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px'}}>
        <h3 style={{color: '#e6f1ff', fontSize: '1.5rem'}}>Multi-sensor Fusion for Robust Underwater Navigation</h3>
        <p style={{color: '#64ffda'}}>IEEE Transactions on Robotics | 2022</p>
        <p style={{color: '#a8b2d1', marginTop: '1rem'}}>
          A framework for fusing data from multiple sensors to enhance underwater navigation
          accuracy in challenging environments.
        </p>
      </div>
    </div>
    
    <div>
      <h2 style={{color: '#ccd6f6', fontSize: '2rem', marginBottom: '1.5rem'}}>Awards & Patents</h2>
      
      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px', marginBottom: '2rem'}}>
        <h3 style={{color: '#e6f1ff', fontSize: '1.5rem'}}>Guangdong Provincial Scholarship</h3>
        <p style={{color: '#64ffda'}}>2022, 2023</p>
        <p style={{color: '#a8b2d1', marginTop: '1rem'}}>
          Awarded for excellence in research and academic performance.
        </p>
      </div>
      
      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px', marginBottom: '2rem'}}>
        <h3 style={{color: '#e6f1ff', fontSize: '1.5rem'}}>Zhejiang Provincial Scholarship for Excellent International Students</h3>
        <p style={{color: '#64ffda'}}>2021</p>
        <p style={{color: '#a8b2d1', marginTop: '1rem'}}>
          Recognized for outstanding academic achievements.
        </p>
      </div>
      
      <div style={{backgroundColor: '#112240', padding: '2rem', borderRadius: '10px'}}>
        <h3 style={{color: '#e6f1ff', fontSize: '1.5rem'}}>Utility Model Patent</h3>
        <p style={{color: '#64ffda'}}>Non-contact Temperature Detection Device | 2021</p>
        <p style={{color: '#a8b2d1', marginTop: '1rem'}}>
          Developed and patented a device for accurate non-contact temperature measurement.
        </p>
      </div>
    </div>
  </div>
);

// Simple Gallery component
const Gallery = () => {
  return (
    <div style={{
      maxWidth: '1200px',
      margin: '0 auto',
      padding: '4rem 2rem'
    }}>
      <h1 style={{fontSize: '3rem', color: '#64ffda', marginBottom: '2rem'}}>Project Gallery</h1>
      
      <div style={{
        display: 'grid',
        gridTemplateColumns: 'repeat(auto-fill, minmax(300px, 1fr))',
        gap: '2rem'
      }}>
        <div style={{
          backgroundColor: '#112240',
          borderRadius: '10px',
          overflow: 'hidden',
          boxShadow: '0 10px 30px -15px rgba(2,12,27,0.7)'
        }}>
          <div style={{height: '200px', overflow: 'hidden'}}>
            <img 
              src={getAssetPath('profile1.jpg')}
              alt="Underwater SLAM" 
              style={{
                width: '100%',
                height: '100%',
                objectFit: 'cover'
              }}
            />
          </div>
          <div style={{padding: '1.5rem'}}>
            <h3 style={{color: '#e6f1ff', marginBottom: '0.75rem'}}>Underwater SLAM</h3>
            <p style={{color: '#a8b2d1'}}>
              Implementation of a visual SLAM system for underwater robots using custom feature matching.
            </p>
          </div>
        </div>
        
        <div style={{
          backgroundColor: '#112240',
          borderRadius: '10px',
          overflow: 'hidden',
          boxShadow: '0 10px 30px -15px rgba(2,12,27,0.7)'
        }}>
          <div style={{height: '200px', overflow: 'hidden'}}>
            <img 
              src={getAssetPath('profile2.jpg')}
              alt="Multi-sensor Fusion" 
              style={{
                width: '100%',
                height: '100%',
                objectFit: 'cover'
              }}
            />
          </div>
          <div style={{padding: '1.5rem'}}>
            <h3 style={{color: '#e6f1ff', marginBottom: '0.75rem'}}>Multi-sensor Fusion</h3>
            <p style={{color: '#a8b2d1'}}>
              A system that combines data from cameras, IMUs, and sonar for improved underwater navigation.
            </p>
          </div>
        </div>
        
        <div style={{
          backgroundColor: '#112240',
          borderRadius: '10px',
          overflow: 'hidden',
          boxShadow: '0 10px 30px -15px rgba(2,12,27,0.7)'
        }}>
          <div style={{height: '200px', overflow: 'hidden'}}>
            <img 
              src={getAssetPath('profile3.jpg')}
              alt="AUV Development" 
              style={{
                width: '100%',
                height: '100%',
                objectFit: 'cover'
              }}
            />
          </div>
          <div style={{padding: '1.5rem'}}>
            <h3 style={{color: '#e6f1ff', marginBottom: '0.75rem'}}>AUV Development</h3>
            <p style={{color: '#a8b2d1'}}>
              Design and implementation of autonomous underwater vehicle hardware and software.
            </p>
          </div>
        </div>
        
        <div style={{
          backgroundColor: '#112240',
          borderRadius: '10px',
          overflow: 'hidden',
          boxShadow: '0 10px 30px -15px rgba(2,12,27,0.7)'
        }}>
          <div style={{height: '200px', overflow: 'hidden'}}>
            <img 
              src={getAssetPath('profile4.jpg')}
              alt="Vision-based Control" 
              style={{
                width: '100%',
                height: '100%',
                objectFit: 'cover'
              }}
            />
          </div>
          <div style={{padding: '1.5rem'}}>
            <h3 style={{color: '#e6f1ff', marginBottom: '0.75rem'}}>Vision-based Control</h3>
            <p style={{color: '#a8b2d1'}}>
              Control systems for underwater robots using visual feedback for precise positioning.
            </p>
          </div>
        </div>
      </div>
    </div>
  );
};

// Home component with direct image reference
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
        src={getAssetPath('profile1.jpg')}
        alt="Fomekong Fomekong Rachel Merveille" 
        onError={(e) => {
          e.target.style.display = 'none';
          const fallback = document.createElement('div');
          fallback.style.width = '100%';
          fallback.style.height = '100%';
          fallback.style.backgroundColor = '#64ffda';
          fallback.style.display = 'flex';
          fallback.style.alignItems = 'center';
          fallback.style.justifyContent = 'center';
          fallback.style.fontSize = '4rem';
          fallback.style.fontWeight = 'bold';
          fallback.style.color = '#0a192f';
          fallback.textContent = 'RF';
          e.target.parentNode.appendChild(fallback);
        }}
        style={{
          width: '100%',
          height: '100%',
          objectFit: 'cover'
        }}
      />
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
      <Link to="/skills" style={{
        backgroundColor: '#64ffda',
        color: '#0a192f',
        padding: '1rem 2rem',
        border: 'none',
        borderRadius: '5px',
        fontSize: '1.1rem',
        cursor: 'pointer',
        textDecoration: 'none',
        display: 'inline-block'
      }}>
        View Skills
      </Link>
      <Link to="/cv" style={{
        backgroundColor: 'transparent',
        color: '#64ffda',
        padding: '1rem 2rem',
        border: '2px solid #64ffda',
        borderRadius: '5px',
        fontSize: '1.1rem',
        cursor: 'pointer',
        textDecoration: 'none',
        display: 'inline-block'
      }}>
        Download CV
      </Link>
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
            <Route path="*" element={<Home />} />
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
EOL

# Build the project with proper base path
echo "🔨 Building project..."
npm run build

# Create necessary GitHub Pages files
echo "📄 Creating GitHub Pages files..."
touch dist/.nojekyll
cp -R public/* dist/

# Create a special no-cache meta tag for index.html
echo "🚫 Adding no-cache headers to index.html..."
sed -i '' 's/<meta name="viewport".*/<meta name="viewport" content="width=device-width, initial-scale=1.0" \/>\n    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" \/>\n    <meta http-equiv="Pragma" content="no-cache" \/>\n    <meta http-equiv="Expires" content="0" \/>/' dist/index.html

# Show what we're deploying
echo "📋 Listing files to be deployed:"
find dist -type f | sort

# Deploy to GitHub Pages
echo "🚀 Deploying to GitHub Pages..."
npx gh-pages -d dist -t

echo "✅ Deployment complete!"
echo "🌍 Your site will be available at: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
echo "⏱️ Allow 5-10 minutes for GitHub Pages to update"
echo ""
echo "📱 Important instructions to fix blank pages:"
echo "1. Clear your browser cache COMPLETELY (Cmd+Shift+Delete on Mac)"
echo "2. Try accessing in INCOGNITO/PRIVATE mode"
echo "3. Try a DIFFERENT browser if possible"
echo "4. Make sure to use HASH routes: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/#/about"
