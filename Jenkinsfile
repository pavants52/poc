pipeline {
    agent any
    stages {
        stage('Build'){
            steps{
                sh 'mvn clean package'
                sh 'sudo docker build . -t miraclepipeline'
                sh 'sudo docker tag miraclepipeline sample1reg.azurecr.io/samples/miraclepipeline'
                acrQuickTask azureCredentialsId: 'd7b2d974-44cc-4ac4-bec7-40e88ab7b036', gitPath: '', gitRefspec: '', gitRepo: '', imageNames: [[image: '']], registryName: 'sample1reg', resourceGroupName: 'devops', tarball: '', variant: ''
                
                sh 'sudo docker push sample1reg.azurecr.io/samples/miraclepipeline'
            }
        }
    }
}
