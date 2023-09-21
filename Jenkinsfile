pipeline {
    agent {label "EEE"}
    stages {
        stage ('giturl'){
            steps {
                git url: 'https://github.com/TEJA79955/jenkins-.git',
                    branch: 'main' 
            }
        }
        stage ('docker'){
            steps {
                docker image build -t venkatasaitejareddychalla/saiteja:apache .
                docker image push venkatasaitejareddychalla/saiteja:apache
            }
        }
    }
}