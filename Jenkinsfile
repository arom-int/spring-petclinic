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
                    withEnv(['BUILD_ID=dontkill']){
                        sh "java -jar ${WORKSPACE}/build/libs/spring-petclinic-2.6.0-plain.jar --server.port=8081 &"
                    }
        stage("CURL"){
            steps{
                sh "curl -m http://172.20.128.2:8081/"
            }
        }
                }
            }
        }
    }
}
