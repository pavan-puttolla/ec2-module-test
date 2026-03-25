module "ec2" {
source = "../terraform-aws-instance"
#project = "roboshop"
project = var.project_name
ami_id = data.aws_ami.joindevops.id
environment = var.env
sg_ids = var.sg_ids
instance_type = "t3.small"
tags = { 
    Name = "${var.project_name}-${var.env}-${var.component}"
    component = var.component
  }
}
