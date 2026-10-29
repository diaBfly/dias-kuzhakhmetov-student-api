pipeline {
    agent any

    environment {
        IMAGE_NAME = 'asan-abai-student-api:v1.0-asan-abai'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Student: Asan Abai'
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'chmod +x gradlew && ./gradlew --no-daemon clean bootJar'
            }
        }
        stage('Test') {
            steps {
                sh './gradlew --no-daemon test'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }
        stage('Verify') {
            steps {
                sh 'docker image inspect $IMAGE_NAME --format "{{.Id}} {{.Size}}"'
            }
        }
    }

    post {
        success { echo 'Asan Abai pipeline completed successfully.' }
        failure { echo 'Pipeline failed. Check the stage log and fix the reported error.' }
    }
}

