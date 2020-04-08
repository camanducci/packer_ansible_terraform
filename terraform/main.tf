provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "magento_wp_terraform" {
  ami           = data.aws_ami.acelera.id
  instance_type = "t2.micro"
  tags          = {
    Name        = "magento_wp_terraform"
                  }
}