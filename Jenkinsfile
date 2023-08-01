pipeline {
    agent any
        environment {
        GIT_REPO_URL = 'https://github.com/safaira/php-app.git'
        DOCKER_IMAGE_NAME = 'my-php-app'
    }
    stages {
        stage('SSH Agent Setup') {
            steps {
                sshagent(credentials: ['dockertestserver']) {
                    // The SSH agent will authenticate the Jenkins instance on the test server
                }
            }
        }
        
        stage('Pull PHP Website and Dockerfile') {
            steps {
                git branch: 'main', url: env.GIT_REPO_URL
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(env.DOCKER_IMAGE_NAME)
                }
            }
        }
        stage('Deploy PHP Docker Container') {
            steps {
                script {
                    docker.image(env.DOCKER_IMAGE_NAME).withRun('-p 8181:8181')
                }
            }
        }
    }
}
