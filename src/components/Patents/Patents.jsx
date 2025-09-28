import React from 'react';
import './Patents.css';

const Patents = () => {
  const patents = [
    {
      id: 1,
      title: "A Human Non-Contact Temperature Detection Device",
      inventors: "Fomekong, F.F. et al.",
      patentNumber: "CN202022594125.5",
      filingDate: "November 12, 2020",
      status: "Granted",
      grantDate: "August 17, 2021",
      description: "A utility model patent for a non-contact temperature detection device designed for rapid human body temperature screening. The device integrates thermal sensors, AI-based detection algorithms, and automated alert systems for efficient health monitoring in public spaces."
    }
  ];

  return (
    <div className="patents-container">
      <h1>Patents</h1>
      
      <div className="patents-intro">
        <p>
          During my research career, I've contributed to innovations in underwater robotics
          and navigation technologies that have led to the following patent applications and grants.
        </p>
      </div>
      
      <div className="patents-list">
        {patents.map((patent) => (
          <div className="patent-card" key={patent.id}>
            <h3 className="patent-title">{patent.title}</h3>
            
            <div className="patent-details">
              <div className="patent-info">
                <p><strong>Inventors:</strong> {patent.inventors}</p>
                <p><strong>Patent Number:</strong> {patent.patentNumber}</p>
                <p><strong>Filing Date:</strong> {patent.filingDate}</p>
                <p><strong>Status:</strong> <span className={`status ${patent.status.toLowerCase()}`}>{patent.status}</span></p>
                {patent.grantDate && <p><strong>Grant Date:</strong> {patent.grantDate}</p>}
              </div>
              
              <div className="patent-description">
                <h4>Description</h4>
                <p>{patent.description}</p>
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Patents;
