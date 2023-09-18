provider "azurerm" {
  features {}
}

resource "azurerm_dns_cname_record" "test" {
  name                = var.name
  zone_name           = var.domain_name
  resource_group_name = var.rg_name
  ttl                 = var.ttl
  record              = var.target
  tags = var.tags
}