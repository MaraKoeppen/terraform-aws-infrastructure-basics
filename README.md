Sehr gut. Eine **gute README** macht aus einem einfachen Kursprojekt sofort ein **Portfolio-Projekt**.
Ich habe sie bewusst **klar, technisch und nicht zu lang** geschrieben – so mögen Recruiter das.

Du kannst das **1:1 in `README.md` einfügen**.

---

# README.md

```markdown
# Terraform AWS Infrastructure Basics

This repository contains a simple Terraform project demonstrating how to provision basic AWS infrastructure using Infrastructure as Code (IaC).

The goal of this project is to illustrate core Terraform concepts such as providers, variables, resource definitions, and best practices for managing configuration.

## Infrastructure Components

This project provisions the following AWS resources:

- EC2 instance
- Configurable instance type
- Optional detailed monitoring
- Infrastructure defined through Terraform variables

## Project Structure

```

terraform-aws-infrastructure-basics
│
├── provider.tf # AWS provider configuration
├── variables.tf # Input variables
├── instances.tf # EC2 instance resource
├── terraform.tfvars.example # Example variable values
├── .gitignore # Terraform best practice ignores
└── README.md

```

## Terraform Concepts Demonstrated

This project demonstrates:

- Terraform providers
- Input variables
- Variable validation
- Resource definitions
- Infrastructure configuration separation using `.tfvars`
- Best practices for excluding sensitive files from version control

## Example Variables

The file `terraform.tfvars.example` shows how variables can be configured:

```

type_instance = "t3.micro"
image_id = "ami-xxxxxxxxxxxxxxxxx"
monitoring = true

```

Users can create their own local configuration file:

```

cp terraform.tfvars.example terraform.tfvars

```

Then update it with their own values.

## Security Best Practices

Sensitive values such as credentials or environment-specific variables should **never be committed to version control**.

For that reason:

```

terraform.tfvars

```

is ignored via `.gitignore`.

## Author

Mara Koeppen

GitHub:  
https://github.com/MaraKoeppen

## Purpose

This repository is part of my learning path in:

- Cloud Engineering
- Infrastructure as Code
- Terraform
- AWS infrastructure automation
```

---

