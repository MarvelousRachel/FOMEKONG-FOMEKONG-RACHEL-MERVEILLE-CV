import React from 'react';
import './Accomplishments.css';

const Accomplishments = () => {
  const accomplishments = [
    {
      id: 1,
      title: "Chinese Government Scholarship",
      year: "2020 - 2024",
      category: "award",
      description: "Full scholarship awarded for PhD studies in Marine Engineering at Guangdong Ocean University.",
      highlight: true
    },
    {
      id: 2,
      title: "Best Paper Award",
      year: "2023",
      category: "award",
      description: "Awarded for the paper 'Enhanced Underwater SLAM with Deep Learning Feature Extraction' at the International Conference on Underwater Technology, Shanghai, China.",
      highlight: true
    },
    {
      id: 3,
      title: "Excellence in Research Award",
      year: "2022",
      category: "award",
      description: "Recognized for outstanding research contributions in AI and Computing Systems at Huawei Technologies Co., Ltd.",
      highlight: true
    },
    {
      id: 4,
      title: "Patent for Underwater Navigation System",
      year: "2023",
      category: "achievement",
      description: "Obtained a patent (CN202022594125.5) for a novel underwater navigation system with improved localization accuracy.",
      highlight: true
    },
    {
      id: 5,
      title: "IEEE Membership",
      year: "2020 - Present",
      category: "achievement",
      description: "Active member of IEEE Robotics and Automation Society and IEEE Oceanic Engineering Society.",
      highlight: false
    },
    {
      id: 6,
      title: "Publication in IEEE Access",
      year: "2023",
      category: "achievement",
      description: "Published research on underwater SLAM in the prestigious IEEE Access journal (DOI: 10.1109/ACCESS.2023.3278794).",
      highlight: true
    },
    {
      id: 7,
      title: "Publication in IEEE Transactions on Neural Networks and Learning Systems",
      year: "2023",
      category: "achievement",
      description: "Published research on neuromorphic computing systems in IEEE TNNLS (DOI: 10.1109/TNNLS.2023.3276345).",
      highlight: false
    },
    {
      id: 8,
      title: "Publication in IEEE Transactions on Wireless Communications",
      year: "2022",
      category: "achievement",
      description: "Published research on intelligent task offloading for wireless communication systems (DOI: 10.1109/TWC.2022.3177881).",
      highlight: false
    },
    {
      id: 9,
      title: "Excellence in Teaching",
      year: "2021",
      category: "award",
      description: "Recognized for outstanding contributions as a Teaching Assistant at Université Toulouse III - Paul Sabatier.",
      highlight: false
    },
    {
      id: 10,
      title: "Research Assistant at LAAS-CNRS",
      year: "2021",
      category: "achievement",
      description: "Selected for a research position at the prestigious Laboratory for Analysis and Architecture of Systems, part of the French National Centre for Scientific Research.",
      highlight: false
    }
  ];

  // Filter accomplishments by category
  const awards = accomplishments.filter(item => item.category === 'award');
  const achievements = accomplishments.filter(item => item.category === 'achievement');

  return (
    <div className="accomplishments-container">
      <h1>Accomplishments</h1>
      
      <div className="accomplishments-intro">
        <p>
          Throughout my academic and professional career, I've been fortunate to receive recognition 
          for my research contributions and achieve significant milestones in the field of underwater robotics.
        </p>
      </div>
      
      <div className="accomplishments-timeline">
        <div className="timeline-highlights">
          <h2>Highlighted Accomplishments</h2>
          <div className="timeline">
            {accomplishments
              .filter(item => item.highlight)
              .sort((a, b) => parseInt(b.year) - parseInt(a.year))
              .map(item => (
                <div className="timeline-item" key={item.id}>
                  <div className="timeline-marker"></div>
                  <div className="timeline-content">
                    <h3>{item.title}</h3>
                    <span className="timeline-year">{item.year}</span>
                    <p>{item.description}</p>
                    <span className={`category-badge ${item.category}`}>
                      {item.category === 'award' ? 'Award' : 'Achievement'}
                    </span>
                  </div>
                </div>
              ))}
          </div>
        </div>
      </div>
      
      <div className="accomplishments-sections">
        <div className="accomplishments-section">
          <h2>Awards & Honors</h2>
          <div className="cards-grid">
            {awards.map(award => (
              <div className={`card ${award.highlight ? 'highlight' : ''}`} key={award.id}>
                <div className="card-header">
                  <h3>{award.title}</h3>
                  <span className="year">{award.year}</span>
                </div>
                <div className="card-body">
                  <p>{award.description}</p>
                </div>
              </div>
            ))}
          </div>
        </div>
        
        <div className="accomplishments-section">
          <h2>Key Achievements</h2>
          <div className="cards-grid">
            {achievements.map(achievement => (
              <div className={`card ${achievement.highlight ? 'highlight' : ''}`} key={achievement.id}>
                <div className="card-header">
                  <h3>{achievement.title}</h3>
                  <span className="year">{achievement.year}</span>
                </div>
                <div className="card-body">
                  <p>{achievement.description}</p>
                </div>
              </div>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
};

export default Accomplishments;
