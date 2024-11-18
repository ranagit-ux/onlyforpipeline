terraform {
  required_providers {
    azurerm = {
      source =  "hashicorp/azurerm"
      version = "4.4.0"
    }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "testrg1"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "mypipelinestorage"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "pipelinecontainer"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}




provider "azurerm" {
  features {
    
  }
  subscription_id = "b7d2b67b-62bb-4340-a048-868c00c1a9be"
}

