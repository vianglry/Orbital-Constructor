resource_group_name_long = "Test-Orbital-Constructor"

resource_group_name_short = "Test-OC"

location = "East US"

address_space = "10.0.0.0/16"

public_ip_allocation = "Dynamic"

Orbital_Constructor_subnets = {

    Barrier = {
        subnet_name = "OC_Subnet_Barrier" 
        subnet_address_prefixes = ["10.0.100.0/24"]
        subnet_security_group = "OC_SG_Barrier"
    }

    Management = {
        subnet_name = "OC_Subnet_Management" 
        subnet_address_prefixes = ["10.0.200.0/24"]
        subnet_security_group = "OC_SG_Management"
    }

    High-Trust = {
        subnet_name = "OC_Subnet_High_Trust" 
        subnet_address_prefixes = ["10.0.300.0/24"]
        subnet_security_group = "OC_SG_High_Trust"
    }

    Low-Trust = {
        subnet_name = "OC_Subnet_Low_Trust" 
        subnet_address_prefixes = ["10.0.400.0/24"]
        subnet_security_group = "OC_SG_Low_Trust"
    }
}

Orbital_Constructor_Security_Groups = [
    "OC_SG_Barrier",
    "OC_SG_Management",
    "OC_SG_High_Trust",
    "OC_SG_Low_Trust"
    ]