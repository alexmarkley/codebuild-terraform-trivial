provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "codebuild-terraform-trivial-state"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}

resource "aws_instance" "web" {
  instance_type = "t3.micro"
  ami           = "ami-026dea5602e368e96"
}
