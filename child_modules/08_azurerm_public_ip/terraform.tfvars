public-ip = {
  pip01 = {
    name                = "frontend-machine-ip"
    location            = "centralindia"
    resource_group_name = "bobby"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
}