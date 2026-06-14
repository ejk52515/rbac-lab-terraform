# Read Lab 1's resource group — gives us the subscription context
data "azurerm_resource_group" "lab" {
  name = var.resource_group_name
}

# Read FS01 by name — gives us its full Azure resource ID.
# That ID is the scope for all three role assignments in rbac.tf.
# Scoping to the VM resource ID = role applies ONLY to FS01.
# Scoping to the resource group ID = role applies to DC01, FS01, CLIENT01, and everything else.
data "azurerm_virtual_machine" "fs01" {
  name                = var.vm_name
  resource_group_name = data.azurerm_resource_group.lab.name
}