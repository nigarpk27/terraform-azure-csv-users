🚀 Terraform Azure CSV User Provisioning
📌 Overview

This project demonstrates how to automate user creation in Azure using Terraform by reading user data from a CSV file.

Instead of hardcoding users, this approach uses a data-driven method for scalable identity management.

🧰 Technologies Used
Terraform
Azure CLI
Microsoft Entra ID (Azure AD)
Visual Studio Code
Git & GitHub
🎯 Objective

To dynamically create Azure AD users using data from a CSV file.

📂 Project Structure
terraform-azure-csv-users/
│
├── main.tf
├── users.csv
└── README.md
📥 Input (CSV File)
name,role
seema,admin
shanti,dev
sona,readonly
⚙️ How It Works
Terraform reads the CSV file using:
file()
csvdecode()
Converts CSV data into a map
Uses for_each to create users dynamically
🔄 Workflow
CSV File → Terraform → Azure AD Users
🚀 How to Run
1. Login to Azure
az login
2. Initialize Terraform
terraform init
3. Plan
terraform plan
4. Apply
terraform apply
🔍 Verification

Check users:

az ad user list --output table
✅ Output

Users created:

seema
shanti
sona
🎯 Key Features
Data-driven user provisioning
Scalable (just update CSV)
No manual user creation
Clean Terraform automation
⚠️ Note
Passwords are hardcoded for learning purposes
Not recommended for production
🚀 Future Improvements
Add group assignment based on role
Integrate Azure Key Vault
Add CI/CD pipeline
👤 Author

GitHub: https://github.com/nigarpk27

⭐ Support

If you like this project, give it a ⭐ on GitHub!
