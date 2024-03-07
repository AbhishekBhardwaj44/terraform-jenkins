resource "aws_instance" "web" {
  ami           = "ami-0ba259e664698cbfc"
  instance_type = "t2.micro"
  key_name      = "ec2-key"
  
  tags = {
    Name = "ec2terraform"
  }
}
