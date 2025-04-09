data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_instance" "public-1-sohag" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.micro"
  subnet_id              = var.public_subnet_1_id
  vpc_security_group_ids = [var.sg_id]
  associate_public_ip_address = true
  key_name = "keyy"
  tags = {
    Name = "public-1-sohag"
  }

  provisioner "remote-exec" {
    inline = [

        "sudo yum update -y",
        "sudo yum install httpd -y",
        "sudo echo az1 > /var/www/html/index.html",
        "sudo systemctl enable --now httpd"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("keyy.pem")
      host        = self.public_ip
    }
  }

  provisioner "local-exec" {
    command = "echo public-ip1 ${self.public_ip} >> all-ips.txt"
  }
}

resource "aws_instance" "public-2-sohag" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.micro"
  subnet_id              = var.public_subnet_2_id
  vpc_security_group_ids = [var.sg_id]
  associate_public_ip_address = true
  key_name = "keyy"
  tags = {
    Name = "public-2-sohag"
  }

  provisioner "remote-exec" {
    inline = [
        "sudo yum update -y",
        "sudo yum install httpd -y",
        "sudo echo az1 > /var/www/html/index.html",
        "sudo systemctl enable --now httpd"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("keyy.pem")
      host        = self.public_ip
    }
  }

  provisioner "local-exec" {
    command = "echo public-ip2 ${self.public_ip} >> all-ips.txt"
  }
}
