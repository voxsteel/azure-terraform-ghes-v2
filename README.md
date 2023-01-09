
## Creating a GHES server in Azure using TerraForm

This procedure will create a virtual machine in Azure with GitHub Enterprise Server installed automatically using TerraForm. All the needed resources will be created without interaction.

## [](https://ghe.io/lgluisgaspar/ghes-procedures/tree/main/terraform/azure/vm-syslog-ng#instructions)Instructions

NOTE: This procedure assumes you have already [azure cli](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-macos) and [terraform](https://developer.hashicorp.com/terraform/downloads) installed and configured with GitHub Azure account. Also it expects there is a RSA public key. If you dont have one create one quickly with the following command:

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

### Create Virtual Machine:

Edit [variables.tf](https://github.com/voxsteel/azure-terraform-ghes-v2/blob/main/variables.tf) and replace `voxsteel` with your GitHub @handle.

Edit [main.tf](https://github.com/voxsteel/azure-terraform-ghes-v2/blob/main/main.tf) and update the path with the location of your RSA key `key_data = file("~/.ssh/unused/id_rsa.pub")`

Run commands:

1. `terraform init`
2. `terraform plan`
3. `terraform apply -auto-approve`

After the `terraform apply` it will finish with the outputs (as example):

```
Outputs:

VM-PUBLIC-IP = "172.174.80.179"
VM-admin = "voxsteel"
```

### Destroy Virtual Machine:

To destroy resources (when you finish troubleshooting): `terraform destroy` and confirm with `yes` when ask `Enter a value:`


### Other resources
https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine
