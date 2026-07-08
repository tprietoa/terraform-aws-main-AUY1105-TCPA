# Changelog
## [0.3.0] - 2026-07-08
### Added
- Se parametrizan variables para EC2 y S3 logrando alta modularidad.
- Se integra GitHub Actions para validación continua (Terraform fmt y validate).
- Se incorpora análisis de seguridad estático mediante Checkov con soft_fail.
- Se actualiza .gitignore protegiendo de forma estricta credenciales y archivos sensibles (*.pem, *.env, *.tfvars).
- Se actualiza el README.md reflejando la nueva automatización y parametrización.

## [0.2.2] - 2026-07-08
### Fixed
- Corrección de la rama de ejecución a 'master' y aplicación de formato estático para que el pipeline de GitHub Actions finalice con éxito.

## [0.2.1] - 2026-07-08
### Fixed
- Corrección de la rama de ejecución a 'master'

## [0.2.0] - 2026-07-08
### Added
- Creación de la estructura .github/workflows y configuración inicial del archivo terraform.yml para CI/CD.

## [0.1.0] - 2026-05-27
### Added
- Configuración del bloque provider para AWS.
- Integración del módulo de Redes (VPC) referenciando al tag v0.1.0 de su repositorio.
- Integración del módulo de Cómputo (EC2) referenciando al tag v0.1.0 de su repositorio.
- Integración del módulo Específico (S3) referenciando al tag v0.1.0 de su repositorio.
- Archivo `variables.tf` centralizado para inyectar valores a los módulos.
- Archivo `outputs.tf` configurado para mostrar IDs e IPs resultantes.
- Creación de documentación inicial en README.md.