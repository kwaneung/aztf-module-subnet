# aztf-module-subnet

Resource group and vnet must be created first.

Example) Create vnet
```
module "subnet1" {
  source                            = "git://github.com/kwaneung/aztf-module-subnet.git"

  prefix                            = "exmp"
  
  subnet_name                         = "exmp_subnet"
  
  subnet_num                          = 2
  
  addr_prefix                        = "10.0.0.0/24"

  rg_name                           = azurerm_resource_group.{resource group ID}.name
  
  vnet_name                         = azurerm_resource_group.{vnet ID}.name
  
  tag_key                           = "05"

  tag_value                         = "this"
  
}
```
