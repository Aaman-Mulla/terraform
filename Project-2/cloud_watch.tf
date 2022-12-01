resource "aws_cloudwatch_log_group" "file1" {
  name = "File_1"

  tags = {
    Environment = "production"
    Application = "serviceA"
  }
}