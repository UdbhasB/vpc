provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unique-bucket-name-123456"
  acl    = "private"
}

resource "aws_vpc" "ud-vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "ud-vpc"
    }
  
}
