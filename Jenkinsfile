pipeline {
    agent { dockerfile true}

    tools {nodejs "node"}

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
                // sh "docker build -t tsdevopsrepo ."
                sh "docker --version"
            }
        }
    }
}
