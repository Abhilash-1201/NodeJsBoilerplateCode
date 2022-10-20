pipeline{
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
                        sh "${tool("sonarqube-scanner")}/bin/sonar-scanner \
                        -Dsonar.projectKey=NodeJSProject \
                        -Dsonar.sources=. \
                        -Dsonar.css.node=. \
                        -Dsonar.host.url=http://3.19.64.117:9000 \
                        -Dsonar.login=sqp_01cd59eb1ff6bf474ed92d0e0ea296bb6ec217f2"         
                    }
                }
            }
        }
        stage('Install Project Dependencies'){
            steps{
                nodejs(nodeJSInstallationName: 'nodejs'){
                    sh "npm install"
                }
            }
        }
    }
}
