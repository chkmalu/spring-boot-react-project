pipeline {
    agent any
    tools {
        maven 'maven'
    }

    stages {
        stage('BUILD & TEST APP') {
            steps {
                echo 'BUILDING & TESTING APP'
            }
        }
        stage('BUILD & PUSH IMAGE') {
            steps {
                echo 'BUILDING & PUSHING IMAGE'
            }
        }
        stage('PROVISION INFRASTRUCTURE') {
            steps {
                echo 'PROVISIONING INFRASTRUCTURE'
            }
        }
        stage('DEPLOY APP') {
            steps {
                echo 'DEPLOYING APPLICATION'
            }
        }
    }
}