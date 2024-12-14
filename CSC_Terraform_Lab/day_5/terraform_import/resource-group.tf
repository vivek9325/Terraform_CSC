resource "azurerm_resource_group" "vkrg2" {

    name = "vkrg2"
    location = "eastus"

    tags = {

        topic = "import"
    }


}