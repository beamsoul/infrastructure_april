module "mysql" {
  source  = "terraform-aws-modules/autoscaling/aws"
  version = "2.3"
  name = "mysql"


  # Launch configuration
  lc_name = "mysql-lc"
  image_id        = "${var.ami}"
  instance_type   = "${var.instance_type}"
  security_groups = ["${aws_security_group.privateDB.id}"]

 
  # Auto scaling group
  asg_name                  = "mysql-asg"
  vpc_zone_identifier       = ["${aws_subnet.private.id}"]
  health_check_type         = "EC2"
  min_size                  = "${var.min_db_size}"
  max_size                  = "${var.max_db_size}"
  desired_capacity          = "${var.desired_db_capacity}"
  wait_for_capacity_timeout = 0
  tags_as_map = {
      Name = "${var.Name}-Mysql"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}