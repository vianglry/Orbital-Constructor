resource "azurerm_subnet" "subnets" {
  for_each             = var.subnet_list
  name                 = join("_", [each.value.subnet_name, "subn"])
  #name example        = subnetname_subn
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = each.value.subnet_address_prefixes
}

resource "azurerm_network_security_group" "network_security_groups" {
  for_each            = var.security_group_details
  name                = join("_", [each.value.security_group_name, "subn_security_group"])
  #name example       = subnetname_Subn_Security_Group
  resource_group_name = var.resource_group_name
  location            = var.location
}


