resource "azurerm_virtual_network" "vknet" {

  name                = "vknet"
  location            = azurerm_resource_group.vk-rg.location
  resource_group_name = azurerm_resource_group.vk-rg.name
  address_space       = ["10.0.0.0/16"]

  tags = {
    "owner"     = "vivek"
    environment = "Dev"
  }
}

resource "azurerm_subnet" "vksubnet" {

  name                 = "vksubnet"
  resource_group_name  = azurerm_resource_group.vk-rg.name
  virtual_network_name = azurerm_virtual_network.vknet.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_public_ip" "vkpublicip" {

  depends_on = [azurerm_virtual_network.vknet,
    azurerm_subnet.vksubnet
  ]

  name                = "vkpublicip-1"
  resource_group_name = azurerm_resource_group.vk-rg.name
  location            = azurerm_resource_group.vk-rg.location
  allocation_method   = "Static"
  domain_name_label   = "app1-${random_string.vkrandom.id}"
  tags = {
    environment = "Dev"
  }

}

resource "azurerm_network_interface" "vknic" {

  name                = "vknic1"
  location            = azurerm_resource_group.vk-rg.location
  resource_group_name = azurerm_resource_group.vk-rg.name

  ip_configuration {

    name                          = "internal"
    subnet_id                     = azurerm_subnet.vksubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.vkpublicip.id

  }

}
