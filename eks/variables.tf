variable "aws-region" { default = "ap-southeast-1" }
variable "env" { default = "dev" }
variable "cluster-name" { default = "eks-cluster" }
variable "vpc-cidr-block" { default = "10.0.0.0/16" }
variable "vpc-name" { default = "dev-vpc" }
variable "igw-name" { default = "dev-igw" }
variable "pub-subnet-count" { default = "2" }
variable "pub-cidr-block" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}
variable "pub-availability-zone" {
  type    = list(string)
  default = ["ap-southeast-1a", "ap-southeast-1b"]
}
variable "pub-sub-name" { default = "dev-pub-subnet" }
variable "pri-subnet-count" { default = "2" }
variable "pri-cidr-block" {
  type    = list(string)
  default = ["10.0.3.0/24", "10.0.4.0/24"]

}
variable "pri-availability-zone" {
  type    = list(string)
  default = ["ap-southeast-1a", "ap-southeast-1b"]
}
variable "pri-sub-name" { default = "dev-pri-subnet" }
variable "public-rt-name" { default = "dev-public-rt" }
variable "private-rt-name" { default = "dev-private-rt" }
variable "eip-name" { default = "dev-eip" }
variable "ngw-name" { default = "dev-ngw" }
variable "eks-sg" { default = "dev-eks-sg" }


# EKS
variable "is-eks-cluster-enabled" { default = true }
variable "cluster-version" { default = "1.33" }
variable "endpoint-private-access" { default = true }
variable "endpoint-public-access" { default = true }
variable "ondemand_instance_types" {
  default = ["t3.micro"]
}

variable "spot_instance_types" { default = ["t3.micro"] }
variable "desired_capacity_on_demand" { default = 1 }
variable "min_capacity_on_demand" { default = 1 }
variable "max_capacity_on_demand" { default = 3 }
variable "desired_capacity_spot" { default = 1 }
variable "min_capacity_spot" { default = 1 }
variable "max_capacity_spot" { default = 3 }

variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))
  default = [
    {
      name    = "vpc-cni"
      version = "v1.20.0-eksbuild.1"
    },
    {
      name    = "coredns"
      version = "v1.12.2-eksbuild.4"
    },
    {
      name    = "kube-proxy"
      version = "v1.33.0-eksbuild.2"
    },
    {
      name    = "aws-ebs-csi-driver"
      version = "v1.46.0-eksbuild.1"
    }
  ]
}