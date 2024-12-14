resource "azurerm_resource_group" "vkrg1"{
    name ="vkrg1"
    location = "East US"
}

resource "random_string" "myrandom"{
    length = 16
    upper = false
    special = false
}

resource "azurevm_storage_account" "mysa"{

    name = "mysa${random_string.myrandom.id}"
    resource_group_name = azurerm_resource_group.vkrg1.name
    location = azurerm_resource_group.vkrg1.location
    account_tier = "Standard"
    account_replication_type = "GRS"
    #account_encryption_type = "Microsoft.Storage"

    tag = {
        environement = "staging"
    }
}

