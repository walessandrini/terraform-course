virginia_cidr = "10.10.0.0/16"
# public_subnet  = "10.10.0.0/24"
# private_subnet = "10.10.1.0/24"
subnets = ["10.10.0.0/24", "10.10.1.0/24"]
tags = {
  "name"        = "prueba"
  "env"         = "Dev"
  "Owner"       = "Walter"
  "Cloud"       = "AWS"
  "IAC"         = "Terraform"
  "IAC_Version" = "1.59"
}

sg_ingress_cidr = "0.0.0.0/0"

ingress_port_list = [ 22, 80, 443 ]