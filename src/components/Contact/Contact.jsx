import React, { useState } from 'react';
import './Contact.css';

const Contact = () => {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    subject: '',
    message: ''
  });

  const [formStatus, setFormStatus] = useState({
    isSubmitting: false,
    message: '',
    type: ''
  });

  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    setFormStatus({
      isSubmitting: true,
      message: '',
      type: ''
    });

    // Simulate form submission
    setTimeout(() => {
      setFormStatus({
        isSubmitting: false,
        message: 'Thank you for your message! I will get back to you soon.',
        type: 'success'
      });
      setFormData({
        name: '',
        email: '',
        subject: '',
        message: ''
      });
    }, 1000);
  };

  return (
    <div className="contact-container">
      <h1>Contact Me</h1>
      
      <div className="contact-intro">
        <p>
          I'm always interested in research collaborations, speaking opportunities, 
          or discussions about underwater robotics and SLAM technologies. 
          Feel free to reach out!
        </p>
      </div>

      <div className="contact-content">
        <div className="contact-info">
          <div className="contact-item">
            <div className="contact-icon">📧</div>
            <div>
              <h3>Email</h3>
              <p>marvelous@stu.gdou.edu.cn</p>
            </div>
          </div>
          
          <div className="contact-item">
            <div className="contact-icon">📱</div>
            <div>
              <h3>Phone</h3>
              <p>(+86) 166-6225-8487</p>
            </div>
          </div>
          
          <div className="contact-item">
            <div className="contact-icon">📍</div>
            <div>
              <h3>Location</h3>
              <p>Zhanjiang, Guangdong Province, 524091, China</p>
            </div>
          </div>
          
          <div className="contact-item">
            <div className="contact-icon">🏫</div>
            <div>
              <h3>Institution</h3>
              <p>Guangdong Ocean University</p>
            </div>
          </div>
        </div>

        <form className="contact-form" onSubmit={handleSubmit}>
          <h2>Send a Message</h2>
          
          <div className="form-group">
            <label htmlFor="name">Name</label>
            <input
              type="text"
              id="name"
              name="name"
              value={formData.name}
              onChange={handleChange}
              required
            />
          </div>

          <div className="form-group">
            <label htmlFor="email">Email</label>
            <input
              type="email"
              id="email"
              name="email"
              value={formData.email}
              onChange={handleChange}
              required
            />
          </div>

          <div className="form-group">
            <label htmlFor="subject">Subject</label>
            <input
              type="text"
              id="subject"
              name="subject"
              value={formData.subject}
              onChange={handleChange}
              required
            />
          </div>

          <div className="form-group">
            <label htmlFor="message">Message</label>
            <textarea
              id="message"
              name="message"
              rows="6"
              value={formData.message}
              onChange={handleChange}
              required
            ></textarea>
          </div>

          <button 
            type="submit" 
            className="submit-btn"
            disabled={formStatus.isSubmitting}
          >
            {formStatus.isSubmitting ? 'Sending...' : 'Send Message'}
          </button>

          {formStatus.message && (
            <div className={`form-message ${formStatus.type}`}>
              {formStatus.message}
            </div>
          )}
        </form>
      </div>
    </div>
  );
};

export default Contact;
