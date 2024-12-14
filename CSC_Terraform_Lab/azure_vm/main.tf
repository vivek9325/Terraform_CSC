resource "azurerm_resource_group" "vk_resource_group" {

    name = local.resource_name
    location = var.location   
  
}

resource "azurerm_virtual_network" "vnet" {

    name = var.vnet_name
    location = var.location
    resource_group_name = local.resource_name
    address_space = local.vnet_address_space
  #  tags = var.common_tags
  
}

resource "azurerm_subnet" "vk_sub" {

    name = var.vk_subnet_name
    resource_group_name = local.resource_name
    virtual_network_name = var.vnet_name
    address_prefixes = ["10.0.2.0/24"]
  
}

resource "azurerm_public_ip" "mypublicip" {

    name = var.ip_address
    resource_group_name = local.resource_name
    location = var.location
    allocation_method = var.allocation_type
    
  
}

resource "azurerm_network_interface" "vk_vnic" {

    name = var.vk_vnic
    location = var.location
    resource_group_name = local.resource_name

    ip_configuration {
      name = "internal"
      subnet_id = azurerm_subnet.vk_sub.id
      private_ip_address_allocation = "Dynamics"
      public_ip_address_id = azurerm_public_ip.mypublicip.id

    }
  
}

resource "azurerm_network_security_group" "vk_nsg" {

    name = "vk-nsg"
    location = var.location
    resource_group_name = local.resource_name

    security_rule {
     name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

    }
  
}

resource "azurerm_windows_virtual_machine" "vk_win" {

    name = "vkwinvm"
    resource_group_name = local.resource_name
    location = var.location
    size = "Standard_D2s_v3"
    admin_username = "demouser"
    admin_password = "Azure@123"

    network_interface_ids = [azurerm_network_interface.vk_vnic.id]

    os_disk {
      
      caching = "ReadWrite"
      storage_account_type = "Standard_LRS"

    }

    source_image_reference {
      publisher = "MicrosoftWindowsServer"
      offer = "WindowsServer"
      sku = "2019-DataCenter"
      version = "latest"

    }

    depends_on = [ azurerm_network_interface.vk_vnic ]
  
}

