resource "azurerm_resource_group" "rg" {
  name     = "${var.project_name}-rg"
  location = var.azure_location
}

resource "azurerm_storage_account" "storage" {
  name                     = "${replace(var.project_name, "-", "")}sa123" # must be globally unique, lowercase, 3-24 chars
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "blob_container" {
  name                  = "app-data"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}
