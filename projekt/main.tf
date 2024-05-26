provider "aws" {
 access_key = "test"
 secret_key = "test"
 region = var.aws_region
 s3_force_path_style = true
 skip_credentials_validation = true
 skip_requesting_account_id = true
 endpoints {
  s3 = "http://localhost:4566"
 }
}
 
 resource "aws_s3_bucket" "my-little-bucket-flower" {
  bucket = var.bucket_name
 }
