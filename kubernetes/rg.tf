resource "azurerm_resource_group" "kubernetes" {

  name     = var.kubernetes_rg_name
  location = var.default_location
  # tags = 
}

resource "azurerm_resource_group" "kubernetes_storage" {

  name     = var.kubernetes_storage_rg_name
  location = var.default_location
  # tags = 
}