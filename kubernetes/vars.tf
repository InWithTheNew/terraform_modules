variable "default_location" {
  type    = string
  default = "uksouth"
}

variable "kubernetes_rg_name" {
  type    = string
}

variable "kubernetes_name" {
  type = string
}

variable "environment" {
  type = string
}

variable production {
  type = bool
  default = false
}
variable "kubernetes_storage_rg_name" {
  type    = string
}

variable "dns_rg_name" {
  type    = string
}

variable "default_node_pool_name" {
  type    = string
}

variable "default_node_pool_count" {
  type    = number
  default = 1
}

variable "default_node_pool_nodeSize" {
  type    = string
  default = "Standard_B2ms"
}

variable "namespaces" {
  type    = list(string)
}

variable "primary_domain_name" {
  type = string
  default = "amand.dev"
}