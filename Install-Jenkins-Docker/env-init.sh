docker pull jenkins:latest    
docker run -d -u root --name jenkins -p 8080:8080 -p 50000:50000 -v /root/jenkins_latest:/var/jenkins_home jenkins:latest