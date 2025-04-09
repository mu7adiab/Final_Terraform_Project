resource "aws_s3_bucket" "S3-statefile" {
  bucket =  "mdiab159357-stf"

  tags = {
    Name        = "remote state file"
    Environment = "Dev"
  }
}