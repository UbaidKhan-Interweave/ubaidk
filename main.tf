module "website" {
  source = "InterweaveCloud/s3-cloudfront-static-website/aws"

  resource_uid   = "ubaidk"
  domain_name    = "ubaidk.com"
  hosted_zone_id = "Z0584690FA3J0P38VOB2"
  profile        = "infrauser"

  sync_directories = [{
    local_source_directory = "./website_content"
    s3_target_directory    = ""
  }]

  providers = {
    aws.useast1 = aws.useast1
  }
}