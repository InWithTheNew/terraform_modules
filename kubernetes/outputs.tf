output "kubernetes_storage_rg_name" {
  # depends_on = [ azurerm_resource_group.kubernetes_storage[0].name ]
  value = azurerm_resource_group.kubernetes_storage[*].name
}

output "location" {
  value = var.location
}

output "client_certificate" {
  # depends_on = [ azurerm_kubernetes_cluster.kubernetes.kube_config.0.client_certificate ]
  value     = azurerm_kubernetes_cluster.kubernetes[*].kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  # depends_on = [ azurerm_kubernetes_cluster.kubernetes.kube_config ]
  value     = azurerm_kubernetes_cluster.kubernetes[*].kube_config
  sensitive = true
}