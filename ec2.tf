variable "instancias" {
  description = "Nombre de las instancias"
  type        = list(string)
  default     = [ "apache" ]
}

resource "aws_instance" "public_instance" {
  for_each               = toset(var.instancias)
  ami                    = "ami-03972092c42e8c0ca"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = data.aws_key_pair.my-ec2-key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
  user_data              = file("userdata.sh")

  tags = {
    "Name" =  each.value
  }
}
