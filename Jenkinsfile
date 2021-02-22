pipeline {
    environment {
        registry = 'laharimadupally/jenkins_images'
        // the credential ID added in Jenkins - Global credentials
        registryCredential = 'dockerhub_id'
        dockerImage = ''
    }
    agent any

    tools {
        nodejs "node"
        // dockerTool "docker"
    }

    stages {
        stage('Installing the node_modules') {
            steps {
                sh "npm install"
            }
        }
        stage('Compiling Typescript files') {
            steps {
                sh "npm run compile"
            }
        }
        stage('Running Unit Tests') {
            steps {
                sh "npm run test"
            }
        }
        stage('Build docker image') {
            steps {
                sh "docker --version"
                // giving the rwx access to the docker.sock file
                sh "sudo chmod 777 /var/run/docker.sock"
                script {
                    dockerImage = docker.build registry + ":$BUILD_TAG" 
                }
                sh "docker image ls"
            }
        }
        stage('View all environment variables') {
            steps{
                sh "printenv"
            }
        }
        stage('Push Image to Docker Registry') {
            steps{
                script {
                    docker.withRegistry( '', registryCredential ) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
