output "resource_group_name" {
  description = "Name of the Resource Group"
  value = var.resource_group_name
}
output "location" {
  description = "Location of the Resource Group"
  value = var.location
}
output "aks_cluster_name" {
  description = "Name of the AKS Cluster"
  value = azurerm_kubernetes_cluster.aks.name
}
output "dns_prefix_name" {
  description = "Name of the DNS"
  value = var.dns_prefix_name
}