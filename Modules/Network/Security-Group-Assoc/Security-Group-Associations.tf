resource "azurerm_subnet_network_security_group_association" "NSGA" {
  for_each                  = var.subnet_list
  subnet_id                 = "${"
  network_security_group_id = azurerm_network_security_group.[each.key.subnet_security_group].id
}