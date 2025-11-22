🚀 Multicloud Infrastructure Automation using Terraform
Deploy AWS + Azure resources automatically with a single command
<div align="center">






</div>
🌍 Project Overview

This project demonstrates multicloud automation using Terraform, provisioning infrastructure in both AWS and Azure simultaneously.

✔️ One command → deploy resources
✔️ One command → destroy everything
✔️ Same code → works across two clouds

🛠️ Tech Stack
Tool	Purpose
Terraform	Infrastructure as Code (IaC)
AWS	EC2 + Networking (VPC, Subnet, SG)
Azure	Storage Account + Blob Container
VS Code / PowerShell	Execution environment
⚙️ Architecture Diagram
<div align="center">
                 ┌───────────────────────┐
                 │     Terraform CLI     │
                 │   (Single Apply Cmd)  │
                 └───────────┬───────────┘
                             │
             ┌───────────────┴────────────────┐
             │                                │
   ┌─────────▼────────┐             ┌─────────▼────────┐
   │       AWS         │             │       Azure       │
   │  (Amazon Cloud)   │             │ (Microsoft Cloud) │
   └─────────┬─────────┘             └─────────┬────────┘
             │                                   │
┌────────────▼────────────┐     ┌────────────────▼─────────────────┐
│ EC2 Instance             │     │ Azure Resource Group             │
│ Security Group           │     │ Storage Account                 │
│ VPC + Subnet + Routing   │     │ Blob Container (app-data)       │
└──────────────────────────┘     └─────────────────────────────────┘

</div>
🚀 Resources Created
🟧 AWS (Amazon Web Services)
AWS resources deployed automatically:

VPC (private network)

Subnet (inside VPC)

Internet Gateway

Route Table + Association

Security Group (SSH allowed)

EC2 Instance (Amazon Linux 2)

🟦 Azure (Microsoft Azure)
Azure resources deployed automatically:

Resource Group → multicloud-demo-rg

Storage Account → multiclouddemosa123

Blob Container → app-data

📂 Project Structure
📁 terraform-project/
│── main.tf
│── aws.tf
│── azure.tf
│── storage.tf
│── variables.tf
│── outputs.tf
│── provider.tf
└── README.md

🧪 How to Run This Project
1️⃣ Initialize Terraform
terraform init

2️⃣ Preview the changes
terraform plan

3️⃣ Apply (Deploy infrastructure)
terraform apply


Type yes to confirm.

✔ AWS EC2 will be created
✔ Azure Storage + Container will be created

4️⃣ Destroy infrastructure
terraform destroy


Type yes to confirm.

✔ All AWS & Azure resources deleted automatically

📤 Outputs

After successful apply, Terraform returns:

aws_ec2_public_ip = "13.xx.xx.xx"
azure_storage_account_name = "multiclouddemosa123"
azure_blob_container_name = "app-data"

🧾 Key Features

✨ Fully automated multicloud provisioning
✨ Real-world DevOps-level project
✨ Cloud-neutral IaC approach
✨ Repeatable deployments
✨ Destroy in one command

💡 Why This Project Is Impressive

Shows knowledge of AWS, Azure, and Terraform

Demonstrates a professional DevOps workflow

Includes networking, compute, and storage

Uses best practices like variables + outputs

📸 (Optional) Add Screenshots

I can generate these for you if you want:

AWS EC2 dashboard

AWS VPC dashboard

Azure Resource Group

Azure Storage Account

Azure Blob Container

📄 License

This project is open-source. You may modify or reuse it freely.

🙌 Author

Devesh Tyagi
B.Tech CSE | GLA University
DevOps & Cloud Enthusiast
