resource "azurerm_resource_group" "logworkspace" {
  name     = "xLogWorkspaceRG"
  location = "koreacentral"
}

resource "azurerm_log_analytics_workspace" "logworkspace" {
  name                = "sanselogwork"
  location            = "${azurerm_resource_group.logworkspace.location}"
  resource_group_name = "${azurerm_resource_group.logworkspace.name}"
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

output "workspaceId" {
    value = azurerm_log_analytics_workspace.logworkspace.workspace_id
}
output "primaryKey" {
    value = azurerm_log_analytics_workspace.logworkspace.primary_shared_key
}