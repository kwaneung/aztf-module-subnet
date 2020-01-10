output "id" {
  value = azurerm_subnet.subnet[count.index].id
}
