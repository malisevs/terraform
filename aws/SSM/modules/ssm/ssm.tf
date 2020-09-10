resource "aws_ssm_parameter" "configs" {
    count = length(var.parameters)
    overwrite = true
    name  = "/Prefix/${var.parameters[count.index].parameter}"
    type  = var.parameters[count.index].type
    value = var.parameters[count.index].value
}