provider "aws" {
  region     = "us-east-1"
}

module "dev_bucket" {
  source  = "app.terraform.io/jacobm3/s3_simple/aws"
  version = "2.2"
  bucket_name = "${var.bucket_name}"
  
}


resource "aws_s3_bucket" "website_bucket" {
  force_destroy = true
  bucket = "jmartinson-23497230948230480923843243"
  acl    = "public-read"
  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "PUT", "POST", "HEAD"]
    allowed_origins = ["*"]
    max_age_seconds = 3000
  }
  versioning {
    enabled = true
  }
  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::${var.bucket_name}/*"
        }
    ]
}
  POLICY
  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}
