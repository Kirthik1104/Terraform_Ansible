output "instance" {
  value = [module.instance_1.instances_ip, module.instance_2.instances_ip, module.instance_3.instances_ip]
}

