pipeline {
  agent any
  stages {
    stage('build') {
      def app
      steps {
        echo 'building the application'
        script {
        docker.build("abkwan/sample-image")
        }
      }
    }
    stage('test') {
      steps {
        echo 'testing the application'
      }
    }
    stage('deploy') {
      steps {
        def app
        echo 'deploying the application'
        script {
        docker.withRegistry('https://registry.hub.docker.com', 'git') {            
          app.push("${env.BUILD_NUMBER}")            
          app.push("latest") 
        }
        }
      }
    }
  }
}
