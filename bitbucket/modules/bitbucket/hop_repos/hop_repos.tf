locals {
  repos = [
    for repo in var.hop_repos : {
        repo = repo.name
    }
  ]
  users = [
    for names in var.names : {
        user = names.user
        permission = names.permission
    }
  ]

  repos_to_change = [
    for pair in setproduct(local.repos, local.users) : {
      repo = pair[0].repo
      user  = pair[1].user
      permission  = pair[1].permission
    }
  ]
}

resource "bitbucketserver_repository_permissions_user" "hop-repos" {

    for_each = {
        for repo in local.repos_to_change : "${repo.repo}.${repo.user}" => repo
     }

    project    = "ProjectName"
    repository = each.value.repo
    user       = each.value.user
    permission = each.value.permission
}