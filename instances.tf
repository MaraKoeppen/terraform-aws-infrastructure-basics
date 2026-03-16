resource "aws_instance" "datascientest-instance" {
  ami           = var.image_id
  instance_type = var.type_instance
  monitoring    = var.monitoring

  tags = {
    Name = "datascientest"
  }
}