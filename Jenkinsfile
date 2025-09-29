pipeline {
    agent { label 'myAgent' }

    environment {
        GIT_REPO     = 'https://github.com/PixelShiv/Practice.git'
        BRANCH       = 'master'
        WAR_NAME     = 'app.war'          // matches the actual WAR produced by Maven
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
                echo "Deploying WAR to Tomcat with ownership handling..."
                sh """
                # Temporarily give ec2-user permission to write
                ssh ${TOMCAT_USER}@${TOMCAT_HOST} "sudo chown ec2-user:ec2-user ${TOMCAT_PATH}"

                # Copy WAR
                scp -o StrictHostKeyChecking=no target/${WAR_NAME} ${TOMCAT_USER}@${TOMCAT_HOST}:${TOMCAT_PATH}

                # Change ownership back to tomcat
                ssh ${TOMCAT_USER}@${TOMCAT_HOST} "sudo chown -R tomcat:tomcat ${TOMCAT_PATH}${WAR_NAME} && \
                                                  if [ -d ${TOMCAT_PATH}app ]; then sudo rm -rf ${TOMCAT_PATH}app; fi"
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
