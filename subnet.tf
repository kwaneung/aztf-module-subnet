resource "azurerm_subnet" "example_subnet" {
  count                = var.subnet_num
  
  name           			 = var.subnet_num == 1 ? format("%s_%s", "subnet", var.subnet_name): format("%s_%s_%02d", "subnet", var.subnet_name, count.index + 1)
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnet_name
  var.subnet_num == 1 ? var.addr_prefix : format("%s", "subnet", var.addr_prefix)
  address_prefix       = var.addr_prefix
  
}
