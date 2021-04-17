pipeline {
    agent any

    stages {
        stage('Validate') {
            steps {
                echo 'Validating..'
                sh 'mvn compile'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'               
                sh 'mvn test'             
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'mvn clean package'
            }
        }
        stage('Publish') {
            steps {
                echo 'Publishing....'                             
                sh 'sudo cp /var/lib/jenkins/workspace/Validate/target/*.war /home/centos/apache-tomcat-7.0.94/webapps'  
            }
               }
        
    }
}
