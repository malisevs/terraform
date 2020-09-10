locals {
    config = concat(
        var.microservice1,
        var.microservice2)
}

output "parameters" {
    value = local.config
}