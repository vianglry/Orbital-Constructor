resource "azurerm_subnet" "subnets" {
  for_each             = var.subnet_list
  name                 = each.value.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = each.value.subnet_address_prefixes
}

resource "azurerm_network_security_group" "network_security_groups" {
  for_each            = var.subnet_list
  name                = each.value.subnet_security_group
  #name example       = subnetname_Subn_Security_Group
  resource_group_name = var.resource_group_name
  location            = var.location
}