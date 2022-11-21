resource "random_string" "random" {
  length           = 8
  special          = false
}
resource "azurerm_resource_group" "rg" {
  name = var.resource_group_name
  location = var.location
}
resource "azurerm_kubernetes_cluster" "aks" {
  name = var.aks_cluster_name
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  dns_prefix = var.dns_prefix_name
  
  default_node_pool {
    name = var.node_pool.name
    node_count = var.node_pool.node_count
    vm_size = var.node_pool.vm_size
  }  
   
  identity {
     type = var.identity
  }

   tags = {
     "Environment" = "var.tag"
   }
}
