pipeline {
    agent any

    stages {
        stage('Validate') {
            steps {
                echo 'Validating..'
                sh 'mvn compile'
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'               
                sh 'mvn clean package'             
            }
        }
    }
}
