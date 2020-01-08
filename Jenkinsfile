pipeline {
    agent any
    stages {
        stage('Build'){
            steps{
                sh 'mvn clean package'
                sh 'sudo docker build . -t miracle1'
                sh 'sudo docker tag miracle1 sample1reg.azurecr.io/samples/miracle1'
                sh 'az login -a https://portal.azure.com -u sduvvuri1@miraclesoft07.onmicrosoft.com -p Labsmiracle@123'
                sh 'az acr login --name sample1reg'
                sh 'sudo docker push sample1reg.azurecr.io/samples/miracle1'
            }
        }
    }
}
