data "azurerm_resources" "virtual_networks" {
  type                = "Microsoft.Network/virtualNetworks"
  resource_group_name = var.resource_group_name
}

data "azurerm_resources" "virtual_networks_security_groups" {
  type                = "Microsoft.Network/networkSecurityGroups"
  resource_group_name = var.resource_group_name
}

data "azurerm_subnet" "virtual_networks_subnets" {
  for_each             = toset(data.azurerm_resources.virtual_networks.resources.*.name)
  name                 = "${replace(each.value, "vnet", "")}subnet"
  virtual_network_name = each.value
  resource_group_name  = var.resource_group_name
}
