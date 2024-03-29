resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.cidr_public_subnet
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

}
