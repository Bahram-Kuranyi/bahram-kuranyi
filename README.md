<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>My GitHub Portfolio</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      font-family: 'Inter', sans-serif;
      background-color: #0d1117;
      color: #c9d1d9;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 2rem;
      transition: background-color 0.3s ease, color 0.3s ease;
    }

    h1, h2 {
      color: #58a6ff;
    }

    .about {
      max-width: 800px;
      margin-bottom: 4rem;
      text-align: center;
    }

    .skills {
      display: flex;
      gap: 2rem;
      flex-wrap: wrap;
      justify-content: center;
    }

    .skill-logo {
      width: 60px;
      height: 60px;
      transition: transform 0.3s ease;
    }

    .skill-logo:hover {
      transform: scale(1.1);
    }

    .contact {
      margin-top: 4rem;
      text-align: center;
    }

    .contact a {
      color: #58a6ff;
      text-decoration: none;
      font-weight: bold;
      margin: 0 1rem;
    }

    .contact a:hover {
      text-decoration: underline;
    }

    .theme-toggle {
      margin-top: 1rem;
      padding: 0.5rem 1rem;
      background-color: #58a6ff;
      border: none;
      color: white;
      cursor: pointer;
    }

    .theme-toggle:hover {
      background-color: #333;
    }

    .light-mode {
      background-color: #ffffff;
      color: #333;
    }

    .dark-mode {
      background-color: #0d1117;
      color: #c9d1d9;
    }
  </style>
</head>
<body class="dark-mode">
  <h1>Welcome to My GitHub 👋</h1>
  
  <button class="theme-toggle" onclick="toggleTheme()">Switch to Light Mode</button>

  <section class="about">
    <h2>About Me</h2>
    <p>
      Over the years, I've worked on various projects, but due to the confidentiality policies of the companies I collaborated with, I wasn't allowed to publish the source code of those projects publicly.<br><br>
      What you'll find here are my personal projects and experiments—things I've worked on in my own time and am excited to share.<br><br>
      If you're curious about my work or want to know more, feel free to reach out. I'm always open to conversations, collaboration, and learning opportunities!
    </p>
  </section>

  <section class="skills">
    <h2>My Skills</h2>
    <div class="skills">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" alt="HTML5" class="skill-logo">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original.svg" alt="CSS3" class="skill-logo">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg" alt="JavaScript" class="skill-logo">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/react/react-original.svg" alt="React" class="skill-logo">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vuejs/vuejs-original.svg" alt="Vue.js" class="skill-logo">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/wordpress/wordpress-original.svg" alt="WordPress" class="skill-logo">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/django/django-plain.svg" alt="Django" class="skill-logo">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" alt="Python" class="skill-logo">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original.svg" alt="Java" class="skill-logo">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" alt="Git" class="skill-logo">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" alt="GitHub" class="skill-logo">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg" alt="MySQL" class="skill-logo">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg" alt="Linux" class="skill-logo">
    </div>
  </section>

  <section class="contact">
    <h2>Contact Me</h2>
    <p>
      Want to collaborate or just say hi? Reach out!
    </p>
    <p>
      <a href="mailto:bahramkuranyi@gmail.com">Email</a>
      <a href="https://www.linkedin.com/in/bahramkuranyi" target="_blank">LinkedIn</a>
      <a href="https://bahram-kuranyi.github.io/Portfolio/" target="_blank">CV</a>
    </p>
  </section>

  <script>
    function toggleTheme() {
      const body = document.querySelector('body');
      const button = document.querySelector('.theme-toggle');
      
      if (body.classList.contains('dark-mode')) {
        body.classList.remove('dark-mode');
        body.classList.add('light-mode');
        button.textContent = 'Switch to Dark Mode';
      } else {
        body.classList.remove('light-mode');
        body.classList.add('dark-mode');
        button.textContent = 'Switch to Light Mode';
      }
    }
  </script>
</body>
</html>
