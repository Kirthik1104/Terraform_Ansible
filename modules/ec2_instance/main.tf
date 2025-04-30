resource "aws_instance" "instances" {
    instance_type = var.instance_type
    ami = var.ami
    key_name = var.key_name
    tags = {
        name = var.name
    }
  
}