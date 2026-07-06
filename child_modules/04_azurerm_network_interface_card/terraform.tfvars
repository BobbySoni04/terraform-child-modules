nic = {
  nic01 = {
    name                = "frontend-nic"
    location            = "centralindia"
    resource_group_name = "bobby"

    ip_configuration = {
      name                          = "PrivateNic"
      subnet_id                     = "/subscriptions/29b5d103-f574-4d83-9561-b0d43f79ff0e/resourceGroups/bobby/providers/Microsoft.Network/virtualNetworks/bob-vnet/subnets/bob-frontend-subnet"
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.0.1.68"
    }
  }
}