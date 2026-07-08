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

## Variables y Parametrización
Para garantizar una alta modularidad, los valores específicos como nombres de instancias y prefijos de buckets S3 no están fijos en el código principal. Deben ser modificados directamente en el archivo `variables.tf` antes de la ejecución.

## Automatización y Validación (CI/CD)
Este repositorio cuenta con un flujo de integración continua mediante **GitHub Actions**. Cada vez que se realiza un *push* o *pull request* a la rama `master`, se ejecutan automáticamente las siguientes validaciones:
1. **Terraform Format Check:** Verifica que el código cumpla con los estándares de estilo (`terraform fmt`).
2. **Terraform Validate:** Confirma que la sintaxis y las referencias entre los módulos sean correctas.
3. **Checkov (Seguridad):** Analiza estáticamente la infraestructura en busca de brechas de seguridad y cumplimiento de buenas prácticas.


