locals {
  instance_name = "${var.project_id}-instance"
}

resource "aws_instance" "cmtr-nizsrz3k-instance" {
  ami                    = data.aws_ami.amazon_linux_2023.id
  instance_type          = "t3.micro"
  subnet_id              = data.aws_subnet.public.id
  vpc_security_group_ids = [data.aws_security_group.selected.id]

  tags = {
    Name = local.instance_name
  }
}