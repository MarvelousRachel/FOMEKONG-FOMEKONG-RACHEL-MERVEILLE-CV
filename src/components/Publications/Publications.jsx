import React, { useState } from 'react';
import './Publications.css';

const Publications = () => {
  const [activeFilter, setActiveFilter] = useState('all');

  const publications = [
    {
      id: 1,
      title: "Enhancing Underwater SLAM Navigation and Perception: A Comprehensive Review of Deep Learning Integration",
      authors: "Fomekong, F. F., Jia, B., Xu, Z., & Fred, B.",
      journal: "Sensors",
      year: 2024,
      doi: "10.3390/s24217034",
      abstract: "This paper presents a comprehensive review of deep learning techniques integrated with traditional SLAM frameworks for underwater navigation and perception. We explore cutting-edge approaches that address the unique challenges of underwater environments, including low visibility, dynamic conditions, and limited sensory data. The review covers recent advancements in feature extraction, loop closure detection, and environmental mapping, providing insights into future research directions for underwater robotics.",
      category: "journal",
      keywords: ["Underwater SLAM", "Deep Learning", "Navigation", "Environmental Perception"]
    },
    {
      id: 2,
      title: "Advancements in Sensor Fusion for Underwater SLAM: A Review on Enhanced Navigation and Environmental Perception",
      authors: "Fomekong, F. F., Jia, B., Xu, Z., & Fred, B.",
      journal: "Sensors",
      year: 2024,
      doi: "10.3390/s24237490",
      abstract: "This paper reviews state-of-the-art sensor fusion techniques for underwater SLAM, focusing on approaches that integrate visual, inertial, acoustic, and depth sensors. We analyze methods that overcome the challenges of underwater environments through innovative sensor integration strategies. The review categorizes techniques based on fusion architecture, sensor combinations, and application scenarios, highlighting emerging trends and identifying promising directions for future underwater navigation research.",
      category: "journal",
      keywords: ["Sensor Fusion", "Underwater SLAM", "Navigation", "Multi-sensor Integration"]
    },
    {
      id: 3,
      title: "The Influence of Industry 4.0: A Case Study of Injection Molding Machines, Drones, 3D Printing, and Automation Factories",
      authors: "Fomekong, F. F., & Hugejile",
      journal: "North American Academic Research",
      year: 2021,
      doi: "10.5281/zenodo.5789895",
      abstract: "This paper examines the transformative impact of Industry 4.0 technologies on manufacturing processes, with a focus on injection molding, drone applications, 3D printing, and factory automation. Through detailed case studies and industrial observations, we analyze how these technologies enhance production efficiency, reduce operational costs, and enable new manufacturing capabilities. The research provides insights for manufacturers looking to adopt Industry 4.0 practices and highlights the interdisciplinary nature of modern industrial automation.",
      category: "journal",
      keywords: ["Industry 4.0", "Injection Molding", "Drones", "3D Printing", "Factory Automation"]
    },
    {
      id: 4,
      title: "Enhancing Manufacturing Efficiency: A New Robotic Arm Design for Injection Molding with Improved Adaptability and Precision",
      authors: "Fomekong, F. F, Hugejile, Fred, B",
      journal: "Research Square Preprint",
      year: 2022,
      doi: "10.21203/rs.3.rs-5524250/v1",
      abstract: "This paper presents a novel robotic arm design specifically optimized for injection molding processes. The proposed design incorporates enhanced adaptability features and precision control mechanisms to improve manufacturing efficiency. Through experimental validation in industrial settings, we demonstrate how the robotic system reduces cycle times, minimizes material waste, and increases production consistency. The results suggest significant potential for improving operational efficiency in plastic manufacturing through specialized robotic automation.",
      category: "preprint",
      keywords: ["Robotic Arm", "Injection Molding", "Manufacturing Efficiency", "Precision Control"]
    },

    // Papers under review / submitted
    {
      id: 5,
      title: "Turbidity-Resilient Underwater Mapping with Multi-Detector Fusion and Sequential RGB-D Odometry",
      authors: "First Author",
      journal: "Submitted to IEEE Journal of Oceanic Engineering (IEEE JOE)",
      year: 2026,
      doi: "",
      abstract: "Paper under review / submitted.",
      category: "preprint",
      keywords: ["Underwater Mapping", "Multi-Detector Fusion", "RGB-D Odometry", "Turbidity"]
    },
    {
      id: 6,
      title: "Underwater SLAM via Deep Learning and Sensor Fusion",
      authors: "First Author",
      journal: "Under review / submitted",
      year: 2026,
      doi: "",
      abstract: "Paper under review / submitted.",
      category: "preprint",
      keywords: ["Underwater SLAM", "Deep Learning", "Sensor Fusion"]
    },
    {
      id: 7,
      title: "Full-Sequence Reconstruction and Chunked Drift Reduction for Underwater SplaTAM",
      authors: "First Author",
      journal: "Under review / submitted",
      year: 2026,
      doi: "",
      abstract: "Paper under review / submitted.",
      category: "preprint",
      keywords: ["SplaTAM", "3D Reconstruction", "Drift Reduction", "Long Sequences"]
    },
    {
      id: 8,
      title: "Underwater SLAM for Long Sequences: Loop Closure and Artifact-Aware 3D Reconstruction",
      authors: "First Author",
      journal: "Under review / submitted",
      year: 2026,
      doi: "",
      abstract: "Paper under review / submitted.",
      category: "preprint",
      keywords: ["Loop Closure", "Artifact Awareness", "3D Reconstruction", "Underwater SLAM"]
    },
    {
      id: 9,
      title: "JMPCNet: A Jointly-trained Network with Multi-scale Perception Capability for Underwater Fish Counting",
      authors: "Second Author",
      journal: "Engineering Applications of Artificial Intelligence (under review / submitted)",
      year: 2026,
      doi: "",
      abstract: "Paper under review / submitted.",
      category: "preprint",
      keywords: ["Fish Counting", "Multi-scale Perception", "Underwater Vision", "Deep Learning"]
    },
    {
      id: 10,
      title: "Beyond Nutrition: How Dietary Methionine Shields Golden Pompano from Cold-Stress Triads via Nrf2 Activation",
      authors: "Second Author",
      journal: "Under review / submitted",
      year: 2026,
      doi: "",
      abstract: "Paper under review / submitted.",
      category: "preprint",
      keywords: ["Aquaculture", "Cold Stress", "Nrf2", "Methionine"]
    },
    
  ];

  const filters = [
    { id: 'all', name: 'All Publications' },
    { id: 'journal', name: 'Journal Papers' },
    { id: 'conference', name: 'Conference Papers' }
  ];

  const filteredPublications = activeFilter === 'all' 
    ? publications 
    : publications.filter(pub => pub.category === activeFilter);

  return (
    <div className="publications-container">
      <h1>Publications</h1>
      
      <div className="publications-intro">
        <p>
          My research has been published in leading journals and presented at international conferences
          in the fields of robotics, underwater technology, and computer vision.
        </p>
      </div>
      
      <div className="filter-buttons">
        {filters.map(filter => (
          <button 
            key={filter.id} 
            className={`filter-btn ${activeFilter === filter.id ? 'active' : ''}`}
            onClick={() => setActiveFilter(filter.id)}
          >
            {filter.name}
          </button>
        ))}
      </div>
      
      <div className="publications-list">
        {filteredPublications.map(publication => (
          <div className="publication-card" key={publication.id}>
            <h3 className="publication-title">{publication.title}</h3>
            <p className="publication-authors">{publication.authors}</p>
            
            {publication.category === 'journal' ? (
              <p className="publication-venue">
                <span className="venue-name">{publication.journal}</span>,{' '}
                <span className="publication-year">{publication.year}</span>
              </p>
            ) : publication.category === 'conference' ? (
              <p className="publication-venue">
                <span className="venue-name">{publication.conference}</span>,{' '}
                <span className="venue-location">{publication.location}</span>,{' '}
                <span className="publication-year">{publication.year}</span>
              </p>
            ) : (
              <p className="publication-venue">
                <span className="venue-name">{publication.journal}</span>,{' '}
                <span className="publication-year">{publication.year}</span>
              </p>
            )}

            {!!publication.doi && (
              <div className="publication-doi">
                <span>DOI: </span>
                <a
                  href={`https://doi.org/${publication.doi.replace('doi:', '')}`}
                  target="_blank"
                  rel="noopener noreferrer"
                >
                  {publication.doi}
                </a>
              </div>
            )}
            
            <div className="publication-details">
              <div className="publication-abstract">
                <h4>Abstract</h4>
                <p>{publication.abstract}</p>
              </div>
              
              <div className="publication-keywords">
                <h4>Keywords</h4>
                <div className="keywords-list">
                  {publication.keywords.map((keyword, index) => (
                    <span key={index} className="keyword">{keyword}</span>
                  ))}
                </div>
              </div>
              
              <div className="publication-links">
                <a href={`https://doi.org/${publication.doi.replace('doi:', '')}`} className="btn" target="_blank" rel="noopener noreferrer">
                  View Paper
                </a>
                <a href="#" className="btn">Cite</a>
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Publications;
