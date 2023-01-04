pipeline{
    environment {
    registry = "abhilashrl1289/nodejs_repository"
    registryCredential = 'dockerhub_id'
    dockerImage = ''
    }
    agent any
    tools {nodejs "nodejs"}
    stages{
        stage('code checkout from GitHub'){
            steps{
                git 'https://github.com/Abhilash-1201/NodeJsBoilerplateCode.git'
            }
        }
        stage('Code Quality Check via SonarQube'){
            steps{
                script{
                    def scannerHome = tool 'sonarqube-scanner';
                    withSonarQubeEnv(credentialsId: 'sonarqube_access_token'){
                        if(fileExists("sonar-project.properties")) {
                        sh "${tool("sonarqube-scanner")}/bin/sonar-scanner"
                         }         
                    }
                }
            }
        }
      
//       stage('Building docker image')  {
//         steps{
//           script{
//               dockerImage = docker.build registry + ":$BUILD_NUMBER"
//           }
//         }
//       }
//      stage('Deploy builded docker image') {
//          steps { 
//              script {
//                  docker.withRegistry( '', registryCredential ) {
//                      dockerImage.push()
//                  }
//              }
//          }
//      }
//        stage('Install Project Dependencies'){
//            steps{
//                nodejs(nodeJSInstallationName: 'nodejs'){
//                    sh "npm install"
//                }
//            }
//        }
    }
}
