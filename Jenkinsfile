pipeline {
    agent any

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
        stage('Deploy') {
            steps {
                sh "npm run start"
            }
        }
    }
}
