output "bucket_endpoint" {
    value = "${module.dev_bucket.website_bucket_id}"
}

output "bucket_domain_name" {
    value = "${module.dev_bucket.domain_name}"
}

output "bucket_arn" {
    value = "${module.dev_bucket.arn}"
}
