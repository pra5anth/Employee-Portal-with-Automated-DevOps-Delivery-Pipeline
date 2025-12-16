pipeline {
    environment {
        DOCKERHUB_CREDENTIALS = credentials("dhubb")
    }
    agent {
        label 'app1'
    }

    stages {
        stage('Git') {
            steps {
                git url:'https://github.com/pra5anth/Employee-Portal-with-Automated-DevOps-Delivery-Pipeline', branch:'main'
            }
        }
    stage('Docker') {
            steps {
                sh 'sudo docker login -u ${DOCKERHUB_CREDENTIALS_USR} -p ${DOCKERHUB_CREDENTIALS_PSW}'
                sh 'sudo docker build /home/ubuntu/jenkins/ -t pra5anth/pras'
                sh 'sudo docker push pra5anth/pras'
            }
        }
    stage('K8s') {
            steps {
                sh 'kubectl apply -f deploy.yaml'
            }
        }
    }
}
