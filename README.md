# terraform-aws-main-AUY1105-TCPA
Este repositorio contiene el código que será utilizado para llamar y ejecutar los módulos creados en los otros repositorios

## Objetivos del repositorio
Actuar como un controlador central que orqueste los módulos desacoplados desarrollados en los repositorios de redes, cómputo y almacenamiento (S3).

## Propósito general del código Terraform
Este repositorio contiene el código que será utilizado para llamar y ejecutar los módulos creados en los otros repositorios. Despliega y gestiona una infraestructura integral en AWS llamando a estos módulos independientes alojados en GitHub, centralizando las variables y exponiendo los outputs principales.

## Instrucciones básicas de uso
1. Asegurar la configuración de credenciales de AWS en el entorno local.
2. Ejecutar el comando `terraform init` para inicializar el backend y descargar los módulos desde GitHub.
3. Ejecutar `terraform plan` para validar la sintaxis y visualizar los recursos que se van a crear.
4. Ejecutar `terraform apply` para aprovisionar la infraestructura en la nube.