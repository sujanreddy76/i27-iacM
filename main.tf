#Provider Block
provider "google" {
    project = "applied-flag-444709-m9"
    region = "us-central1"
}

#Calling networks module
module "i27-network" {
    source = "./modules/networks"
    #The below are the variables which are defined in the networks module
    vpc_name = var.vpc_name
    subnets = var.subnets
}

#Calling compute module
module "i27-compute"{
    source = "./modules/compute"
    #The below are the variables which are defined in the networks module
    instances = var.instances
    #Assigning vpc from output variable which we defined in networks module
    i27-ecommerce-vpc = module.i27-network.vpc
}
  




