provider "aws" {
region = "eu-west-2"
}

resource "aws_s3_bucket" "this" {
bucket = "mvws8p2a1-ian-dodds"

    tags = {
        Name = "Multiverse Demo Bucket"
    }
}

resource "aws_s3_object" "test_file" {
    bucket = aws_s3_bucket.this.id
    key = "test_file.txt"
    content = "hello world"
}