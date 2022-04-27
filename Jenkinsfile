pipeline{
    agent any
    stages{
        stage("Clean WS"){
            steps{
                cleanWs()
            }
        }
        stage("Git checkout"){
            steps{
                git branch: 'main', url: 'https://github.com/arom-int/spring-petclinic.git'
            }
        }
        stage("Build"){
            steps{
                sh "./gradlew build -x test"
            }
        }
        stage("Test"){
            steps{
                sh "./gradlew test"
            }
        }
        stage("RUN App"){
            steps{
                script{
                    withEnv(['JENKINS_NODE_COOKIE=dontkill']){
                        sh "nohup java -jar ${WORKSPACE}/build/libs/spring-petclinic-2.6.0.jar --server.port=8081&"
                    }
                }
            }
        }
        stage("CURL request"){
            steps{
                sh "curl localhost:8081"
            }
        }
    }
}
