resource "azurerm_subnet" "subnet" {
  name                      = var.subnet_names[count.index]
  virtual_network_name      = var.vnet_name
  resource_group_name       = var.resource_group_name
  address_prefix            = var.subnet_prefixes[count.index]
  network_security_group_id = "${lookup(var.nsg_ids,var.subnet_names[count.index],"")}"
  count                     = length(var.subnet_names)
}
