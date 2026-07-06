module "resource_group"{
    source = "../../child_modules/01_azurerm_resource_group"
   resource_group = var.resource_group
}

