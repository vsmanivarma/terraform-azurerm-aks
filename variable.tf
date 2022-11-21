variable "resource_group_name" {
  description = "Name of the Resource Group"
  type = string
}
variable "location" {
  description = "Location of the Resource Group"
  type = string
}
variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  type = string
}
variable "dns_prefix_name" {
  description = "Name of the DNS Prefix"
  type = string 
}
variable "node_pool" {
  type = object({
  name = string
  node_count = string
  vm_size = string
})
default = {
  name = "demonodepool"
  node_count = "1"
  vm_size = "Standard_D2_V2"
}
}
variable "identity" {
  description = "Type of assignment"
  type = string

  validation {
    condition = contains(["SystemAssigned", "UserAssigned"], var.identity)
    error_message = "Inavlid identity must be SystemAssigned or UserAssigned."
  }
 
}
variable "tags" {
  description = "Type of Environment"
  type = map(string)
  default = {}
}