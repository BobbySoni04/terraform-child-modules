sub-net = {
  subnet01 = {
    name                 = "bob-frontend-subnet"
    resource_group_name  = "bobby"
    virtual_network_name = "bob-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}