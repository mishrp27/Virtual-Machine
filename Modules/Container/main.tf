resource "azurerm_storage_container" "cont-block" {
  for_each= var.child_cont
  name = each.value.name
  storage_account_name = each.value.storage_account_name
  container_access_type = each.value.container_access_type
}