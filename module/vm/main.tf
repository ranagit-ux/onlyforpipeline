data "azurerm_network_interface" "nic" {
  name                = "testnic"
  resource_group_name = "testrg"
}

resource "azurerm_windows_virtual_machine" "testvm" {
    name="testvm"
    location = "centralindia"
    resource_group_name = "testrg"
    size = "Standard_F2"
    network_interface_ids = [data.azurerm_network_interface.nic.id]
    admin_username = "rana"
    admin_password = "rana@12345"
    
    
    os_disk {
      caching = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
    source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}