# Configure the Bitbucket Provider
provider "bitbucketserver" {
  server   = "url"
  username = "username"
  password = "personal access token" # you can also use app passwords
}

  # permissions: REPO_WRITE, REPO_READ, REPO_ADMIN
  # https://gavinbunney.github.io/terraform-provider-bitbucketserver/docs/bitbucketserver_repository_permissions_user

module "single_repo" {
  source = "./modules/bitbucket/single_repo"

  names = [ 
    {user = "test.user", repo = "test.repo", permission = "REPO_WRITE"}
  ]
}

module "all_repos" {
  source = "./modules/bitbucket/hop_repos"

  names = [
    { user = "test.user2", permission = "REPO_WRITE"}
  ]
}