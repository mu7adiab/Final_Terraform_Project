resource "aws_lb" "alb-private-sohag" {
  name               = "alb-private-sohag"
  internal           = true
  load_balancer_type = "application"
  subnets            = [var.private_subnet_1_id, var.private_subnet_2_id]
  security_groups    = [var.sg_id]

  tags = {
    Name = "alb-private-sohag"
  }
}

resource "aws_lb_target_group" "tg-private-sohag" {
  name     = "tg-private-sohag"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  # health_check {
  #   path                = "/"
  #   interval            = 30
  #   timeout             = 5
  #   healthy_threshold   = 2
  #   unhealthy_threshold = 2
  # }
}

resource "aws_lb_listener" "listener-private" {
  load_balancer_arn = aws_lb.alb-private-sohag.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg-private-sohag.arn
  }
}
