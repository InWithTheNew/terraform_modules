output "kubernetes_storage_rg_name" {
  value = azurerm_resource_group.kubernetes_storage.name
}

output "location" {
  value = var.location
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.kubernetes.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.kubernetes.kube_config
  sensitive = true
}