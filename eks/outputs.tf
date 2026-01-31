# File: ./outputs.tf

output "project_nat_public_ip" {
  description = "The Static Public IP of your NAT Gateway"
  value       = module.eks.nat_public_ip
}

output "project_api_endpoint" {
  description = "The Command Line URL for your Cluster"
  value       = module.eks.cluster_endpoint
}