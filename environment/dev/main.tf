module "resource_grop" {
    
    source = "../../module/rg"
    rgmn = var.rg
}
module "vnet" {
    depends_on = [ module.resource_grop ]
    source = "../../module/vnet"
  vnetwork = var.vnet
}
module "subnet" {
 depends_on = [ module.vnet,module.resource_grop ]
  
  source = "../../module/subnet"
subnet=var.snet

}
module "nic" {
    depends_on = [ module.subnet,module.resource_grop,module.vnet ]
    source = "../../module/nic"
  
}
module "public_ip" {
    depends_on = [ module.resource_grop ]
    source = "../../module/public_ip"
  
}
module "vm" {
    depends_on = [ module.resource_grop,module.nic,module.vnet,module.subnet,module.public_ip ]
    source = "../../module/vm"
  
}