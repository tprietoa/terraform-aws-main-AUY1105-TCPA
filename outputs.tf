output "vpc_id_creada" {
  description = "El ID de la VPC orquestada por el modulo"
  value       = module.vpc.vpc_id
}

output "instancia_ec2_ip" {
  description = "La IP publica para conectarse a la instancia EC2"
  value       = module.ec2.instance_ip
}

output "instancia_ec2_id" {
  description = "El ID de la instancia EC2 creada"
  value       = module.ec2.instance_id
}

output "s3_bucket_id" {
  description = "El nombre del bucket S3 desplegado"
  value       = module.s3.bucket_id
}