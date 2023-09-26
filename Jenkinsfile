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
                sh 'docker image build -t venkatasaitejareddychalla/saiteja:spc .'
                sh 'docker image push venkatasaitejareddychalla/saiteja:spc'
                sh 'docker container run -d -P venkatasaitejareddychalla/saiteja:spc'
                sh 'docker container ls'
                  
            }
        }
        stage ('kubernetes'){
            steps {
                sh 'kubectl apply -f kube.yaml'
                sh 'kubectl get po'
            }
        }
    }
}