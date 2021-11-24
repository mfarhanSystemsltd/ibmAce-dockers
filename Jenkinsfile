pipeline {
    agent any

    stages {
        stage('Clean Workspace'){
            steps{
                cleanWs()
            }
        }
        stage('Git checkout'){
            steps{
                git branch: 'main', credentialsId: 'arslaanmalikSystemsltd', url: 'https://github.com/arslaanmalikSystemsltd/ibmAce-dockers.git'
            }
        }
        stage ('Copy BAR'){
            steps{
                sh 'cp *.bar Barfiles/MPSharedLib_${BUILD_NUMBER}.bar'
            }
        }
        stage ('Docker build image'){
            steps{
                sh 'docker build -t ace/${BUILD_NUMBER} --build-arg file_name=MPSharedLib_${BUILD_NUMBER} .'
            }
        }
    }
}
