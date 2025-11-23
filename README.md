CI/CD Pipeline Project 

- Create a CI/CD pipeline, so that whenever code is committed to GitHub, it will initiate the CI/CD pipeline in Jenkins. Once it completes successfully, Jenkins will create a Docker image and push the Docker image to Docker Hub.

NOTE:
You can use your localhost and build pipeline manually because you need public IP for webhook. So, I don`t want you to use webhook.

I want you use simple python application. In Jenkinsfile, please have 3 stages called ‘Your Name - Build Docker Image’, ‘Your Name - Login to Dockerhub’ and ‘Your Name - Push image to Dockerhub’.
