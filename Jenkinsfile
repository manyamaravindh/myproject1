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
                //sh 'mvn  sonar:sonar    -Dsonar.host.url=http://3.238.95.88:9000    -Dsonar.login=267e8b5b981d9604b7999074b941d2416156348b'
                sh 'mvn test'             
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'mvn clean package'
            }
        }
        stage('Deploy to Tomcat') {
            steps {
                echo 'Deploying to Tomcat....'                             
                sh 'sudo cp /var/lib/jenkins/workspace/myprojectpipleline/target/*.war /home/centos/apache-tomcat-7.0.94/webapps'  
            }
               }
        
    }
}
