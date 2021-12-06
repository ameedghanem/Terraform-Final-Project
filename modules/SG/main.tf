resource "aws_security_group" "allow_web" {
  name = "allow_web_traffic-02"

  ingress {
    cidr_blocks = [ var.cidr_blocks  ]
    description = "HTTP traffic"
    from_port = var.http
    to_port = var.http
    protocol = var.l4_protocol
  }

  ingress {
    cidr_blocks = [ var.cidr_blocks  ]
    description = "HTTPS traffic"
    from_port = var.https
    to_port = var.https
    protocol = var.l4_protocol
  }

  ingress {
    cidr_blocks = [ var.cidr_blocks ]
    description = "SSH traffic"
    from_port = var.ssh
    to_port = var.ssh
    protocol = var.l4_protocol
  }

  egress  {
    cidr_blocks = [ var.cidr_blocks ]
    description = "All networks allowed"
    from_port = 0
    to_port = 0
    protocol = "-1"
  }

}