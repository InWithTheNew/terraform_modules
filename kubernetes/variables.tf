variable "create" {
  type = boolean
  default = false
}
  
variable "location" {
  type    = string
  default = "uksouth"
}

variable "kubernetes_rg_name" {
  type    = string
}

variable "name" {
  type = string
}

variable "kubernetes_storage_rg_name" {
  type    = string
}

variable "dns_rg_name" {
  type    = string
}

variable "default_node_pool_name" {
  type    = string
  default = "default"
}

variable "default_node_pool_count" {
  type    = number
  default = 1
}

variable "default_node_pool_node_size" {
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

variable "tags" {
  type = map(string)
}