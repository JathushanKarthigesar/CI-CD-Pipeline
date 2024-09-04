pipeline {
    agent any

    environment {
        PATH = "/usr/local/bin:/bin:$PATH"
    }

    stages {
        stage('Jathushan - Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t veethinan/my-python-app .'
                }
            }
        }

        stage('Jathushan - Login to Dockerhub') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'DOCKERHUB_CREDENTIALS', usernameVariable: 'DOCKERHUB_USERNAME', passwordVariable: 'DOCKERHUB_PASSWORD')]) {
                        sh 'echo $DOCKERHUB_PASSWORD | docker login -u $DOCKERHUB_USERNAME --password-stdin'
                    } 
                }
            }
        }

        stage('Jathushan - Push latest image to Dockerhub') {
            steps {
                script {
                    sh 'docker push veethinan/my-python-app'
                }
            }
        }
    }
}

