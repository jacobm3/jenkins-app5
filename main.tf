resource "random_string" "random" {
  length = 16
  special = false
}

module "dev_bucket" {
  source  = "app.terraform.io/jacobm3/s3_simple/aws"
  version = "1.0"
  bucket_name = "marlene-dev-bucket-${var.random}"
}
