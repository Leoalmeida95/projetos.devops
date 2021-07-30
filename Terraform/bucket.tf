resource "aws_s3_bucket" "dev4" {
  bucket = "lalmlab-dev4"
  acl    = "private"

  tags = {
    Name = "lalmlab-dev4"
  }
}