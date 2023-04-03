variable "resource_group_name_long" {
    type = string
    description =  "The full name of the Environment"
}

variable "resource_group_name_short" {
    type = string
    description =  "The short name of the Environment"
}

variable "location" {
    type = string
    description =  "The location wherein we'll create the Oribital Constructor"
}

variable "address_space" {
    type = string
    description =  "The network in which the Oribital Constructor resides"
}

variable "public_ip_allocation" {
    type = string
    description =  "Determine if OC's public ip resource gets a private or dynameic ip allocation"
}

variable "Orbital_Constructor_subnets" {
  type        = map(object({
    subnet_name             = string
    subnet_address_prefixes = list(string)
    subnet_security_group   = string
  }))
  description = "The details to create the Oribital Constructor's subnets and security groups"
}

variable "Orbital_Constructor_Security_Groups" {
  type = list(string)
  description = "The list of security groups created for the OC"
}
