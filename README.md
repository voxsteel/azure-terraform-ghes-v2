
## Creating a GHES server in Azure using TerraForm

This procedure will create a virtual machine in Azure with GitHub Enterprise Server installed automatically using TerraForm. All the needed resources will be created without interaction.

## Instructions

NOTE: This procedure assumes you have already [azure cli](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-macos) and [terraform](https://developer.hashicorp.com/terraform/downloads) installed and configured with GitHub Azure account. Also it expects there is a RSA public key. If you dont have one create one quickly with the following command:

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

### Create Virtual Machine:

Edit [variables.tf](https://github.com/voxsteel/azure-terraform-ghes-v2/blob/main/variables.tf) and replace `voxsteel` with your GitHub @handle. Or any other prefix, it has to be unique.

Edit [main.tf](https://github.com/voxsteel/azure-terraform-ghes-v2/blob/main/main.tf) and update the path with the location of your RSA key `key_data = file("~/.ssh/unused/id_rsa.pub")`

All image versions of GitHub Enterprise available in Azure can be found using this command:

`az vm image list --all -f GitHub-Enterprise | grep '"urn":' | sort -V`

Run commands:

1. `terraform init` - The terraform init command initializes a working directory containing Terraform configuration files. This is the first command that should be run after writing a new Terraform configuration or cloning an existing one from version control. It is safe to run this command multiple times.
2. `terraform plan` - The terraform plan command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure
3. `terraform apply` - The `terraform apply` command executes the actions proposed in a Terraform plan.

After the `terraform apply` it will finish with the outputs (as example):

```
Outputs:

VM-PUBLIC-IP = "20.120.24.233"
VM-admin = "voxsteel"
```

### Destroy Virtual Machine:

To destroy resources (when you finish troubleshooting): `terraform destroy` and confirm with `yes` when ask `Enter a value:`


### Other resources
https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine
