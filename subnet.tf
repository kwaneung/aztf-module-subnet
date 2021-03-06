resource "azurerm_subnet" "subnet" {
  name                      = format("%s-%s", "subnet", var.subnet_names[count.index])
  virtual_network_name      = var.vnet_name
  resource_group_name       = var.resource_group_name
  address_prefix            = var.subnet_prefixes[count.index]
  count                     = length(var.subnet_names)
  network_security_group_id = var.nsg_id
}
