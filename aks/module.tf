module "aks" {
    source = "./"
    version = "1.0.0"
    name = var.resource_group_name
    location = var.location
    aks_cluster_name = var.aks_cluster_name.name
    tags = var.tags
}