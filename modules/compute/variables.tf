#Variable for compute instances
variable "instances" {
    description = "Enter the details of the VM"
    type = map(object({
      instance_type = string
      zone = string
      subnet = string
      disk_size = number
    }))
}

variable "i27-ecommerce-vpc" {
    description = "getting the vpc from network module"
    type = string
}
  
