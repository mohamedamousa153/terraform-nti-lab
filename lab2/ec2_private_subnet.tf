resource "aws_instance" "ec2_private_instance" {
  ami             = var.ec2_ami
  instance_type   = var.ec2_instance_type
  security_groups = [aws_security_group.private_instance_sg.id]

  subnet_id = aws_subnet.private_subnet.id

}