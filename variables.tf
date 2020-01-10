variable "subnet_names" {
  description = "A list of public subnets inside the vNet."
  default     = ["subnet1", "subnet2", "subnet3"]
}

variable "vnet_name" {
  description = "Name of Vnet"
}

variable "resource_group_name" {
  description = "Default resource group name that the network will be created in."
}

variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet."
  default     = ["10.0.1.0/24"]
}

variable "tags" {
  description = "The tags to associate with your network and subnets."

  default = {
    tag1 = "test"
    tag2 = "subnet_module"
  }
}

variable "nsg_id" {
  description = "nsg id"
  
  }

