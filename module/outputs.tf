output "nat_public_ip" {
  description = "Public Elastic IP of the NAT Gateway"
  # Matches: resource "aws_eip" "ngw-eip" in your code
  value       = aws_eip.ngw-eip.public_ip
}

output "cluster_endpoint" {
  description = "Public URL to access the EKS API"
  # We use [0] because your EKS resource uses 'count'
  value       = aws_eks_cluster.eks[0].endpoint
}