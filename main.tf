provider "aws" {
    region = "ap-south-1"
}
resource "aws_instance" "s3linux" {
  ami           = ""
  instance_type = "t2.micro"
  key_name      = "ec2-key"

  tags = {
     Name = "hello-jenkins"
  }
}
