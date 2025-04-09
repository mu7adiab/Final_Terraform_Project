data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_instance" "private-1-sohag" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.micro"
  subnet_id              = var.private_subnet_1_id
  vpc_security_group_ids = [var.sg_id]
  associate_public_ip_address = false

  tags = {
    Name = "private-1-sohag"
  }

    user_data = <<-EOF
                   #!/bin/bash
                   sudo yum update -y
                   sudo yum install httpd -y
                   sudo echo 'private ec2 in az1' > /var/www/html/index.html 
                   sudo systemctl enable --now httpd
                   EOF

}

resource "aws_instance" "private-2-sohag" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.micro"
  subnet_id              = var.private_subnet_2_id
  vpc_security_group_ids = [var.sg_id]
  associate_public_ip_address = false

  tags = {
    Name = "private-2-sohag"
  }

     user_data = <<-EOF
                   #!/bin/bash
                   sudo yum update -y
                   sudo yum install httpd -y
                   sudo echo 'private ec2 in az1' > /var/www/html/index.html 
                   sudo systemctl enable --now httpd
                   EOF
}
