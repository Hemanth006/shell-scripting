pipeline {
  agent {
    node { label 'workstation'}
  }

  options {
    ansiColor('xterm')
  }

  parameters {
    choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Pick a terraform action')
  }

  stages {

    stage('Terraform INIT') {
      steps {
        sh 'cd  roboshop-shell-scripting ; terraform init'
      }
    }

    stage('Terraform Apply') {
      when {
        environment name: 'ACTION', value: 'apply'
      }
      steps {
        sh '''
          cd roboshop-shell-scripting
          terraform apply -auto-approve
        '''
      }
    }

    stage('Terraform Destroy') {
      when {
        environment name: 'ACTION', value: 'destroy'
      }
      steps {
        sh '''
          cd roboshop-shell-scripting
          terraform destroy -auto-approve
        '''
      }
    }

  }
}
