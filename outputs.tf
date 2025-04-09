output "public_instance_ip" {
  value = module.ec2_public.public_ip
}

output "private_instance_1_ip" {
  value = module.ec2_private.private_1_ip
}

output "private_instance_2_ip" {
  value = module.ec2_private.private_2_ip
}

output "alb_public_dns" {
  value = module.alb_public.alb_dns_name
}

output "alb_private_dns" {
  value = module.alb_private.alb_private_dns
}
