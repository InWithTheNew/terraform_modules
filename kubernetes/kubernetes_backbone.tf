resource "azurerm_kubernetes_cluster" "kubernetes" {
  name                = var.kubernetes_name
  location            = azurerm_resource_group.kubernetes.location
  resource_group_name = azurerm_resource_group.kubernetes.name
  dns_prefix          = var.kubernetes_name

  default_node_pool {
    name       = var.default_node_pool_name
    node_count = var.default_node_pool_count
    vm_size    = var.default_node_pool_nodeSize
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = var.environment
    production = var.production
  }
}