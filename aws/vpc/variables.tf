variable "vpc_name" {
    description = "contains the name of the VPC"
    default     = "di-devops-vpc"
}
variable "cidr_block" {
    description = "contains the name of the VPC"
    default     = "10.0.0.0/16"
}

variable "instance_tenancy_option" {
    description     = "Specifying the type of Instance, default or dedicated"
    default         = "default"
}


variable "enable_dns_support" {
    description     = "Enable DNS Support"
    default         = true
}


variable "enable_dns_hostnames" {
    description     = "Enable to DNS Hostnames"
    default         = true
}

variable "region" {
  default     = "us-east-1"
  description = "Region of the VPC"
}

variable "environment" {
    default     = "dev"
    description = "Contains the details of the environment"
}

# variable "region" {
#   default       = "us-east-1"
#   description   = "Contains the details about the Region for VPC"
# }

variable "igw_name" {
    description     = "Name of the IGW"
    default         = "di-devops-igw"
}

