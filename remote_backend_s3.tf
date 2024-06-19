terraform {
  backend "s3" {
    bucket = "dev-proj-522-jenkins-remote-state-bucket"
    key    = "devops-project-1/jenkins/terraform.tfstate"
    region = "eu-west-1"
  }
}