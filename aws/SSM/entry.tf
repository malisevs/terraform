provider "aws" {
  region     = "eu-west-1"  
  shared_credentials_file = "%USERPROFILE%/.aws/credentials"
  profile                 = "default"
}

module "concat"{
  source = "./microservices"
}

module "ssm" {
  source = "./modules/ssm"  
  parameters = module.concat.parameters
}
