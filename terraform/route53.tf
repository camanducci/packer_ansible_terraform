resource "aws_route53_record" "loja-blog-stevan" {
  allow_overwrite = true
  zone_id         = data.aws_route53_zone.stevan.id
  name            = "loja-blog-stevan.stevan.tk"
  type            = "CNAME"
  ttl             = "300"
  records         = [aws_instance.magento_wp_terraform.public_dns]
}

resource "aws_route53_record" "blog-stevan" {
  allow_overwrite = true
  zone_id         = data.aws_route53_zone.stevan.id
  name            = "blog-stevan.stevan.tk"
  type            = "CNAME"
  ttl             = "300"
  records         = [aws_instance.magento_wp_terraform.public_dns]
}