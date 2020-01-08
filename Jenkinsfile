pipeline {
    agent any
    stages {
        stage('Build'){
            steps{
                sh 'mvn clean package'
                sh 'sudo docker build . -t miracle1'
                sh 'sudo docker tag miracle1 sample1reg.azurecr.io/samples/miracle1'
                sh 'sudo docker push sample1reg.azurecr.io/samples/miracle1'
            }
        }
    }
}
