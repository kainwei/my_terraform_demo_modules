module "vpc" {
  source = "./modules/vpc"
}

module "subnet" {
  source = "./modules/subnet"
  vpc_output_id = "${module.vpc.id}"

}

module "ec2" {
  source = "./modules/ec2"
  vpc_output_id = "${module.vpc.id}"
  subnet_output_id = "${module.subnet.id}"
}

module "elb" {
  source = "./modules/elb"
  vpc_output_id = "${module.vpc.id}"
  subnet_output_id = "${module.subnet.id}"
  ec2_output_id = "${module.ec2.id}"
}

# Specify the provider and access details
provider "aws" {
  region = "${var.aws_region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}