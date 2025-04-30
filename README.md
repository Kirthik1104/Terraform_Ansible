# 🌐 Infrastructure as Code with Terraform & Ansible

This repository showcases the use of **Terraform** for cloud infrastructure provisioning and **Ansible** for post-deployment configuration management. The goal is to demonstrate how these tools can be used together to automate infrastructure setup and system configuration across multiple environments.

---

## 🔧 Terraform (`practice-1/`)

### 🧩 What It Does
Terraform is used to define, provision, and manage cloud resources such as EC2 instances, security groups, and networking components — all through code.

This project uses a **modular approach** in Terraform to promote code reusability and clarity. Each module handles a specific piece of infrastructure (e.g., EC2, VPC, IAM), making it easier to manage and scale.

### 🌍 Environments
Multiple environments (such as `dev`, `test`, `prod`) are supported using **Terraform workspaces** and parameterized variable files. This ensures that the same codebase can safely deploy isolated infrastructure for different stages.

### 🚀 Key Highlights
- Modular Terraform structure
- Workspace support for isolated environments
- Variables managed via `.tfvars` files
- Scalable and reusable IaC design

---

## ⚙️ Ansible (`ansible-project-1/`)

### 🧩 What It Does
Ansible is used to **configure virtual machines** after they are provisioned. It ensures that required software packages, updates, and configurations are applied consistently across all instances.

This includes:
- Installing dependencies
- Applying system updates
- Configuring application-specific settings
- Securing instances using SSH keys and vaults

### 🔐 Secure Automation
Secrets like SSH private keys (`.pem`) and Ansible vault passwords are **excluded** from version control. Vaulted variables are used for sensitive information and decrypted securely at runtime.

---

