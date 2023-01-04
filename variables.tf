variable "prefix" {
  type    = string
  default = "voxsteelTF"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "ghes-version" {
  type    = string
  default = "3.7.1"
}

variable "linux_admin_username" {
  type        = string
  description = "Username for Virtual Machine administrator account"
  default     = "voxsteel"
}
