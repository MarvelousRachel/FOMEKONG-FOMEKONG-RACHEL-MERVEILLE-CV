import React from 'react';
import './Languages.css';

const Languages = () => {
  const languages = [
    {
      name: "English",
      proficiency: "Fluent",
      level: 100,
      description: "Professional working proficiency in speaking, reading, and writing.",
      certifications: ["TOEFL iBT: 105/120"]
    },
    {
      name: "French",
      proficiency: "Native",
      level: 100,
      description: "Native language with full professional proficiency.",
      certifications: []
    },
    {
      name: "Mandarin Chinese",
      proficiency: "Intermediate",
      level: 50,
      description: "Intermediate conversational skills and basic reading and writing abilities.",
      certifications: ["HSK Level 3"]
    },
    {
      name: "Spanish",
      proficiency: "Basic",
      level: 25,
      description: "Basic understanding and limited conversational ability.",
      certifications: []
    }
  ];

  return (
    <div className="languages-container">
      <h1>Languages</h1>
      
      <div className="languages-intro">
        <p>
          Throughout my academic and professional career, I've developed proficiency in multiple languages,
          which has been invaluable for international collaboration and research communication.
        </p>
      </div>
      
      <div className="languages-content">
        <div className="language-cards">
          {languages.map((language, index) => (
            <div className="language-card" key={index}>
              <div className="language-header">
                <h3>{language.name}</h3>
                <span className={`proficiency-badge level-${Math.floor(language.level / 25)}`}>
                  {language.proficiency}
                </span>
              </div>
              
              <div className="proficiency-bar">
                <div 
                  className="proficiency-level" 
                  style={{ width: `${language.level}%` }}
                ></div>
              </div>
              
              <p className="language-description">{language.description}</p>
              
              {language.certifications.length > 0 && (
                <div className="certifications">
                  <h4>Certifications</h4>
                  <ul>
                    {language.certifications.map((cert, i) => (
                      <li key={i}>{cert}</li>
                    ))}
                  </ul>
                </div>
              )}
            </div>
          ))}
        </div>
        
        <div className="language-skills">
          <h2>Language Skills</h2>
          
          <div className="skills-grid">
            <div className="skill-category">
              <h3>Reading</h3>
              <div className="language-skill-items">
                <div className="skill-item">
                  <span className="language-name">English</span>
                  <div className="skill-bar">
                    <div className="skill-level" style={{ width: '95%' }}></div>
                  </div>
                </div>
                <div className="skill-item">
                  <span className="language-name">French</span>
                  <div className="skill-bar">
                    <div className="skill-level" style={{ width: '100%' }}></div>
                  </div>
                </div>
                <div className="skill-item">
                  <span className="language-name">Mandarin</span>
                  <div className="skill-bar">
                    <div className="skill-level" style={{ width: '45%' }}></div>
                  </div>
                </div>
                <div className="skill-item">
                  <span className="language-name">Spanish</span>
                  <div className="skill-bar">
                    <div className="skill-level" style={{ width: '30%' }}></div>
                  </div>
                </div>
              </div>
            </div>
            
            <div className="skill-category">
              <h3>Writing</h3>
              <div className="language-skill-items">
                <div className="skill-item">
                  <span className="language-name">English</span>
                  <div className="skill-bar">
                    <div className="skill-level" style={{ width: '90%' }}></div>
                  </div>
                </div>
                <div className="skill-item">
                  <span className="language-name">French</span>
                  <div className="skill-bar">
                    <div className="skill-level" style={{ width: '100%' }}></div>
                  </div>
                </div>
                <div className="skill-item">
                  <span className="language-name">Mandarin</span>
                  <div className="skill-bar">
                    <div className="skill-level" style={{ width: '35%' }}></div>
                  </div>
                </div>
                <div className="skill-item">
                  <span className="language-name">Spanish</span>
                  <div className="skill-bar">
                    <div className="skill-level" style={{ width: '20%' }}></div>
                  </div>
                </div>
              </div>
            </div>
            
            <div className="skill-category">
              <h3>Speaking</h3>
              <div className="language-skill-items">
                <div className="skill-item">
                  <span className="language-name">English</span>
                  <div className="skill-bar">
                    <div className="skill-level" style={{ width: '95%' }}></div>
                  </div>
                </div>
                <div className="skill-item">
                  <span className="language-name">French</span>
                  <div className="skill-bar">
                    <div className="skill-level" style={{ width: '100%' }}></div>
                  </div>
                </div>
                <div className="skill-item">
                  <span className="language-name">Mandarin</span>
                  <div className="skill-bar">
                    <div className="skill-level" style={{ width: '55%' }}></div>
                  </div>
                </div>
                <div className="skill-item">
                  <span className="language-name">Spanish</span>
                  <div className="skill-bar">
                    <div className="skill-level" style={{ width: '25%' }}></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Languages;
