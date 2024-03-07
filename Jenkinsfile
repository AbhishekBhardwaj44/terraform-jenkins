pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID=credentials("aws_access_key_id")
        AWS_SECRET_ACCESS_KEY=credentials("aws_secret_key")
    }
    stages {
        stage('Checkout GIT') {
            steps {
                checkout scm
            }
        }
        stage('Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Plan') {
            steps {
                sh 'terraform plan -out main.tf'
            }
        }
        stage('Confirm') {
            steps {
                script {
                    def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
                }
            }
        }
        stage('Action') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }

}
