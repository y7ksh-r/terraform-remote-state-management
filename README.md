# Terraform Remote State Management with S3 and DynamoDB

## 📌 Project Overview

This project demonstrates how to manage Terraform remote state using **AWS S3** for state storage and **DynamoDB** for state locking. Remote state management is essential in collaborative Terraform workflows to maintain a single source of truth for infrastructure state.

## 🏗️ Features

- ✅ Store Terraform state files securely in an **S3 bucket**
- ✅ Enable state locking using **DynamoDB**
- ✅ Secure access with **IAM roles and policies**
- ✅ Automated backend initialization
- ✅ Terraform configuration using best practices

---

## 🛠️ Tech Stack

- **Terraform** (Infrastructure as Code)
- **AWS S3** (State Storage)
- **AWS DynamoDB** (State Locking)
- **IAM Roles & Policies** (Security)

---

## 📂 Project Structure

```
terraform-s3-backend/
│── remote-infra/
│   ├── provider.tf        # AWS Provider configuration
│   ├── resource.tf        # S3 & DynamoDB resource definitions
│   ├── terraform.tf       # Backend configuration
│   ├── terraform.tfstate  # State file (auto-generated)
│
│── remote-main/
│   ├── main.tf            # Terraform main configuration
│   ├── terraform.tf       # Backend configuration reference
│   ├── .terraform/        # Terraform modules and providers (ignored in Git)
│
│── .gitignore             # Ignore Terraform cache files
│── README.md              # Project documentation

```

⚙️ Setup & Installation
📌 Prerequisites

Ensure you have the following installed:
```
    Terraform
    AWS CLI (configured with proper credentials)
```
🚀 Steps to Deploy
1️⃣ Clone the Repository

git clone https://github.com/your-username/terraform-remote-state-management.git
cd terraform-remote-state-management

2️⃣ Initialize Terraform
```
terraform init
```
3️⃣ Plan the Infrastructure
```
terraform plan
```
4️⃣ Apply the Configuration
```
terraform apply -auto-approve
```
5️⃣ Verify State Storage
    
Check your S3 bucket to confirm terraform.tfstate is stored.
Check DynamoDB table for the state locking mechanism.
    
🔐 IAM Policy for S3 & DynamoDB

Ensure your IAM user has the necessary permissions to access S3 and DynamoDB:

```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket",
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Resource": "arn:aws:s3:::your-bucket-name/*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "dynamodb:PutItem",
        "dynamodb:GetItem",
        "dynamodb:DeleteItem"
      ],
      "Resource": "arn:aws:dynamodb:region:account-id:table/your-table-name"
    }
  ]
}
```

📸 Screenshots

![Screenshot 2025-03-12 180510](https://github.com/user-attachments/assets/296a3ac7-3f39-4e57-aaae-3dc0f0e50796)
![Screenshot 2025-03-12 165615](https://github.com/user-attachments/assets/82a69a92-04be-4681-a856-ec3fa37944ac)

🛑 Cleanup

To destroy the infrastructure and remove all resources:
```
terraform destroy -auto-approve
```

💡 Future Enhancements

🔹 Implement CI/CD pipeline for automated state management
    
🔹 Add CloudWatch monitoring for state changes
    
🔹 Integrate AWS KMS for state file encryption

✨ Author

Author -- Yaksh

Github -- 

LinkedIn
