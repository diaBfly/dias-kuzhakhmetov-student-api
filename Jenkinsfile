pipeline {
    agent any

    environment {
        IMAGE_NAME = 'dias-kuzhakhmetov-student-api:v1.0-dias-kuzhakhmetov'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Student: Dias Kuzhakhmetov'
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'mvn -B clean package -DskipTests'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn -B test'
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
        success { echo 'Dias Kuzhakhmetov pipeline completed successfully.' }
        failure { echo 'Pipeline failed. Check the stage log and fix the reported error.' }
    }
}

