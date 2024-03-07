
provider "aws" {
    region = "ap-south-1"  
}


resource "aws_instance" "linux" {
  ami           = "ami-0ba259e664698cbfc"
  instance_type = "t2.micro"
  key_name      = "abhi-key"

  tags = {
    Name = "HelloWorld"
  }
  
}
