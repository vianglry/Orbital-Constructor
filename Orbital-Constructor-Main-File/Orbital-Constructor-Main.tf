locals {
  resource_group_name   = join ("_", [var.resource_group_name_long, "RG"])
  location_name         = var.location
  virtual_network_name  = join ("_", [var.resource_group_name_long, "network"])
  address_space         = var.address_space
  public_ip_name        = join ("_", [var.resource_group_name_short, "public_ip"])
  ip_allocation         = var.public_ip_allocation
}


resource "azurerm_resource_group" "orbital_constructor" {
  name     = local.resource_group_name
  location = local.location_name
}

resource "azurerm_virtual_network" "orbital_constructor_network" {
  name                = local.virtual_network_name
  resource_group_name = local.resource_group_name
  location            = local.location_name
  address_space       = [local.address_space]
}

resource "azurerm_public_ip" "OC_public_ip" {
  name                = local.public_ip_name
  resource_group_name = local.resource_group_name
  location            = local.location_name
  allocation_method   = local.ip_allocation
}

module "create_the_orbital_constructor_network" {
  source = "./Modules/Network"

  resource_group_name          = local.resource_group_name
  location                     = local.location_name
  virtual_network_name         = local.virtual_network_name
  subnet_list                  = var.Orbital_Constructor_subnets
  security_group_list          = var.Orbital_Constructor_Security_Groups
}