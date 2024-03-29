resource "aws_instance" "my_instance" {
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  ami                         = "ami-080e1f13689e07408"

  vpc_security_group_ids      = [aws_security_group.security_group.id]
  subnet_id                   = aws_subnet.public_subnet.id

  user_data                   = <<-EOF
#!/bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
  EOF 

}
