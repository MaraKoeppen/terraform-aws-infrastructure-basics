resource "aws_security_group" "datascientest_sg" {
  name        = "datascientest-sg"
  description = "Authorize incoming traffic on ports 80, 443, and 22 and all outgoing traffic"
  vpc_id      = aws_vpc.datascientest_vpc.id

  ingress {
    description = "Authorize incoming traffic on port 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Authorize incoming traffic on port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Authorize incoming traffic on port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "datascientest-sg"
  }
}
resource "aws_network_interface_sg_attachment" "datascientest_sg_attachment" {
  security_group_id    = aws_security_group.datascientest_sg.id
  network_interface_id = aws_network_interface.interface_reseau_instance.id
}