pipeline {
    agent { label 'myAgent' }

    environment {
        GIT_REPO     = 'https://github.com/PixelShiv/Practice.git'
        BRANCH       = 'master'
        WAR_NAME     = 'yourapp.war'          // Adjust this to your WAR name
        TOMCAT_USER  = 'tomcatuser'           // Tomcat server SSH user
        TOMCAT_HOST  = 'your.server.ip'       // Tomcat server host/IP
        TOMCAT_PATH  = '/opt/tomcat/webapps/' // Path to Tomcat's webapps directory
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
                scp target/${WAR_NAME} ${TOMCAT_USER}@${TOMCAT_HOST}:${TOMCAT_PATH}
                """
            }
        }
    }

    post {
        success {
            echo 'Deployment successful! WAR deployed to Tomcat.'
        }
        failure {
            echo 'Build or Deployment failed!'
        }
    }
}
