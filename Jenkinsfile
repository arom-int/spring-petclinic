pipeline {
    agent any
    stages {
		stage('Git Checkout'){
			steps{
				git branch: 'main', url: 'https://github.com/arom-int/spring-petclinic.git'
			}
		}
        stage('Build') {
            steps {
                 sh "./gradlew build -x test"

            }
		stage('Test') {
            steps {
                 sh "./gradlew test"

            }
        }
        stage('Deploy') {
            steps {
                sh "java -jar ${WORKSPACE}/build/libs/spring-petclinic-2.6.0-plain.jar"
            }
        }
    }
}
}
