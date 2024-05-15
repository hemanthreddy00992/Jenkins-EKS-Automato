variable "vpc_cidr" {
  description = "vpc cidr"
  type        = string
}

variable "public_subnet" {
  description = "public subnet cidr"
  type        = list(string)
}

variable "private_subnet" {
  description = "private subnet cidr"
  type        = list(string)
}