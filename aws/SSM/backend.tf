terraform {
  backend "s3" {
    region     = "eu-west-1"
    bucket     = "bucket-name-goes-here"
    key        = "ssm.tfstate"
    shared_credentials_file = "%USERPROFILE%/.aws/credentials"
    profile                 = "default"
 }
}
