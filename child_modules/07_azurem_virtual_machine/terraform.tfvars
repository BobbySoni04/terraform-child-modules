linux-vm = {
  linux = {
    name                  = "linux-VM"
    location              = "centralindia"
    resource_group_name   = "bobby"
    network_interface_ids = "/subscriptions/29b5d103-f574-4d83-9561-b0d43f79ff0e/resourceGroups/bobby/providers/Microsoft.Network/networkInterfaces/frontend-nic"
    vm_size               = "Standard_B2ats_v2"

    storage_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
    storage_os_disk = {
      name              = "myosdisk2"
      caching           = "ReadWrite"
      create_option     = "FromImage"
      managed_disk_type = "Standard_LRS"
    }
    os_profile = {
      computer_name  = "bvmhostname"
      admin_username = "adminbobby"
      admin_password = "Password1234!"
    }
    os_profile_linux_config = {
      disable_password_authentication = false
    }
  }
}