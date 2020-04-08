data "aws_ami" "acelera" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "Stevan$"
  owners           = ["self"]

  filter {
    name   = "name"
    values = ["*Stevan"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}