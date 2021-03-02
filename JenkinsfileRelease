pipeline {
  agent any
  tools { 
        maven 'maven-3.6.3'
        jdk 'jdk8' 
  }
  environment {
        releaseVersion = "${release_version}"
        developmentVersion = "${dev_version}"
      }

  stages {
    stage ('Initialize') {
            steps {
                bat '''
                    echo "PATH = %PATH%"
                    echo "M2_HOME = %M2_HOME%"
                ''' 
       }
    }
    stage('Regression Testing') {
      steps {
	    echo "~~~~~~~Running Postman Scripts~~~~~~~~~"
        bat '"C:\\Users\\Administrator\\AppData\\Roaming\\npm\\"newman run "C:\\Users\\Administrator\\Desktop\\Postman_Collection\\CI-CD-GetFlights-Jenkins.postman_collection.json"  -r htmlextra --reporter-htmlextra-export "C:\\Users\\Administrator\\Desktop\\Postman_Collection" --reporter-htmlextra-darkTheme'
      }
    }
	
	stage('Release Jar to Jfrog') {
      steps {
	    echo "~~~~~~~Cutting a release in git as well as in Jfrog~~~~~~~~~"
			bat 'mvn release:clean release:prepare release:perform -DskipStaging=true -DreleaseVersion=${releaseVersion} -DdevelopmentVersion=${developmentVersion} -Dtag=${releaseVersion}'
      }
    }

  }
}
