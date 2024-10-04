resource "azurerm_resource_group" "testing-rg"{
    name = "testing-rg"
    location="centralindia"
}


resource "azurerm_storage_account" "testingstrg" {
    name = "testingstrg"
    location="centralindia"
    resource_group_name = "testing-rg" 
    account_tier = "Standard"
    account_replication_type = "LRS"
}