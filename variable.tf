variable "rg1" {
  default = "Test-rg1"
}

variable "rg1_location" {
  default = "Japan West"
}

variable "vnet_1" {
  default = "vnet-11"
}

variable "IP" {
  default = ["172.168.0.0/16"]
}

variable "Subnet_10" {
  default = "Internal-sub"
}

variable "Intersub" {
  default = ["172.168.1.0/24"]
}

variable "Subnet_20" {
  default = "External-sub"
}

variable "Extersub" {
  default = ["172.168.2.0/24"]
}

