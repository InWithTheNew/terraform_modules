output "primary_dns_zone_name" {
  value = azurerm_dns_zone.primary_dns.name
}

output "primary_dns_resource_group" {
  value = azurerm_resource_group.primary_dns.name
}