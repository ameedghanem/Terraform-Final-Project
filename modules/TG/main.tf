# create a target group
resource "aws_lb_target_group" "my_tg" {
  name     = var.tg_name
  port     = var.port
  protocol = var.protocol
  vpc_id   = var.vpc_id
}

# attach the newly created instances to the target group
resource "aws_alb_target_group_attachment" "tg_attachment" {
  count = length(var.instances)
  target_group_arn = aws_lb_target_group.my_tg.arn
  target_id = var.instances[count.index].id
  port = var.port
}