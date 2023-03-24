resource "azurerm_subnet_network_security_group_association" "NSGA" {
  for_each                  = var.security_group_details
  subnet_id                 = azurerm_subnet.subnets[each.value].id
  network_security_group_id = azurerm_network_security_group.subn_security_group[each.key].id
}

# resource "azurerm_subnet_network_security_group_association" "barrier_SGA" {
#   subnet_id                 = azurerm_subnet.barrier_subn.id
#   network_security_group_id = azurerm_network_security_group.barrier_subn_security_group.id
# }

# resource "azurerm_subnet_network_security_group_association" "management_SGA" {
#   subnet_id                 = azurerm_subnet.managment_subn.id
#   network_security_group_id = azurerm_network_security_group.management_subn_security_group.id
# }

# resource "azurerm_subnet_network_security_group_association" "high_trust_SGA" {
#   subnet_id                 = azurerm_subnet.high_trust_subn.id
#   network_security_group_id = azurerm_network_security_group.high_trust_subn_security_group.id
# }

# resource "azurerm_subnet_network_security_group_association" "low_trust_SGA" {
#   subnet_id                 = azurerm_subnet.low_trust_subn.id
#   network_security_group_id = azurerm_network_security_group.low_trust_subn_security_group.id
# }