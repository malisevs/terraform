resource "bitbucketserver_repository_permissions_user" "hop-single-repo" {
    count = length(var.names)

    project    = "H2O"
    repository = var.names[count.index].repo
    user       = var.names[count.index].user
    permission = var.names[count.index].permission
}