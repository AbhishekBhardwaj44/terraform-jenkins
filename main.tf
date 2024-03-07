resource "aws_instance" "web" {
  ami           = "ami-0ba259e664698cbfc"
  instance_type = "t2.micro"
  key_name = "pythonkeyabhi"

  tags = {
    Name = "ec2terraform"
  }
}
