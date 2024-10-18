
rg = {
  rg1 = {
    name     = "testrg"
    location = "centralindia"
  }
}
 
vnet={

vnet1={
  name                = "testvnet"
  resource_group_name = "testrg"
  location            = "centralindia"
  address_space       = ["10.0.0.0/16"]


}

}

snet={

snet1={

  name                 = "testsubnet"
  virtual_network_name = "testvnet"
  address_prefixes     = ["10.0.1.0/24"]
  resource_group_name  = "testrg"

}

}

  