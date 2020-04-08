provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "magento_wp_terraform" {
  ami           = data.aws_ami.acelera.id
  instance_type = "t2.micro"
  key_name               = aws_key_pair.stevan-key.key_name
  vpc_security_group_ids = [var.security_group_id]
  tags          = {
    Name        = "magento_wp_terraform"
                  }
}