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

variable "s3_bucket_prefix" {
  description = "Prefijo para el nombre del bucket S3"
  type        = string
  default     = "tp-proyecto"
}

variable "s3_bucket_suffix" {
  description = "Sufijo para el nombre del bucket S3"
  type        = string
  default     = "pro-2026"
}

variable "ec2_instance_name" {
  description = "Nombre de la instancia EC2"
  type        = string
  default     = "Mi_instancia_tp"
}