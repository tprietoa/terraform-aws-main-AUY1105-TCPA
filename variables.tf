variable "vpc_cidr" {
  description = "CIDR block para la VPC"
  type        = string
  default     = "10.1.0.0/16"
}

variable "vpc_name" {
  description = "Nombre de la VPC"
  type        = string
  default     = "mi-vpc"
}