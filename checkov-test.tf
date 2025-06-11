provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "vulnerable_bucket" {
  bucket = "my-vulnerable-bucket"
  acl    = "public-read"  # ❗ Triggers CUSTOM_AWS_001 and CKV_AWS_57

  tags = {
    Name        = "VulnerableBucket"
    Environment = "Dev"
  }
}
