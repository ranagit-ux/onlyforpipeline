data "azurerm_subnet" "sub" {
  name                 = "testsubnet"
  virtual_network_name = "testvnet"
  resource_group_name  = "testrg"
}

resource "azurerm_network_interface" "nic" {

  name                = "testnic"
  location            = "centralindia"
  resource_group_name = "testrg"
  ip_configuration {
    name                          = "ipname"
    subnet_id = data.azurerm_subnet.sub.id
    private_ip_address_allocation = "Dynamic"
  }
}