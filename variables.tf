variable "rgname" {
    description = "resource grouop name"
    default     = "RG-01"
}
variable "location" {
    description = "location name"
    default     = "West Europe"
}
variable "vnet_name" {
     description = "name for vnet"
     default     = "Vnet-01"
}
variable "address_space" {
     default     = ["10.40.0.0/20"]
}
variable "subnet_name" {
     default     = "subnet1"
}
variable "address_prefix" {
      default     = "10.0.1.0/24"
}