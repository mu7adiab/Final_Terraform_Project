output "alb_private_dns" {
  value = aws_lb.alb-private-sohag.dns_name
}
