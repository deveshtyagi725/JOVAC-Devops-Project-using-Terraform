🚀 JOVAC – Multi-Cloud Infrastructure Automation with Terraform (AWS + Azure)
<p align="center"> <em>Enterprise-Level Cloud Automation | Built by Devesh Tyagi 🤖 | Powered by Terraform, AWS & Azure</em> </p> <p align="center"> <img src="https://img.shields.io/badge/Terraform-v1.9.0-blueviolet?logo=terraform" /> <img src="https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws" /> <img src="https://img.shields.io/badge/Azure-Microsoft-blue?logo=microsoftazure" /> <img src="https://img.shields.io/badge/IaC-Infrastructure%20as%20Code-success?logo=githubactions" /> <img src="https://img.shields.io/badge/DevOps-Automation-blue?logo=azuredevops" /> <img src="https://img.shields.io/badge/Version%20Control-GitHub-black?logo=github" /> <img src="https://img.shields.io/badge/License-MIT-green" /> </p>
📘 Overview

JOVAC (Job Oriented Value Added Course) Multi-Cloud Infrastructure Automation is a Terraform-powered project that deploys cloud resources on both AWS and Azure automatically using a single command.

This project demonstrates:

☁️ AWS Virtual Private Cloud (VPC) provisioning

🔐 Security Group automation

🖥️ EC2 Instance deployment

🔵 Azure Resource Group + Storage Account creation

📦 Blob container automation

🧱 Full multi-cloud infrastructure from a single codebase

🔁 Idempotent IaC (same code can run multiple times safely)

⚙️ Tech Stack
Layer	Technology	Purpose
☁️ Cloud Provider 1	Amazon Web Services	Compute & Networking
☁️ Cloud Provider 2	Microsoft Azure	Storage Infrastructure
🧩 IaC Engine	Terraform v1.9+	Declarative Infra Deployment
🧾 State	Local State (S3 Ready)	Infrastructure Tracking
🔐 Security	AWS SG, Azure Access Policies	Cloud Safety
🔧 Automation	Terraform CLI	Multi-Cloud Automation
🧭 Project Architecture
🌩️ High-Level Multi-Cloud Architecture
                ┌───────────────────────────┐
                │        TERRAFORM CLI       │
                └───────────────┬───────────┘
                                │
                   ┌────────────┴──────────────┐
                   │                           │
        ┌──────────▼──────────┐     ┌──────────▼──────────┐
        │      AWS CLOUD       │     │     AZURE CLOUD      │
        └──────────────────────┘     └──────────────────────┘
        • VPC                            • Resource Group
        • Subnet                         • Storage Account  
        • Internet Gateway               • Blob Container  
        • Route Table        
        • Security Group       
        • EC2 Instance       

📁 Repository Structure
JOVAC-MultiCloud-Terraform/
│
├── main.tf                  # AWS VPC + EC2 Infrastructure
├── provider.tf              # AWS + Azure provider configuration
├── variables.tf             # Input variables
├── storage.tf               # Azure Storage Infrastructure
│
├── terraform.tfstate        # Local Terraform state
├── terraform.tfstate.backup # Backup state
│
├── .terraform/              # Provider plugins (ignored)
├── .gitignore               # Terraform ignored files
└── README.md                # Documentation

🚀 Deployment Steps
1️⃣ Initialize Terraform
terraform init

2️⃣ Validate configuration
terraform validate

3️⃣ Preview execution plan
terraform plan

4️⃣ Apply and deploy AWS + Azure Infrastructure
terraform apply -auto-approve

🟢 Terraform will automatically:
On AWS:

Create VPC

Create Subnet

Create Internet Gateway

Add Route Table & associations

Create Security Group

Deploy EC2 instance

On Azure:

Create Resource Group

Create Storage Account

Create Blob Container

📤 Outputs (Example)

You can add outputs in your code if needed (e.g., EC2 public IP):

ec2_public_ip = "3.92.114.21"
azure_blob_url = "https://<account>.blob.core.windows.net/<container>"

🧠 Why This Project Is Important

This project proves:

✔ Multi-Cloud IaC Skill

You are deploying two cloud platforms using one tool.

✔ DevOps & Automation Knowledge

You automated everything using code, no clicking in the console.

✔ Enterprise-Level Infrastructure Architecture

Every step follows real DevOps workflows.

✔ Viva-Ready Explanation

“In one command, Terraform automatically creates resources in AWS and Azure.
This shows Infrastructure as Code, automation, multi-cloud integration, and DevOps concepts.”

🔐 Best Practices Followed

📜 Clean, modular Terraform structure

🔒 Minimum required security rules

🚀 Multi-Cloud support in a single workspace

☑ Idempotent — re-running apply does not break infra

⭐ Highly extensible for CI/CD (GitHub Actions / Jenkins)

🧰 DevOps Workflow (Recommended)
Developer → Git Commit → GitHub → Terraform Plan → Terraform Apply → Multi-Cloud Infra Live

🌐 Future Enhancements
Feature	Status
Azure VM Deployment	⏳ Planned
AWS Load Balancer	🔧 Possible
S3 Backend for Remote State	🟢 Ready
Azure Key Vault Integration	⏳ Upcoming
Monitoring Dashboard	Planned
🧑‍💻 Author

👤 Devesh Tyagi
Cloud & DevOps Engineer (Training)

💬 “One command. Two clouds. Complete automation.”

🔗 GitHub: https://github.com/deveshtyagi

🔗 LinkedIn: (Add your link here)

⚖️ License

Licensed under the MIT License — free to use and modify.
