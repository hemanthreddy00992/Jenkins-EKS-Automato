variable "vpc_cidr" {
  description = "vpc cidr"
  type        = string
}

variable "public_subnet" {
  description = "public subnet cidr"
  type        = list(string)
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}