# Modules
In Terraform, a module is a reusable block of infrastructure code. It lets you group related resources (like EC2, S3, VPC, etc.) 
and reuse them across different projects or environments

```bash
module "vpc" {
  source = "./modules/vpc"
  cidr_block = "10.0.0.0/16"
}
```
