output "public_ip" {
  description = "The IP address of the GitHub Enterprise Server instance"
  value       = azurerm_public_ip.main.ip_address
}

output "VM-admin" {
    description = "Username for Virtual Machine administrator account is:"
    value = var.linux_admin_username
}
