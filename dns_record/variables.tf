# name of resource group
variable "rg_name" {
  type = string
}

# resource group location
variable "location" {
  type = string
}

variable "tags" {
  type = map(string)
}

# name of dns zone we want to deploy
variable "domain_name" {
  type = string
}

variable "dns_zone" {
  type = string
}