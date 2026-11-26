pipeline {
agent any
triggers { githubPush() }
stages {
stage('Build') {
steps { sh 'sh build.sh' }
}
stage('Test') {
steps { sh 'sh test.sh' }
}
stage('Deploy') {
steps { echo 'Deploying to staging' }
}
  }
post {
success { archiveArtifacts artifacts: 'dist/*' }
failure { echo 'Build failed - check the console output' }
}
}
