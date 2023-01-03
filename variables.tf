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

#variable "ssh_public_key" {
#  type    = string
#  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDHBm/suqBIHmmHJxB7uIwHyHNh9K+JcJ3U0XdFPhB/Cn96FihSUPg4/m+NYfFyB/Kd6cQdIgC2JsiHblFqtSMo9Ma2xP4V+sseDfVWcjy+4stzO5ZJS0/9brK4Wf/+oHdUSKdDQN5ts19OruKzCCTiwh+5sJaSo5FbyiRePVEkNSdcuPhJ/0PAyXn+xhcjjI6Sp8djc/RL9RmD8T1WVnMeSTpWcc+nrdLqUnSbCjg2aaKUoGnrkIBl1MwBtPwjn21EkIK6y1SOj3GJAwGEQcde3gTy93P0bxHv/9+IJscGka83WoNWvI+WBdXoXWEa9Jx9eBHkdUtAOv1ZelJlthdSrhCCzNpOkgvrTx93VcSkNbgNMeV8Kg7b6nUl7pWOlfNjqAySrf51cyUbwnbKlOAoNYXUHcnt25DiajIx5xJpvbjh4bDUoQ7dTGAx1Lla3ReiJji2tfnYSo3JLZeKobOLTIqJ090Er1XAGWhATQ0Zm15tiUcnKl+Ji8mdpDj6zNIZghKq3Cd9BXCH8dgz7bQDdvBAGUxjZBTE0wqLlZpwND4pD31Xe6h/Vcpg31lqsPxPwcH/rEXtOXZNBzlG+q2dmkReMFDeRqE1x2xxrwMoYSxgvmYF1kAUupiScwEiqHdaulZ/xKlrssCmcfgBI3bctYwmgyCD+rZhjlmB4Y47VQ== voxsteel@github.com"
#}
