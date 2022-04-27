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
        stage("RUN App"){
            steps{
                sh "nohup java -jar ${WORKSPACE}/build/libs/spring-petclinic-2.6.0-plain.jar --server.port=8081"
            }
        }
    }
}
