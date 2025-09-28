import { useState } from 'react';
import { Link } from 'react-router-dom';
import './Navbar.css';

const Navbar = () => {
  const [isOpen, setIsOpen] = useState(false);

  const toggleMenu = () => {
    setIsOpen(!isOpen);
  };

  return (
    <nav className="navbar">
      <div className="navbar-brand">
        <Link to="/">Fomekong Fomekong Rachel Merveille</Link>
      </div>
      <div className={`navbar-menu ${isOpen ? "is-active" : ""}`}>
        <Link to="/" className="navbar-item">Home</Link>
        <Link to="/about" className="navbar-item">About</Link>
        <Link to="/cv" className="navbar-item">CV</Link>
        <Link to="/skills" className="navbar-item">Skills</Link>
        <Link to="/experience" className="navbar-item">Experience</Link>
        <Link to="/projects" className="navbar-item">Projects</Link>
        <Link to="/publications" className="navbar-item">Publications</Link>
        <Link to="/patents" className="navbar-item">Patents</Link>
        <Link to="/languages" className="navbar-item">Languages</Link>
        <Link to="/accomplishments" className="navbar-item">Accomplishments</Link>
        <Link to="/contact" className="navbar-item">Contact</Link>
      </div>
      <div className="navbar-burger" onClick={toggleMenu}>
        <span></span>
        <span></span>
        <span></span>
      </div>
    </nav>
  );
};

export default Navbar;
