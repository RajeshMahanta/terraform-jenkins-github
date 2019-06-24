resource "aws_instance" "app" {
  count                  = "${var.ec2_instance_count}"
  ami                    = "ami-090f10efc254eaf55"
  instance_type          = "${var.instance_type}"
  key_name               = "${var.key_name}"
  #vpc_security_group_ids = ["${aws_security_group.app.id}", "${data.aws_security_group.infrastructure_sgs.*.id}"]
  subnet_id              = "${element(var.subnet_ids, count.index)}"

}


data "aws_security_group" "infrastructure_sgs" {
  name = "${var.infra_sg}"
}
