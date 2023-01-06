#--------------------- Providers----------------------------------
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.47.0"
    }
  }
}

terraform {
  cloud {
    organization = "ittechlearning"

    workspaces {
      name = "Testing-Production-Public-AWS-VPC"
    }
  }
}

provider "aws" {
    region = "us-east-2"

}

#---------------- VPC -------------------------

resource "aws_vpc" "TestProdPublic_VPC" {
    cidr_block = var.cidr_TestProdPublic_VPC

    tags = {
      "Name" = var.name_vpc
    }

}

#---------------- VPC Subnets ------------------

#This will create the Primary Management Subnet
resource "aws_subnet" "TestProdPublic_Management_Pri_us-east-2a" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id
  cidr_block = var.cidr_TestProdPublic_Management_Pri_us-east-2a
  availability_zone = var.availability_zone_us-east-2a
  
  tags = {
    "Name" = var.name_subnet_TestProdPublic_Management_Pri
  }

}

#This will create the Primary Public Subnet
resource "aws_subnet" "TestProdPublic_Public_Pri_us-east-2a" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id
  cidr_block = var.cidr_TestProdPublic_Public_Pri_us-east-2a
  availability_zone = var.availability_zone_us-east-2a

  tags = {
    "Name" = var.name_subnet_TestProdPublic_Public_Pri
  }

}

#This will create the Primary Private Subnet
resource "aws_subnet" "TestProdPublic_Private_Pri_us-east-2a" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id
  cidr_block = var.cidr_TestProdPublic_Private_Pri_us-east-2a
  availability_zone = var.availability_zone_us-east-2a

  tags = {
    "Name" = var.name_subnet_TestProdPublic_Private_Pri
  }

}

#This will create the Primary DMZ Subnet
resource "aws_subnet" "TestProdPublic_DMZ_Pri_us-east-2a" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id
  cidr_block = var.cidr_TestProdPublic_DMZ_Pri_us-east-2a
  availability_zone = var.availability_zone_us-east-2a

  tags = {
    "Name" = var.name_subnet_TestProdPublic_DMZ_Pri
  }

}

#This will create the Backup Management Subnet
resource "aws_subnet" "TestProdPublic_Management_Bckup_us-east-2a" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id
  cidr_block = var.cidr_TestProdPublic_Management_Bckup_us-east-2a
  availability_zone = var.availability_zone_us-east-2a

  tags = {
    "Name" = var.name_subnet_TestProdPublic_Management_Bckup
  }
}

#This will create the Backup Public Subnet
resource "aws_subnet" "TestProdPublic_Public_Bckup_us-east-2a" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id
  cidr_block = var.cidr_TestProdPublic_Public_Bckup_us-east-2a
  availability_zone = var.availability_zone_us-east-2a

  tags = {
    "Name" = var.name_subnet_TestProdPublic_Public_Bckup
  }

}

#This will create the Backup Public Private Subnet
resource "aws_subnet" "TestProdPublic_Private_Bckup_us-east-2a" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id
  cidr_block = var.cidr_TestProdPublic_Private_Bckup_us-east-2a
  availability_zone = var.availability_zone_us-east-2a

  tags = {
    "Name" = var.name_subnet_TestProdPublic_Private_Bckup
  }

}

#This will create the Backup DMZ Subnet
resource "aws_subnet" "TestProdPublic_DMZ_Bckup_us-east-2a" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id
  cidr_block = var.cidr_TestProdPublic_DMZ_Bckup_us-east-2a
  availability_zone = var.availability_zone_us-east-2a

  tags = {
    "Name" = var.name_subnet_TestProdPublic_DMZ_Bckup
  }

}

#-------------------- VPC Internet Gateway -----------------

#This will create the internet gateway for TestProd_VPC
resource "aws_internet_gateway" "TestProd_IGW" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id

  tags = {
    "Name" = var.name_IGW
  }
}

#----------------- Route tables -----------------------------

#This will create a route table for the management primary subnet
resource "aws_route_table" "TestProdPublic_Management_Pri_RT" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id

  tags = {
    "Name" = var.name_route_table_Management_Pri
  }

}

