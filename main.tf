resource "aws_s3_bucket" "s3linux" {
  bucket = "my-navibuaabh-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
