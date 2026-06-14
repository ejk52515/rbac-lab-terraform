terraform {
  backend "azurerm" {
    resource_group_name  = "RG-TerraformState"
    storage_account_name = "tfstatentfslabejk01"
    container_name       = "tfstate"
    key                  = "rbac-lab.terraform.tfstate"
    # Lab 1 uses: ntfs-lab.terraform.tfstate
    # Both files live in the same container without touching each other
  }
}