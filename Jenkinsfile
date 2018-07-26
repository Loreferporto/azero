pipeline {
  agent { dockerfile true }
  environment {
    CI = true
  }
  stages {
    stage('Build') {
      steps {
        sh "bundle install"
      }
    }
    stage('Functional Tests') {
      steps {
        sh "bundle exec cucumber -p ci"
      }
    }
  }
}
