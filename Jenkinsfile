pipeline {
    agent any
        stages {
            stage('Build') {
                steps {
                    sh 'echo "This is the first step of the build"'
                    sh 'echo "Finish Build"'
                     }
            }
            stage('Lint HTML'){
                steps {
                    sh 'echo "Validating HTML mark up"'
                    retry(3){
                        sh 'tidy -q -e *.html'
                    }
                }
            }
        }
    post {
            always {
                echo 'Jenkins starting deployment'
            }
            success {
                echo 'The deployment has been successfully run'
            }
            failure {
                echo 'Deployment failed'
            }
            unstable {
                echo 'Something went wrong, unstable state'
            }
            changed {
                echo 'Pipeline has been changed'
            }
        }
}