variable "names" {
  type = list
}

variable "hop_repos" {
    type = list
    default = [
        { name = "repo.name1"},
        { name = "repo.name2"},
        { name = "repo.name3"}
    ]
}