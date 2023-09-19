# name of resource group
variable "rg_name" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "domain_name" {
  type = string
}

variable "name" {
  type = string
}

variable "target" {
  type = string
}

variable "ttl" {
  type    = number
  default = 300
}
