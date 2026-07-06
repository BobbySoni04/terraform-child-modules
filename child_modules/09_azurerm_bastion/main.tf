resource "azurerm_subnet" "bastion-subnet" {
  for_each             = var.bastion-subnet
  name                 = each.value.name
  virtual_network_name = azurerm_virtual_network.dev-vnet[each.value.virtual_network_key].name
  resource_group_name  = azurerm_resource_group.resource-group[each.value.resource_group_key].name
  address_prefixes     = each.value.address_prefixes
}

resource "azurerm_public_ip" "public-ip-bastion" {
  for_each            = var.public-ip
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = each.value.allocation_method
  sku                 = each.value.sku
}


resource "azurerm_bastion_host" "bastion-host" {
  for_each            = var.bastion-host
  name                = each.value.name
  location            = each.value.location
  resource_group_name = azurerm_resource_group.resource-group[each.value.resource_key].name

  ip_configuration {
    name                 = each.value.ip_configuration.name
    subnet_id            = azurerm_subnet.bastion-subnet[each.value.bastionsubnet_key].id
    public_ip_address_id = azurerm_public_ip.public-ip-bastion[each.value.public_key].id
  }
}