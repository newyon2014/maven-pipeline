pipeline {

    agent any
    

    stages {

        stage('Build') {
            steps {
                sh '''

                ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                ./jenkins/build/build.sh

                '''
            }

            }
        }

        stage('Test') {
            steps {
                sh '''

                sh './jenkins/test/mvn.sh mvn test'

                '''
            }

        }

        stage('Push') {
            steps {
                sh '''
                sh './jenkins/push/push.sh'

                 '''
            }
        }

        stage('Deploy') {
            steps {
                sh './jenkins/deploy/deploy.sh'
            }
        }
    }
}
