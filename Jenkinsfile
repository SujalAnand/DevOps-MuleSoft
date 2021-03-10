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
	    echo "~~~~~~~Munit Test Checking Code Coverage~~~~~~~~~"
        bat 'mvn clean test'
      }
    }
	
	stage('Publishing Artifactory To JFrog') {
      steps {
		echo "~~~~~~~Publishing to Artifactory~~~~~~~~~"
        bat 'mvn clean package deploy -U -DskipMunitTests'
      }
    }
    stage('Deploy CloudHub') {
      environment {
        USER_CREDENTIALS = credentials('AnypointExchangeID')
       // muleEnv = "${env.cloudhub_env.toLowerCase()}"
      }
      steps {
		echo "----Deploy To CloudHub----- "
        echo "----Running Build ${env.BUILD_ID} on muleEnv - dev----- "
        bat 'mvn clean package deploy -DskipMunitTests -DmuleDeploy -P cloudhub -Danypoint.username=%USER_CREDENTIALS_USR% -Danypoint.password=%USER_CREDENTIALS_PSW% -Dmule.env=dev -Dcloudhub.env=Sandbox -Danypoint.businessGroup="Wipro limited" -Dcloudhub.region=us-east-1 -Dcloudhub.workers=1 -Dcloudhub.workerType=MICRO'
      }
    }
  }
}
