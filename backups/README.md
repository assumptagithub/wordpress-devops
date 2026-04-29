WordPress DevOps Project (Docker + Jenkins CI/CD)
# Project Overview
This project demonstrates a complete DevOps workflow for a WordPress application using Docker, Git, and Jenkins CI/CD pipeline with automated deployment and backup system.
The system includes:
- WordPress + MySQL containerized setup
- Custom Docker image
- CI/CD pipeline using Jenkins
- Automatic deployment on Git push
- Backup automation script
- WordPress UI customization
---
# Tools Used

- Docker
- Docker Compose
- WordPress
- MySQL
- Git & GitHub
- Jenkins
- Linux (Ubuntu)
---
# Project Structurewordpress-devops/
├── docker-compose.yml
├── Dockerfile
├── Jenkinsfile (pipeline script)
├── backup.sh
├── cd-test.txt
├── backups/
└── README.md
---

# How to Run the Project:

#  Clone Repository
```bash
git clone https://github.com/assumptagithub/wordpress-devops.git
cd wordpress-devops

start containers
docker compose up -d
Access WordPress: http://localhost:8081

🐳 Docker Setup

The project uses Docker Compose to run:

* WordPress container
* MySQL database container

Environment variables are used to connect WordPress to the database.


 CI/CD Pipeline (Jenkins)

The Jenkins pipeline performs:

1. Checkout code from GitHub
2. Build Docker image
3. Stop previous container (if any)
4. Run new container
5. Test application
6. Deploy automatically

Trigger Method:

* Poll SCM (automatic Git push detection)

💾 Backup Automation

A shell script (backup.sh) is used to:

* Dump MySQL database
* Copy WordPress wp-content from container
* Store backups in /backups

Run backup Manually:chmod +x backup.sh
./backup.sh

 WordPress Customization

The WordPress site was customized by:

* Changing site title
* Updating tagline
* Modifying theme appearance
* Making visible UI changes

Monitoring Commands

Useful Docker commands:docker ps
docker logs wordpress_app
docker stats
 CI/CD Workflow:Developer → Git Push → Jenkins → Docker Build → Deploy → Live WordPress

