#creating a S3 bucket

resource "aws_s3_bucket" "Backup" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "Bucket_1"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.Backup.id
  acl    = "private"
}