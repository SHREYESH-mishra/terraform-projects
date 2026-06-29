# terraform-projects
Production-ready Terraform project to provision and manage AWS infrastructure including S3 Static Website Hosting, CloudFront CDN, secure remote state backend, IAM policies, and reusable infrastructure modules.
# 🚀 Terraform AWS Infrastructure Project

A production-ready Infrastructure as Code (IaC) project built using **Terraform** to automate AWS infrastructure deployment.

This project demonstrates Terraform best practices including:

- Remote State Management
- Infrastructure Automation
- AWS S3 Static Website Hosting
- CloudFront CDN
- Secure S3 Bucket Policies
- Variables and Local Values
- Reusable Infrastructure
- State Locking using DynamoDB
- Version Controlled Infrastructure

---

# 📁 Project Structure

```
terraform-projects/
│
├── backend.tf          # Remote backend configuration
├── providers.tf        # AWS provider configuration
├── variables.tf        # Input variables
├── locals.tf           # Local values
├── main.tf             # Main infrastructure
├── terraform.tfvars    # Variable values
├── outputs.tf          # Outputs
│
├── website/
│   ├── index.html
│   ├── error.html
│   ├── css/
│   ├── js/
│   └── images/
│
└── README.md
```

---

# 🏗 Infrastructure Created

This project provisions the following AWS resources:

- ✅ S3 Bucket
- ✅ S3 Bucket Public Access Block
- ✅ Static Website Hosting
- ✅ CloudFront Distribution
- ✅ CloudFront Origin Access Control (OAC)
- ✅ Bucket Policy for CloudFront
- ✅ Website Asset Upload
- ✅ Remote Terraform Backend
- ✅ DynamoDB State Locking

---

# ⚙ Technologies Used

- Terraform
- AWS
- Amazon S3
- Amazon CloudFront
- IAM Policies
- DynamoDB
- Git
- GitHub

---

# 🔐 Terraform Backend

Remote state is stored securely using:

- Amazon S3
- DynamoDB Table for State Locking

Benefits:

- Shared State
- Versioning
- Collaboration
- State Lock Protection

---

# 📦 Features

- Infrastructure as Code (IaC)
- Modular and reusable variables
- Production-ready folder structure
- Secure backend configuration
- Automatic website asset deployment
- CloudFront integration
- Easy customization through variables

---

# 🚀 Getting Started

## Clone Repository

```bash
git clone https://github.com/<your-username>/terraform-projects.git

cd terraform-projects
```

## Initialize Terraform

```bash
terraform init
```

## Validate Configuration

```bash
terraform validate
```

## Preview Changes

```bash
terraform plan
```

## Deploy Infrastructure

```bash
terraform apply
```

---

# 🗂 Variables

Configuration is managed through `variables.tf`.

Example:

```hcl
bucket_name = "my-static-site"

region = "us-east-1"

instance_count = 1
```

---

# 📤 Outputs

Example outputs include:

- CloudFront Domain
- Website URL
- Bucket Name
- Distribution ID

---

# 📚 Terraform Concepts Demonstrated

- Resources
- Variables
- Local Values
- Maps
- Lists
- Objects
- Dynamic Configuration
- Backend Configuration
- State Management
- Resource Dependencies
- AWS Provider
- Remote State
- IAM Policies
- File Upload using `fileset()`
- Content-Type Mapping

---

# 🔒 Security

- CloudFront Origin Access Control (OAC)
- Public Access Block Configuration
- Least Privilege Bucket Policy
- Secure Remote State
- State Locking

---

# 📸 Architecture

```
              Users
                 │
                 ▼
          CloudFront CDN
                 │
                 ▼
        Amazon S3 Bucket
                 │
        Static Website Files

Terraform
     │
     ▼
 Remote State (S3)
     │
 DynamoDB Lock Table
```

---

# 📖 Learning Objectives

This repository demonstrates how to:

- Build AWS infrastructure using Terraform
- Store Terraform state remotely
- Deploy static websites
- Configure CloudFront
- Manage infrastructure with reusable variables
- Follow Terraform best practices
- Automate AWS deployments

---

# 👨‍💻 Author

**Shreyesh Mishra**

Cloud & DevOps Enthusiast

---

⭐ If you found this project useful, consider giving it a star!
