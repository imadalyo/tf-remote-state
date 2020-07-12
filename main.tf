provider "aws" {
  region     = "us-west-2"
}



resource "aws_s3_bucket" "b" {
  bucket = "remote-state-imad"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  versioning {
    enabled = true
  }
}