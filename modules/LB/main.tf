resource "aws_lb" "this_lb" {
  name               = var.lb_name
  internal           = var.is_internal
  load_balancer_type = var.lb_type
  security_groups    = [var.sg_id]
  subnets            = var.lb_subnet_ids

  enable_deletion_protection = false

  tags = {
    Environment = "production"
  }
}

# add a listener to the load balancer
resource "aws_lb_listener" "my_listener" {
  load_balancer_arn = aws_lb.this_lb.arn
  port              = var.port
  protocol          = var.protocol

  default_action {
    type             = var.routing_type
    target_group_arn = var.tg_arn
  }
}