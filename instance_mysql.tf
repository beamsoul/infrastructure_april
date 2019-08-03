resource "aws_instance" "mysql" {
    ami = "${var.ami}"
    instance_type  =  "${var.instance_type}"
    key_name = "${var.key_name}"
    subnet_id = "${aws_subnet.public.id}"
    user_data = "${file("userdata.sh")}"
    associate_public_ip_address = "true"
    tags = {
      Name = "${var.Name}.MYSQL"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}