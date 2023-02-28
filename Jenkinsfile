pipeline {
    agent any
    tools {
        maven 'maven'
    }
    environment {
        IMAGE_REPO = "081241791096.dkr.ecr.us-east-1.amazonaws.com"
        IMAGE_NAME = "seamlesshr"
        IMAGE_TAG = "1.0"

    }

    stages {
        stage('TEST & BUILD APP') {
            steps {
                echo 'TESTING & BUILDING APP'
                // sh 'mvn clean package'
            }
        }
        stage('BUILD & PUSH IMAGE') {
            steps {
                echo 'BUILDING & PUSHING IMAGE'
                // withCredentials([usernamePassword(credentialsId: 'AWS_ECR_ACCESS', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                //     script {
                //         sh "echo ${PASSWORD} | docker login -u ${USERNAME} --password-stdin ${IMAGE_REPO}"
                //         sh "docker build -t ${IMAGE_NAME}:${IMAGE_TAG} ."
                //         sh "docker tag seamlesshr:1.0 ${IMAGE_REPO}/${IMAGE_NAME}:${IMAGE_TAG}"
                //         sh "docker push ${IMAGE_REPO}/${IMAGE_NAME}:${IMAGE_TAG}"
                //     }
                // }
            }
        }
        stage('PROVISION INFRASTRUCTURE') {
            steps {
                echo 'PROVISIONING INFRASTRUCTURE'
                // dir('terraform') {
                //     sh 'terraform init'
                //     sh 'terraform plan'
                // }
            }
        }
        stage('DEPLOY APP') {
            environment {
                AWS_ECR = credentials('AWS_ECR_ACCESS')
            }
            when {
                currentBuild.getPreviousBuild().result = 'SUCCESS'
                }
            steps {
                echo 'DEPLOYING APPLICATION'
                
                // dir('kubernetes') {
                //     sh 'aws eks update-kubeconfig --region us-east-1 --name dev-cluster'
                //     sh "kubectl create secret docker-registry regcred --docker-server=${IMAGE_REPO} \
                //         --docker-username=${AWS_ECR_USR} \
                //         --docker-password=${AWS_ECR_PSW}"
                //     sh 'kubectl apply -f seamlessshr.yaml'
                // }
            }
        }
    }
}