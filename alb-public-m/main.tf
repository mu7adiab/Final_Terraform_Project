resource "aws_lb" "alb-public-sohag" {
  name               = "alb-public-sohag"
  internal           = false
  load_balancer_type = "application"
  subnets            = [var.public_subnet_1_id, var.public_subnet_2_id]
  security_groups    = [var.sg_id]

  tags = {
    Name = "alb-public-sohag"
  }
}

resource "aws_lb_target_group" "tg-public-sohag" {
  name     = "tg-public-sohag"
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

# resource "aws_lb_target_group_attachment" "attach-proxy1" {
#   target_group_arn = aws_lb_target_group.tg-public-sohag.arn
#   target_id        = var.publicvmid1
#   port             = 80
# }
# resource "aws_lb_target_group_attachment" "attach-proxy2" {
#   target_group_arn = aws_lb_target_group.publicgroup.arn
#   target_id        = var.publicvmid2
#   port             = 80
# }

resource "aws_lb_listener" "listener-public" {
  load_balancer_arn = aws_lb.alb-public-sohag.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg-public-sohag.arn
  }
}
