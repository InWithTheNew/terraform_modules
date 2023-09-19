variable "create" {
  type    = bool
  default = false
  description = "Declares whether the resources in this module should be created."
}

variable "location" {
  type    = string
  default = "uksouth"
  description = "Location of the resources created."
}

variable "kubernetes_rg_name" {
  type = string
  description = "Name of the resource group that the Kubernetes cluster will be created in."
}

variable "name" {
  type = string
  description = "Name of the Kubernetes cluster."
}

variable "kubernetes_storage_rg_name" {
  type = string
  description = "Name of the Resource Group that the Kubernetes storage will be stored."
}

variable "dns_rg_name" {
  type = string
  description = "Name of the resource group referenced for the dns zone."
}

variable "default_node_pool_name" {
  type    = string
  default = "default"
  description = "The name of the default Kubernetes nodepool."
}

variable "default_node_pool_count" {
  type    = number
  default = 1
  description = "The count of nodes in the default nodepool."
}

variable "default_node_pool_node_size" {
  type    = string
  default = "Standard_B2ms"
  description = "The node size of the default nodepool."
}

variable "namespaces" {
  type = list(string)
  description = "A list of namespaces to be created in the cluster."
}

variable "primary_domain_name" {
  type    = string
  default = "amand.dev"
  description = "Name of the DNS zone."
}

variable "tags" {
  type = map(string)
  description = "Tags across all resources created."
}