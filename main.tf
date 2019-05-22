provider "aws" {
  region     = "us-east-1"
}

module "dev_bucket" {
  source  = "app.terraform.io/jacobm3/s3_simple/aws"
  version = "2.5"
  bucket_name = "${var.bucket_name}"
  
}


