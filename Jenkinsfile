pipeline{
    agent any
    tools {nodejs "nodejs"}
    stages{
        stage('code checkout from GitHub'){
            steps{
                git credentialsId: 'GitHub_token', url: 'https://github.com/Abhilash-1201/NodeJsBoilerplateCode.git'
            }
        }
        stage('Code Quality Check via SonarQube'){
            steps{
                script{
                    def scannerHome = tool 'sonarqube-scanner';
                    withSonarQubeEnv(credentialsId: 'sonarqube_access_token'){
                        sh "${tool("sonarqube-scanner")}/bin/sonar-scanner \
                        -Dsonar.projectKey=NodeJS-Project \
                        -Dsonar.sources=. \
                        -Dsonar.css.node=. \
                        -Dsonar.host.url=http://3.249.54.238:9000 \
                        -Dsonar.login=sqp_9b76513c1e63c0b16470e7d3b1beca88a2ef875c"
                        
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
