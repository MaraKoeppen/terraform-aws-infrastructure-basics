resource "aws_ebs_volume" "datascientest_ebs" {
  availability_zone = var.availability_zone[0]
  size              = var.ebs_size

  tags = {
    Name = "datascientest-ebs"
  }
}

resource "aws_volume_attachment" "datascientest_ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.datascientest_ebs.id
  instance_id = aws_instance.datascientest_instance.id
}