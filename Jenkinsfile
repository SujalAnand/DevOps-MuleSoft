pipeline {
  agent any
  tools { 
        maven 'maven-3.6.3'
        jdk 'jdk8' 
  }
  stages {
    stage ('Initialize') {
            steps {
                bat '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                ''' 
       }
    }
    stage('Unit Test') {
      steps {
        bat 'mvn clean test'
      }
    }
    stage('Deploy CloudHub') {
      environment {
        USER_CREDENTIALS = credentials('AnypointExchangeID')
       // muleEnv = "${env.cloudhub_env.toLowerCase()}"
      }
      steps {
        echo "----Publishing to Artifactory------ "
        bat 'mvn clean package deploy -U -Dmaven.test.skip=true -Dusername=sujalanand056@gmail.com -Dpassword=SAbhi#0056'
        echo "----Running Build ${env.BUILD_ID} on muleEnv - dev----- "
        bat 'mvn clean package deploy -DmuleDeploy -P cloudhub -Danypoint.username=%USER_CREDENTIALS_USR% -Danypoint.password=%USER_CREDENTIALS_PSW% -Dmule.env=dev -Dcloudhub.env=Sandbox -Danypoint.businessGroup=wipro -Dcloudhub.region=us-east-1 -Dcloudhub.workers=1 -Dcloudhub.workerType=MICRO'
      }
    }
  }
}
