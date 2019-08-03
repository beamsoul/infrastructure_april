resource "aws_vpc" "dev" {
  cidr_block = "10.0.1.0/24"


  tags = {
      Name = "${var.Name}"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}