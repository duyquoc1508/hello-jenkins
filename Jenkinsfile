
// pipeline {
//   agent any
//   def app
//   stages {
//     stage('Build image') {
//       steps {
//         echo 'Starting to build docker image'
//         script {
//           /* This builds the actual image, synonymous to docker build on the command line */
//           app = docker.build("hello_jenkins:${env.BUILD_ID}")
//         }
//       }
//     }

//     stages('Test image') {
//       steps {
//         echo 'Starting test'
//         script {
//           /* Run test to check image work?*/
//           app.inside{
//             sh 'echo "Test passed!"'
//           }
//         }
//       }
//     }

//     // stages('Push image') {
//     //   /* Finally, we'll push the image with two tags:
//     //   * First, the incremental build number from Jenkins
//     //   * Second, the 'latest' tag.
//     //   * Pushing multiple tags is cheap, as all the layers are reused. */
//     //   steps {
//     //     echo 'Push image'
//     //     script {
//     //       docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
//     //         app.push("${env.BUILD_NUMBER}")
//     //         app.push("latest")
//     //       }
//     //     }
//     //   }
//     // }
//   }
// }

node {
  def app 

  stage('Clone repository'){
    
    checkout scm
  }

  stage('Build image'){
    /* This builds the actual image, synonymous to docker build on the command line */
    app = docker.build("hello_jenkins")
  }

  stage('Test image'){
    /* Run test to check image work?*/
    app.inside{
      sh 'echo "Test passed!"'
    }
  }

  // stage('Push image'){
  //   /* Finally, we'll push the image with two tags:
  //    * First, the incremental build number from Jenkins
  //    * Second, the 'latest' tag.
  //    * Pushing multiple tags is cheap, as all the layers are reused. */
  //   docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
  //     app.push("${env.BUILD_NUMBER}")
  //     app.push("latest")
  //   }
  // }
}