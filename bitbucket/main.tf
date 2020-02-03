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
    {user = "test.user1", repo = "test.repo", permission = "REPO_WRITE"},
    {user = "test.user2", repo = "test.repo", permission = "REPO_READ"}
  ]
}

module "all_repos" {
  source = "./modules/bitbucket/hop_repos"

  names = [
    { user = "test.user1", permission = "REPO_WRITE"},
    { user = "test.user2", permission = "REPO_READ"}
  ]
}