bastion-subnet = {
  azurebastionsubnet = {
    name                = "AzureBastionSubnet"
    virtual_network_key = "bob-vnet"
    resource_group_key  = "bobby"
    address_prefixes    = ["10.0.3.0/24"]
  }
}

public-ip = {
  bastionhostpip = {
    name                = "bastion-ip"
    location            = "centralindia"
    resource_group_name = "bobby"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
}


bastion-host = {
  bastion01 = {
    name         = "bastion02"
    location     = " centralindia"
    resource_key = "bobby"
    ip_configuration = {
      name       = "bastionhostConfig"
      subnet_key = "azurebastionsubnet"
      public_key = "bastionhostpip"
    }
  }
}