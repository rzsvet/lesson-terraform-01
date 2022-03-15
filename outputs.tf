output "virtual_networks_list" {
  value = ["${data.azurerm_resources.virtual_networks.resources.*.name}"]
}

output "virtual_networks_object" {
  value = { for v in data.azurerm_resources.virtual_networks.resources : v.name => v }
}

output "virtual_networks_security_groups_list" {
  value = ["${data.azurerm_resources.virtual_networks_security_groups.resources.*.name}"]
}

output "virtual_networks_security_groups_object" {
  value = { for v in data.azurerm_resources.virtual_networks_security_groups.resources : v.name => v }
}

output "virtual_networks_subnets" {
  value = data.azurerm_subnet.virtual_networks_subnets
}

