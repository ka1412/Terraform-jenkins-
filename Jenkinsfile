pipeline {
    
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ka1412/Terraform-jenkins-.git']])
            }
        }
        stage('init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('fmt') {
            steps {
                sh 'terraform fmt'
            }
        }
        stage('validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('plan') {
            steps {
                sh 'terraform plan'
            }
        }
        
        stage('apply') {
            steps {
                sh ('terraform apply --auto-approve')
            }
        }
        
        
    }
}
