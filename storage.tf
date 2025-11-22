resource "azurerm_resource_group" "rg" {
  name     = "${var.project_name}-rg"
  location = var.azure_location
}

resource "azurerm_storage_account" "storage" {
  name                     = "multiclouddemosa123" # must be unique & lowercase
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "blob_container" {
  name                  = "app-data"
  storage_account_id    = azurerm_storage_account.storage.id
  container_access_type = "private"
}