#This will create a route table for the public primary subnet
resource "aws_route_table" "TestProdPublic_Public_Pri_RT" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id

  tags = {
    "Name" = var.name_route_table_Public_Pri
  }

}

#This will create a route table for the Private primary subnet
resource "aws_route_table" "TestProdPublic_Private_Pri_RT" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id

  tags = {
    "Name" = var.name_route_table_Private_Pri
  }

}

#This will create a route table for the dmz primary subnet
resource "aws_route_table" "TestProdPublic_DMZ_Pri_RT" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id

  tags = {
    "Name" = var.name_route_table_DMZ_Pri
  }

}

#This will create a route table for the management backup subnet
resource "aws_route_table" "TestProdPublic_Management_Bckup_RT" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id

  tags = {
    "Name" = var.name_route_table_Management_Bckup
  }

}

#This will create a route table for the public backup subnet
resource "aws_route_table" "TestProdPublic_Public_Bckup_RT" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id

  tags = {
    "Name" = var.name_route_table_Public_Bckup
  }

}

#This will create a route table for the Private backup subnet
resource "aws_route_table" "TestProdPublic_Private_Bckup_RT" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id

  tags = {
    "Name" = var.name_route_table_Private_Bckup
  }

}

#This will create a route table for the dmz backup subnet
resource "aws_route_table" "TestProdPublic_DMZ_Bckup_RT" {
  vpc_id = aws_vpc.TestProdPublic_VPC.id

  tags = {
    "Name" = var.name_route_table_DMZ_Bckup
  }

}

#-------------------- Assoications to Route Table-----------------------------

#This will associate the Primary Management subnet to the Primary Management route table
resource "aws_route_table_association" "TestProdPublic_Management_Pri" {
  subnet_id = aws_subnet.TestProdPublic_Management_Pri_us-east-2a.id
  route_table_id = aws_route_table.TestProdPublic_Management_Pri_RT.id
  
}


#This will associate the Primary Public subnet to the Primary Public route table
resource "aws_route_table_association" "TestProdPublic_Public_Pri" {
  subnet_id = aws_subnet.TestProdPublic_Public_Pri_us-east-2a.id
  route_table_id = aws_route_table.TestProdPublic_Public_Pri_RT.id
  
}

#This will associate the Primary Public subnet to the Primary Private route table
resource "aws_route_table_association" "TestProdPublic_Private_Pri" {
  subnet_id = aws_subnet.TestProdPublic_Private_Pri_us-east-2a.id
  route_table_id = aws_route_table.TestProdPublic_Private_Pri_RT.id
  
}

#This will associate the Primary DMZ subnet to the Primary DMZ route table
resource "aws_route_table_association" "TestProdPublic_DMZ_Pri" {
  subnet_id = aws_subnet.TestProdPublic_DMZ_Pri_us-east-2a.id
  route_table_id = aws_route_table.TestProdPublic_DMZ_Pri_RT.id
  
}

#This will associate the Backup Management subnet to the Backup Management route table
resource "aws_route_table_association" "TestProdPublic_Management_Bckup" {
  subnet_id = aws_subnet.TestProdPublic_Management_Bckup_us-east-2a.id
  route_table_id = aws_route_table.TestProdPublic_Management_Bckup_RT.id
  
}

#This will associate the Backup Public subnet to the Backup Public route table
resource "aws_route_table_association" "TestProdPublic_Public_Bckup" {
  subnet_id = aws_subnet.TestProdPublic_Public_Bckup_us-east-2a.id
  route_table_id = aws_route_table.TestProdPublic_Public_Bckup_RT.id
  
}

#This will associate the Backup Public subnet to the Backup Private route table
resource "aws_route_table_association" "TestProdPublic_Private_Bckup" {
  subnet_id = aws_subnet.TestProdPublic_Private_Bckup_us-east-2a.id
  route_table_id = aws_route_table.TestProdPublic_Private_Bckup_RT.id
  
}

