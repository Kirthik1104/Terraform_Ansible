variable "ami" {
  type = string
}

variable "instance_type" {
    type = list(string)
    
}

variable "name" {
    type = string
  
}

variable "region" {
    type = string
  
}

variable "access_key" {
    type = string
  
}

variable "secret_key" {
    type = string
  
}

variable "instance_types" {
    type = map(string)
    description = "Dynamically Mapping instance types based on the workspace environment"
}

variable "key_name" {
    type = string
    description = "key vaue pair"
  
}