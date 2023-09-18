provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "dns" {
  name     = var.rg_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_dns_zone" "primary_dns" {
  name                = var.domain_name
  resource_group_name = azurerm_resource_group.dns.name
  tags                = var.tags
}