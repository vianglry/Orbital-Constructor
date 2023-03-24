
variable "resource_group_name" {
    type = string
}

variable "location" {
    type = string
}

variable "virtual_network_name" {
    type = string
}

variable "subnet_list" {
  type        = map(object({
    subnet_name             = string
    subnet_address_prefixes = list(string)
  }))
  description = "The details of subnets to be created"
}

variable "security_group_list" {
  type = list(string)
  description = "The list of security groups to be created."
}

variable "security_group_details" {
  type = map(object({
    security_group_name  = string
    associated_subnets   = list(string)
  }))

  description = "The list of security groups to be created."
}

# variable "security_group_associations" {
#   type = map(object({
#     nsg_id      = string
#     subnet_ids  = list(string) 
#   }))

#   description = "The a"
# }