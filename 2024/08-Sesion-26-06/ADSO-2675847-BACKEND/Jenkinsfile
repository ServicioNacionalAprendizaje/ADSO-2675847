import java.time.*
import java.time.format.DateTimeFormatter
pipeline {
    agent any
    environment {
       DATE_NOW=''
       DOCKER_TAG ="($DATE_NOW.$BUILD_NUMBER | head -c 8)" 
       REPOSITORY_URI="gastro-manager"
       REPOSITORY_URI_APP=""
    }
    stages {
        stage('Construyendo tag') {
            steps {
                script {
                   def now = new Date()
                   DATE_NOW=now.format("yyMMdd.HHmm", TimeZone.getTimeZone('UTC'))
                   DOCKER_TAG="$DATE_NOW.$BUILD_NUMBER"
                   REPOSITORY_URI_APP="$REPOSITORY_URI:$DOCKER_TAG"
                }
            }
        }
       stage('Desplegando') {
            steps {
                sh "sudo CONTAINER_IMAGE=$REPOSITORY_URI_APP docker compose -f ./devops/docker-compose.yml up -d --build && sudo docker image prune -f"
            }
        }
    }
}