provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key

}
module "instance_1" {
  source        = "./modules/ec2_instance"
  ami           = var.ami
  instance_type = var.instance_type[0]
  name = var.name


}

module "instance_2" {
  source        = "./modules/ec2_instance"
  ami           = var.ami
  instance_type = var.instance_type[0]
  name = var.name

}

module "instance_3" {
  source        = "./modules/ec2_instance"
  ami           = var.ami
  instance_type = lookup(var.instance_types, terraform.workspace, var.instance_type[0])
  name = var.name
  key_name = var.key_name
}