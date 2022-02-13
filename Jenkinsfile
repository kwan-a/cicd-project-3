pipeline {
  agent any
  stages {
    def app
    stage('build') {
      steps {
        echo 'building the application'
        app = docker.build("abkwan/sample-image")
      }
    }
    stage('test') {
      steps {
        echo 'testing the application'
      }
    }
    stage('deploy') {
      steps {
        echo 'deploying the application'
        docker.withRegistry('https://registry.hub.docker.com', 'git') {            
          app.push("${env.BUILD_NUMBER}")            
          app.push("latest") 
        }
      }
    }
  }
}
