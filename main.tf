provider "aws" {
    region = "ap-south-1"
}
resource "aws_instance" "s3linux" {
  ami           = "ami-0ba259e664698cbfc"
  instance_type = "t2.micro"
  key_name      = "ec2-key"

  tags = {
     Name = "hello-jenkins"
  }
}
