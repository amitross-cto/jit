resource "aws_s3_bucket" "insecure_bucket" {
  bucket = "my-insecure-bucket"
  acl    = "public-read"   # <-- Vulnerability: Publicly accessible bucket

  tags = {
    Name        = "InsecureBucket"
    Environment = "Dev"
  }
}
