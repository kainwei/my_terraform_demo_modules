# Create a subnet to launch our instances into
resource "aws_subnet" "default" {
  vpc_id                  = "${var.vpc_output_id}"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
}