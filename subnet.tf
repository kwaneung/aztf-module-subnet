resource "azurerm_subnet" "example" {
  count               = var.subnet_num
  
  name           			= var.subnet_num == 1 ? var.subnet_name: format("%s_%02d", var.subnet_name, count.index + 1)
  resource_group_name = var.rg_name
  virtual_network_name = var.vnet_name
  address_prefix       = var.addr_prefix
  
  tags = {
    (var.tag_key) = var.tag_value
  }
  
}
