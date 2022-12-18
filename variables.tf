#-------------------- VPC -------------------------
variable "cidr_TestProdPublic_VPC" {
    type = string
    description = "CIDR block for TestProdPublic_VPC"
    default = "192.168.0.0/16"
  
}

#------------------ Subnets CIDR Blocks ------------------
variable "cidr_TestProdPublic_Management_Pri_us-east-2a" {
    type = string
    description = "TestProdPublic Management Subnet"
    default = "192.168.0.0/24"
  
}

variable "cidr_TestProdPublic_Public_Pri_us-east-2a" {
    type = string
    description = "TestProdPublic Public Subnet"
    default = "192.168.1.0/24"

}

variable "cidr_TestProdPublic_Private_Pri_us-east-2a" {
    type = string
    description = "TestProdPublic Private Subnet"
    default = "192.168.1.0/24"

}

variable "cidr_TestProdPublic_DMZ_Pri_us-east-2a" {
    type = string
    description = "TestProdPublic DMZ Subnet"
    default = "192.168.3.0/24"  

}

variable "cidr_TestProdPublic_Management_Bckup_us-east-2b" {
    type = string
    description = "TestProdPublic Bckup Management Subnet"
    default = "192.168.4.0/24"
  
}

variable "cidr_TestProdPublic_Public_Bckup_us-east-2b" {
    type = string
    description = "TestProdPublic Backup Public Subnet"
    default = "192.168.5.0/24"

}

variable "cidr_TestProdPublic_Private__us-east-2b" {
    type = string
    description = "TestProdPublic Backup Private Subnet"
    default = "192.168.6.0/24"

}


variable "cidr_TestProdPublic_DMZ_Bckup_us-east-2b" {
    type = string
    description = "TestProdPublic Backup DMZ Subnet"
    default = "192.168.7.0/24"  

}

#--------------- Avilability Zones -------------------
variable "availability_zone_us-east-2a" {
    type = string
    description = "us-east-2a"
    default = "us-east-2a"
}

variable "availability_zone_us-east-2b" {
    type = string
    description = "us-east-2b"
    default = "us-east-2b"
}

#------------------- Default Routes Outbound to Internet -------------------
variable "default_destination_route_outbound_cidr" {
    type = string
    description = "Default destination route outbound to internet cidr"
    default = "0.0.0.0/0"
  
}

#--------------------- Tags -----------------------

# VPC Tags
variable "name_vpc" {
    type = string
    description = "Name/Tag for TestProdPublic VPC"
    default = "TestProdPublic_VPC"

}

# VPC Subnet Tags
variable "name_subnet_TestProdPublic_Management_Pri" {
    type = string
    description = "Name/Tag for TestProdPublic_Management Primary Subnet"
    default = "TestProdPublic_Management_Pri_us-east-2a"

}

variable "name_subnet_TestProdPublic_Public_Pri" {
    type = string
    description = "Name/Tag for TestProdPublic_Public Primary Subnet"
    default = "TestProdPublic_Public_Pri_us-east-2a"

}

variable "name_subnet_TestProdPublic_Private_Pri" {
    type = string
    description = "Name/Tag for TestProdPublic_Public Primary Subnet"
    default = "TestProdPublic_Private_Pri_us-east-2a"

}

variable "name_subnet_TestProdPublic_DMZ_Pri" {
    type = string
    description = "Name/Tag for TestProdPublic_DMZ Primary Subnet"
    default = "TestProdPublic_DMZ_Pri_us-east-2a"

}

variable "name_subnet_TestProdPublic_Management_Bckup" {
    type = string
    description = "Name/Tag for TestProdPublic_Management Backup Subnet"
    default = "TestProdPublic_Management_Bckup_us-east-2b"

}

variable "name_subnet_TestProdPublic_Public_Bckup" {
    type = string
    description = "Name/Tag for TestProdPublic_Public Backup Subnet"
    default = "TestProdPublic_Public_Bckup_us-east-2b"

}

variable "name_subnet_TestProdPublic_Private_Bckup" {
    type = string
    description = "Name/Tag for TestProdPublic_Public Backup Subnet"
    default = "TestProdPublic_Private_Bckup_us-east-2b"

}

variable "name_subnet_TestProdPublic_DMZ_Bckup" {
    type = string
    description = "Name/Tag for TestProdPublic_DMZ Backup Subnet"
    default = "TestProdPublic_DMZ_Bckup_us-east-2b"

}

# VPC Internet Gateway Tags

variable "name_IGW" {
    type = string
    description = "Name/Tag for TestProdPublic_IGW"
    default = "TestProdPublic_IGW"
  
}

# Route Table Tags

variable "name_route_table_Management_Pri" {
  type = string
  description = "Name/Tag for Management Primary Route Table"
  default = "TestProdPublic_Management_Pri_RT"

}

variable "name_route_table_Public_Pri" {
  type = string
  description = "Name/Tag for Public Primary Route Table"
  default = "TestProdPublic_Public_Pri_RT"

}

variable "name_route_table_Private_Pri" {
  type = string
  description = "Name/Tag for Public Primary Route Table"
  default = "TestProdPublic_Private_Pri_RT"

}

variable "name_route_table_DMZ_Pri" {
  type = string
  description = "Name/Tag for DMZ Primary Route Table"
  default = "TestProdPublic_DMZ_Pri_RT"

}

variable "name_route_table_Management_Bckup" {
  type = string
  description = "Name/Tag for Management Backup Route Table"
  default = "TestProdPublic_Management_Bckup_RT"

}

variable "name_route_table_Public_Bckup" {
  type = string
  description = "Name/Tag for Public Backup Route Table"
  default = "TestProdPublic_Public_Bckup_RT"

}

variable "name_route_table_Private_Bckup" {
  type = string
  description = "Name/Tag for Public Backup Route Table"
  default = "TestProdPublic_Private_Bckup_RT"

}

variable "name_route_table_DMZ_Bckup" {
  type = string
  description = "Name/Tag for DMZ Backup Route Table"
  default = "TestProdPublic_DMZ_Bckup_RT"

}