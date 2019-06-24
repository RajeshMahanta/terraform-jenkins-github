#Create EBS volume to instance in zone = "${var.aws_availability_zone}"
resource "aws_ebs_volume" "data_ebs2" {
  count             = "${var.ec2_instance_count}"
  availability_zone = "${element(var.availability_zones, count.index)}"
  size              = "100"
  type              = "gp2"
  encrypted         = "true"
}

#Attach EBS volume to instance in zone = "${var.aws_availability_zone}"
resource "aws_volume_attachment" "attach_data_ebs2" {
  count        = "${var.ec2_instance_count}"
  device_name  = "/dev/sda1"
  volume_id    = "${element(aws_ebs_volume.data_ebs2.*.id, count.index)}"
  instance_id  = "${element(aws_instance.app.*.id, count.index)}"
  skip_destroy = true
}
