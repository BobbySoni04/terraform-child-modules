module "resource_group"{
    source = "../../child_modules/01_azurerm_resource_group"
    resource_group = {
    rg1 = {
        name = "bobby"
        location = "centralindia"
    }
}
}

