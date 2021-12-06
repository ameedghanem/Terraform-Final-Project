# specify the relevant image
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = [var.ami_name]
  }

  filter {
    name   = "virtualization-type"
    values = [var.virtualization_type]
  }

  owners = [var.os_owners]
}

# create ubuntu instances
resource "aws_instance" "instance" {
  ami           = data.aws_ami.ubuntu.id
  availability_zone = var.availability_zones[ count.index % length(var.availability_zones) ]#"${var.availability_zones != "" ? var.availability_zones: var.availability_zones[ count.index % length(var.availability_zones) ]}"
  instance_type = var.instance_type
  count         = var.instance_count
  user_data     = file("install_nginx.sh")

  tags = {
    Name  = "${var.prefix_name} #${count.index}"
  }
}