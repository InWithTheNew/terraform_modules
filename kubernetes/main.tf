provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "kubernetes" {
  name     = var.kubernetes_rg_name
  location = var.location
  tags = var.tags
}

resource "azurerm_resource_group" "kubernetes_storage" {
  name     = var.kubernetes_storage_rg_name
  location = var.location
  tags = var.tags
}

resource "azurerm_kubernetes_cluster" "kubernetes" {
  name                = var.name
  location            = azurerm_resource_group.kubernetes.location
  resource_group_name = azurerm_resource_group.kubernetes.name
  dns_prefix          = var.name

  default_node_pool {
    name       = var.default_node_pool_name
    node_count = var.default_node_pool_count
    vm_size    = var.default_node_pool_node_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}