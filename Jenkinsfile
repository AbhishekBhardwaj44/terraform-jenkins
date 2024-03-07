pipeline {
    agent any
    environmemts {
        AWS_ACCESS_KEY_ID="AKIAW3QL66DSXPQB7OFR"
        AWS_SECRET_ACCESS_KEY="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"
        AWS_DEFAULT_REGION="ap-south-1"

    stages {
        stage('Checkout GIT') {
            steps {
                checkout scm
            }
        }
        stage('Init') {
            steps {
                sh 'terraform init -upgrade'
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
    post {
        always {
            archiveArtifacts artifacts: '*.tfstate', fingerprint: true
        }
    }
}
