resource "azurerm_public_ip" "publicip" {

    name = "testip"
    location = "centralindia"
    resource_group_name = "testrg"
    allocation_method = "Static"
}