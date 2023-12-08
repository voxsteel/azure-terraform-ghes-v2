variable "prefix" {
  type    = string
  default = "voxsteelTFprimary"
}

variable "location" {
  type    = string
  default = "uksouth"
}

# Using latest tag will deploy the latest version available in Azure, but you can use specific version, e.g. 3.7.1
variable "ghes-version" {
  type    = string
  default = "latest"
}

variable "linux_admin_username" {
  type        = string
  description = "Username for Virtual Machine administrator account"
  default     = "voxsteel"
}
