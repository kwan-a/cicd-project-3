pipeline { 
  agent any
  environment {
    DOCKERHUB_CREDENTIALS = credentials('git')
  }
  stages {
    stage('Initialize'){
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
    stage('build') {
      steps {
        echo 'building the application'
        sh 'docker login'
        sh 'docker build -t abkwan/sample-image:latest .'
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDNETIALS_USR --password-stdin'
        sh 'docker push abkwan/sample-image:latest'
        sh 'docker logout'
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
      }
    }
  }
}
