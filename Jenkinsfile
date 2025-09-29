pipeline {
    agent { label 'myAgent' }

    environment {
        GIT_REPO     = 'https://github.com/PixelShiv/Practice.git'
        BRANCH       = 'master'
        WAR_NAME     = 'yourapp.war'          // adjust to your actual WAR file name in target/
        TOMCAT_USER  = 'ec2-user'
        TOMCAT_HOST  = 'ec2-98-89-40-229.compute-1.amazonaws.com'
        TOMCAT_PATH  = '/opt/tomcat/webapps/'
    }

    stages {
        stage('Checkout Code') {
            steps {
                echo "Cloning repository..."
                git branch: "${BRANCH}", url: "${GIT_REPO}"
            }
        }

        stage('Build WAR with Maven') {
            steps {
                echo "Building WAR package..."
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                echo "Deploying WAR to Tomcat..."
                sh """
                scp -o StrictHostKeyChecking=no target/${WAR_NAME} \
                    ${TOMCAT_USER}@${TOMCAT_HOST}:${TOMCAT_PATH}
                """
            }
        }
    }

    post {
        success {
            echo '✅ Deployment successful! WAR deployed to Tomcat.'
        }
        failure {
            echo '❌ Build or Deployment failed!'
        }
    }
}
