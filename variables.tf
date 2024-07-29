variable "virginia_cidr" {
  description = "CIDR Virginia"
  type        = string
}

# variable "public_subnet" {
#   description = "CIDR public subnet"
#   type        = string
# }

# variable "private_subnet" {
#   description = "CIDR private subnet"
#   type        = string
# }

variable "subnets" {
  description = "CIDRs subnets"
  type        = list(string)
}

variable "tags" {
  description = "Tags de las subnets"
  type        = map(string)
}

variable "sg_ingress_cidr" {
  description = "Ingrses CIDR"
  type        = string
}

variable "ingress_port_list" {
  description = "Lista de puertos de ingress"
  type        = list(number)
}
