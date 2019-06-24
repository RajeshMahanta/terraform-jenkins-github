provider "aws" {
 access_key = "${var.access_key}"
 secret_key = "${var.secret_key}"
 region = "eu-central-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-bucket-poc"
    key    = "POC/terraform.tfstate"
  }
}


module "app-ec2" {
infra_sg    = "default"
ec2_instance_names  = ["app-ec2-1qa"]
ec2_instance_count  = "1"
app_ingress_cidrs   = "0.0.0.0/0"
ec2_ingress_cidrs   = ["0.0.0.0/0"]
ec2_egress_cidrs    = ["0.0.0.0/0"]
vpc_id              = "vpc-493e1c22"
vpc_cidr            = "172.31.0.0/16"
subnet_ids          = ["subnet-b20848cf"]
region              = "eu-central-1"
availability_zones  = ["eu-central-1b"]
instance_type       = "t2.micro"
key_name            = "terraform"
ebs_mw_volume_size  = "12"
ebs_mw_volume_type  = "gp2"
}
