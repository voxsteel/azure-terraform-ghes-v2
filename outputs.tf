output "public_ip" {
  value       = azurerm_public_ip.main.ip_address
  description = "The IP address of the GitHub Enterprise Server instance"
}

output "VM-admin" {
    description = "Username for Virtual Machine administrator account is:"
    value = var.linux_admin_username
}
