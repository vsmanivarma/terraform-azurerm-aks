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
variable "dnsprefix" {
  description = "Name of the DNS Prefix"
  type = string 
}
variable "node_pool" {
  type = object({
  name = string
  node_count = string
  vm_size = "Standard_D2_V2"
})
}