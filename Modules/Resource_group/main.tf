resource "azurerm_resource_group" "Rg-b" {
 for_each = var.child_rg
 name = each.value.name
 location = each.value.location 
}