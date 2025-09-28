import React, { useState } from 'react';
import './Projects.css';

const Projects = () => {
  const [activeFilter, setActiveFilter] = useState('all');
  
  const projects = [
    {
      id: 1,
      title: "Enhancement of Underwater UUV Navigation via Visual-Lidar SLAM",
      description: "Developing a hybrid SLAM system that combines visual features with LiDAR point clouds for robust underwater navigation in low-visibility conditions. This research focuses on improving localization accuracy and map fidelity in challenging underwater environments.",
      technologies: ["C++", "ROS", "OpenCV", "Point Cloud Library", "g2o"],
      category: "slam",
      image: "/project-images/visual-lidar-slam.jpg",
      links: {
        github: "https://github.com/fomekongrachelm/visual-lidar-slam",
        paper: "https://doi.org/10.1109/ACCESS.2023.3278794"
      }
    },
    {
      id: 2,
      title: "Neuromorphic Computing Systems and AI Chip Architectures",
      description: "Researching advanced AI models, architectures, and optimization algorithms for neuromorphic computing systems. Developing energy-efficient neural network models and hardware architectures for AI acceleration.",
      technologies: ["Python", "PyTorch", "TensorFlow", "CUDA", "Hardware Design"],
      category: "deep-learning",
      image: "/project-images/neuromorphic-computing.jpg",
      links: {
        paper: "https://doi.org/10.1109/TNNLS.2023.3276345"
      }
    },
    {
      id: 3,
      title: "Intelligent Task Offloading for Wireless Communication Systems",
      description: "Developed reinforcement learning models for dynamic task offloading in wireless communication systems. Implemented deep Q-learning solutions for efficient resource management in edge computing environments.",
      technologies: ["Python", "Reinforcement Learning", "Deep Q-Learning", "Wireless Networks"],
      category: "deep-learning",
      image: "/project-images/task-offloading.jpg",
      links: {
        paper: "https://doi.org/10.1109/TWC.2022.3177881"
      }
    },
    {
      id: 4,
      title: "Fault-Tolerant Systems Design",
      description: "Conducted research on fault-tolerant systems design and implementation for critical applications. Analyzed resilient computing methods and developed simulation models for testing system reliability.",
      technologies: ["C++", "System Design", "Fault Tolerance", "Simulation"],
      category: "systems",
      image: "/project-images/fault-tolerant-systems.jpg",
      links: {
        paper: "https://hal.laas.fr/hal-03345301"
      }
    },
    {
      id: 5,
      title: "Federated Learning for Edge Computing",
      description: "Research on federated learning approaches for distributed edge computing systems, focusing on privacy-preserving collaborative model training across multiple devices without sharing raw data.",
      technologies: ["Python", "PyTorch", "Federated Learning", "Edge Computing"],
      category: "deep-learning",
      image: "/project-images/federated-learning.jpg",
      links: {
        github: "https://github.com/fomekongrachelm/federated-edge-learning"
      }
    },
    {
      id: 6,
      title: "Robotic Arm Design for Injection Molding",
      description: "Designed and implemented a robotic arm system for automated injection molding processes, including kinematic modeling, control system design, and integration with manufacturing equipment.",
      technologies: ["MATLAB", "ROS", "Control Systems", "Robotics", "CAD"],
      category: "robotics",
      image: "/project-images/robotic-arm.jpg",
      links: {
        paper: "https://doi.org/10.1109/ICRA.2020.9196526"
      }
    }
  ];

  const categories = [
    { id: 'all', name: 'All Projects' },
    { id: 'slam', name: 'SLAM' },
    { id: 'deep-learning', name: 'Deep Learning' },
    { id: 'systems', name: 'Systems Design' },
    { id: 'robotics', name: 'Robotics' }
  ];

  const filteredProjects = activeFilter === 'all' 
    ? projects 
    : projects.filter(project => project.category === activeFilter);

  return (
    <div className="projects-container">
      <h1>Research Projects</h1>
      
      <div className="projects-intro">
        <p>
          My research projects focus on underwater navigation, neuromorphic computing, 
          and AI systems. I work on advanced applications of SLAM, deep learning, 
          reinforcement learning, and fault-tolerant system design.
        </p>
      </div>
      
      <div className="filter-buttons">
        {categories.map(category => (
          <button 
            key={category.id} 
            className={`filter-btn ${activeFilter === category.id ? 'active' : ''}`}
            onClick={() => setActiveFilter(category.id)}
          >
            {category.name}
          </button>
        ))}
      </div>
      
      <div className="projects-grid">
        {filteredProjects.map(project => (
          <div className="project-card" key={project.id}>
            <div className="project-image">
              <div className="image-placeholder">
                <span>{project.title}</span>
              </div>
            </div>
            <div className="project-content">
              <h3>{project.title}</h3>
              <p>{project.description}</p>
              <div className="project-tech">
                {project.technologies.map((tech, index) => (
                  <span key={index} className="tech-tag">{tech}</span>
                ))}
              </div>
              <div className="project-links">
                {project.links.github && (
                  <a href={project.links.github} target="_blank" rel="noopener noreferrer" className="project-link">
                    GitHub
                  </a>
                )}
                {project.links.demo && (
                  <a href={project.links.demo} target="_blank" rel="noopener noreferrer" className="project-link">
                    Demo
                  </a>
                )}
                {project.links.paper && (
                  <a href={project.links.paper} target="_blank" rel="noopener noreferrer" className="project-link">
                    Paper
                  </a>
                )}
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Projects;
