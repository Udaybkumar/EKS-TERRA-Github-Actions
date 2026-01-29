variable "cluster-name" {default = "EKS-Cluster-${var.env}"}
variable "cidr-block" {default = "10.0.0.0/24"}
variable "vpc-name" {default = "EKS-VPC-${var.env}"}
variable "env" {default = "dev"}
variable "igw-name" {default = "EKS-IGW-${var.env}"}
variable "pub-subnet-count" {default = 2}
variable "pub-cidr-block" {
  type = list(string)
}
variable "pub-availability-zone" {
  type = list(string)
}
variable "pub-sub-name" {default = "EKS-Public-Subnet-${var.env}"}
variable "pri-subnet-count" {default = 2  }
variable "pri-cidr-block" {
  type = list(string)
}
variable "pri-availability-zone" {
  type = list(string)
}
variable "pri-sub-name" {default = "EKS-Private-Subnet-${var.env}"}
variable "public-rt-name" {default = "EKS-Public-Route-Table-${var.env}"}
variable "private-rt-name" {default = "EKS-Private-Route-Table-${var.env}"}
variable "eip-name" {default = "EKS-EIP-${var.env}"}
variable "ngw-name" {default = "EKS-NAT-Gateway-${var.env}"}
variable "eks-sg" {default = "EKS-Security-Group-${var.env}"}

#IAM
variable "is_eks_role_enabled" {
  type = bool
}
variable "is_eks_nodegroup_role_enabled" {
  type = bool
}

# EKS
variable "is-eks-cluster-enabled" { default = true }
variable "cluster-version" { default = "1.29" }
variable "endpoint-private-access" { default = false }
variable "endpoint-public-access" { default = true  }
variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))
}
variable "ondemand_instance_types" {
  default = ["t3.micro"]
} 
variable "spot_instance_types" { default = ["t3.micro"]}
variable "desired_capacity_on_demand" { default = 1}
variable "min_capacity_on_demand" { default = 1 }
variable "max_capacity_on_demand" { default = 3 }
variable "desired_capacity_spot" { default = 1}
variable "min_capacity_spot" { default = 1 }
variable "max_capacity_spot" { default = 3 }