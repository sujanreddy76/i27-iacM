variable "vpc_name" {
    description = "Name of the vpc"
    type = string #i27-ecommerce-vpc
}

variable "subnets" {
    description = "The List of subnets to be created"
    type = list(object({
      name = string
      ip_cidr_range = string
      subnet_region = string 
    }))
}