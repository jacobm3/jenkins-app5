pipeline {
    agent any

    environment {
        VAULT_ADDR="https://jmartinson-vault-poc-vault-lb-444849932.us-east-1.elb.amazonaws.com:8200"
        ROLE_ID="d5fc65e4-49e9-c4ac-a46a-fa9890213d5e"
        SECRET_ID=credentials("SECRET_ID")
        VAULT_SKIP_VERIFY=1
    }
    
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
