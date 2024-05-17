# region DynamoDB modules


module "s3" {
  source = "./s3"

  name  = "s3"
  stage = "dev"
}

module "cloudfront" {
  source = "./cloudfront"

  name   = "cloudfront"
  stage  = "dev"

  bucket_regional_domain_name = module.s3.bucket_regional_domain_name
}
