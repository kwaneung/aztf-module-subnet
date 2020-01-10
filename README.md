# aztf-module-subnet

This module should be preceded by Vnet and NSG

Example) Create vnet
```
module "subnet" {
  source                            = "git://github.com/kwaneung/aztf-module-subnet.git"

  subnet_names = ["web", "was", "db"]

  vnet_name = module.vnet.vnet_name

  resource_group_name = azurerm_resource_group.rg.name

  subnet_prefixes = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

  tags = {
      test = "nsg_module"
    }

  nsg_id = "${module.nsg.id}"
}
```
