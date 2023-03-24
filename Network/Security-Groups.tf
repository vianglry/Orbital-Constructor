
# resource "azurerm_network_security_group" "subn_security_group" {
#   for_each            = toset(var.security_group_list)
#   name                = join("_", [each.key, "Subn_Security_Group"])
#   resource_group_name = var.resource_group_name
#   location            = var.location
# }

resource "azurerm_network_security_group" "subn_security_group" {
  for_each            = var.security_group_list
  name                = join("_", [each.key, "Subn_Security_Group"])
  #name example       = 
  resource_group_name = var.resource_group_name
  location            = var.location
}
