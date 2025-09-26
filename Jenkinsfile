pipeline {
    agent { label 'myAgent' }
 
    stages {
        stage('Checkout Code') {
            steps {
                echo "Cloning repository..."
                git branch: 'master', url: 'https://github.com/PixelShiv/Practice.git'
            }
        }

        stage('Build with Maven') {
            steps {
                echo "Running Maven clean install..."
                sh 'mvn clean install -DskipTests'
            }
        }

        stage('Package Jar') {
            steps {
                echo "Packaging application..."
                sh 'mvn package -DskipTests'
            }
        }

        stage('Archive Artifact') {
            steps {
                echo "Archiving JAR file..."
                archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
            }
        }
    }

    post {
        success {
            echo 'Build successful! Jar file created and archived.'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
