resource "azurerm_public_ip" "public-ip-subnet-nic" {
  for_each            = var.public-ip
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = each.value.allocation_method
  sku                 = each.value.sku
}