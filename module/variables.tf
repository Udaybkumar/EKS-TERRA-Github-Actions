variable "cluster-name" {default = "eks-cluster"}
variable "cidr-block" {default = "10.0.0.0/16"}
variable "vpc-name" {default = "dev-vpc"}
variable "env" {default = "dev"}
variable "aws-region" {default = "ap-southeast-1"}
variable "vpc-cidr-block" {default = "10.0.0.0/16"}
#variable "vpc-name" {default = "dev-vpc1" }
variable "igw-name" {default = "dev-igw"}
variable "pub-subnet-count" {default = "2"}
variable "pub-cidr-block" {
  type = list(string)
  default = [ "value" ]
}
variable "pub-availability-zone" {
  type = list(string)
  default = [ "value" ]
}
variable "pub-sub-name" {default = "dev-pub-subnet"}
variable "pri-subnet-count" {default = "2"}
variable "pri-cidr-block" {
  type = list(string)
  default = [ "value" ]
}
variable "pri-availability-zone" {
  type = list(string)
  default = [ "value" ]
}
variable "pri-sub-name" {default = "dev-pri-subnet"}
variable "public-rt-name" {default = "dev-public-rt"}
variable "private-rt-name" {default = "dev-private-rt"}
variable "eip-name" {default = "dev-eip"}
variable "ngw-name" {default = "dev-ngw"}
variable "eks-sg" {default = "dev-eks-sg"}

#IAM
variable "is_eks_role_enabled" {
  type = bool
}
variable "is_eks_nodegroup_role_enabled" {
  type = bool
}

# EKS
variable "is-eks-cluster-enabled" {default = "true"}
variable "cluster-version" {default = "1.25"}
variable "endpoint-private-access" {default = "true"}
variable "endpoint-public-access" {default = "true"}
variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))
}
variable "ondemand_instance_types" {default = ["t3.micro"] }
variable "spot_instance_types" {default = ["t3.micro"]}
variable "desired_capacity_on_demand" {default = 1  }
variable "min_capacity_on_demand" {default = 1  }
variable "max_capacity_on_demand" {default = 3  }
variable "desired_capacity_spot" {default = 1  }
variable "min_capacity_spot" {default = 1  }
variable "max_capacity_spot" {default = 3  }