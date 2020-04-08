data "aws_ami" "acelera" {
  most_recent      = true
  name_regex       = ".*-Stevan$"
  owners           = ["self"]

  filter {
    name   = "name"
    values = ["AceleraSp-Stevan"]
  }

}

data "aws_security_group" "acelera" {
  id = var.security_group_id
}

