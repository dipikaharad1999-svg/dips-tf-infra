resource "azurerm_resource_group" "test-rg1" {
    for_each = var.resource_variable
  name     = each.value.name
  location = each.value.location
}
