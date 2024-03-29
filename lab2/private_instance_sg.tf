resource "aws_security_group" "private_instance_sg" {
  vpc_id = aws_vpc.my_vpc.id

  ingress {
    from_port   = var.port
    to_port     = var.port
    protocol    = var.protocol
    cidr_blocks = [var.cidr_block_route]
  }
}