pipeline {
    environment {
        registry = 'laharimadupally/jenkins_images'
        registryCredential = 'laharimadupally'
        dockerImage = ''
    }
    agent any

    tools {
        nodejs "node"
        docker "docker"
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
                // dockerImage = docker.build registry + ":$BUILD_NUMBER"
            }
        }
    }
}
