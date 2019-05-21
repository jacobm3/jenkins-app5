provider "aws" {
  region     = "us-east-1"
}

module "dev_bucket" {
  source  = "app.terraform.io/jacobm3/s3_simple/aws"
  version = "2.2"
  bucket_name = "${var.bucket_name}"
  
}

resource "aws_instance" "vm" {
  ami          = "ami-2757f631"
  instance_type = "t2.micro"
  count        = 10

}