#This will associate the Backup DMZ subnet to the Backup DMZ route table
resource "aws_route_table_association" "TestProdPublic_DMZ_Bckup" {
  subnet_id = aws_subnet.TestProdPublic_DMZ_Bckup_us-east-2a.id
  route_table_id = aws_route_table.TestProdPublic_DMZ_Bckup_RT.id

}

#-------------------- Routes in the routing table ---------------------------

#This will create a default route from management outbound to internet
resource "aws_route" "TestProdPublic_Management_Pri_Default_Route_Outbound" {
  route_table_id = aws_route_table.TestProdPublic_Management_Pri_RT.id
  destination_cidr_block = var.default_destination_route_outbound_cidr
  gateway_id = aws_internet_gateway.TestProd_IGW.id
  depends_on = [
    aws_route_table.TestProdPublic_Management_Pri_RT
  ]

  
}
#This will create a default route from public outbound to internet
resource "aws_route" "TestProdPublic_Public_Pri_Default_Route_Outbound" {
  route_table_id = aws_route_table.TestProdPublic_Public_Pri_RT.id
  destination_cidr_block = var.default_destination_route_outbound_cidr
  gateway_id = aws_internet_gateway.TestProd_IGW.id
  depends_on = [
    aws_route_table.TestProdPublic_Public_Pri_RT
  ]

  
}

/*
#This will create a default route from Public to firewall Public interface
resource "aws_route" "TestProdPublic_Public_Pri_Default_Route_Outbound" {
  route_table_id = aws_route_table.TestProdPublic_Public_Pri_RT.id
  destination_cidr_block = var.default_destination_route_outbound_cidr
  gateway_id = aws_internet_gateway.TestProd_IGW.id
  depends_on = [
    aws_route_table.TestProdPublic_Public_Pri_RT
  ]

  
}

#This will create a default route from dmz to firewall dmz interface
resource "aws_route" "TestProdPublic_DMZ_Pri_Default_Route_Outbound" {
  route_table_id = aws_route_table.TestProdPublic_DMZ_Pri_RT.id
  destination_cidr_block = var.default_destination_route_outbound_cidr
  gateway_id = aws_internet_gateway.TestProd_IGW.id
  depends_on = [
    aws_route_table.TestProdPublic_DMZ_Pri_RT
  ]

  
}
*/

#This will create a default route from management outbound to internet
resource "aws_route" "TestProdPublic_Management_Bckup_Default_Route_Outbound" {
  route_table_id = aws_route_table.TestProdPublic_Management_Bckup_RT.id
  destination_cidr_block = var.default_destination_route_outbound_cidr
  gateway_id = aws_internet_gateway.TestProd_IGW.id
  depends_on = [
    aws_route_table.TestProdPublic_Management_Bckup_RT
  ]

  
}

#This will create a default route from public outbound to internet
resource "aws_route" "TestProdPublic_Public_Bckup_Default_Route_Outbound" {
  route_table_id = aws_route_table.TestProdPublic_Public_Bckup_RT.id
  destination_cidr_block = var.default_destination_route_outbound_cidr
  gateway_id = aws_internet_gateway.TestProd_IGW.id
  depends_on = [
    aws_route_table.TestProdPublic_Public_Bckup_RT
  ]

  
}

/*
#This will create a default route from Public to firewall Public interface for backup firewall
resource "aws_route" "TestProdPublic_Public_Bckup_Default_Route_Outbound" {
  route_table_id = aws_route_table.TestProdPublic_Public_Bckup_RT.id
  destination_cidr_block = var.default_destination_route_outbound_cidr
  gateway_id = aws_internet_gateway.TestProd_IGW.id
  depends_on = [
    aws_route_table.TestProdPublic_Public_Bckup_RT
  ]

  
}

#This will create a default route from dmz to firewall dmz interface for backup firewall
resource "aws_route" "TestProdPublic_DMZ_Bckup_Default_Route_Outbound" {
  route_table_id = aws_route_table.TestProdPublic_DMZ_Bckup_RT.id
  destination_cidr_block = var.default_destination_route_outbound_cidr
  gateway_id = aws_internet_gateway.TestProd_IGW.id
  depends_on = [
    aws_route_table.TestProdPublic_DMZ_Bckup_RT
  ]

  
}
*/