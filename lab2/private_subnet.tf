resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.cidr_private_subnet
  availability_zone = var.availability_zone


}