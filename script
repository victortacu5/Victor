pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "START"
            }
        }
        stage('Deploy'){
        parallel {
            stage('Deploy start'){
            steps{
                echo "Start"
                sh "git clone https://github.com/ionutcaramaliu/Jenkins.git"
                sh "sudo -s yum install httpd -y"
                sh "sudo systemctl start httpd"
                sh "sudo systemctl enable httpd"
                sh "sudo cd Jenkins"
                sh "sudo cp index.html /var/www/html/"
                sh "sudo chmod 777 /var/www/html/index.html"
            }
            }
        }
        }
            stage('Deploying now'){
            agent any
            steps {
                sh "curl localhost:80"
            }
            } 
    }
}
