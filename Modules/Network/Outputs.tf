output "subnets_with_ids" {
  value = {
    for subnet in azurerm_subnet.subnets: subnet.name => subnet.id
  }
}

output "security_groups_with_ids" {
  value = {
    for secgroup in azurerm_network_security_group.network_security_groups: secgroup.name => secgroup.id
  }
}