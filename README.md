# 🚀 Terraform Docker Project - Node.js App

This project demonstrates how to provision a **Docker container locally using Terraform** with a **custom Docker image** from Docker Hub.

## 📦 Project Structure

- `main.tf` – Main Terraform configuration  
- `variables.tf` – Input variables used in the config  
- `README.md` – Project documentation  

## 🧰 Tools Used

- Terraform  
- Docker  
- Visual Studio Code  
- Docker Hub  

## 🔧 What It Does

- Pulls a custom Docker image: `syedmujtaba2002/nodejs-demo-app:latest`  
- Creates a container using that image  
- Maps **port 5000** on the container to **port 5000** on your local machine  
- All configuration values are managed via variables  

## ⚙️ How to Use

1. Clone the repository and navigate into the folder  
2. Run `terraform init` to initialize  
3. Run `terraform plan` to review  
4. Run `terraform apply -auto-approve` to provision  

Once applied, open [http://localhost:5000](http://localhost:5000) in your browser to see the running app.

## 🧼 To Destroy the Setup

Run:

```bash
terraform destroy -auto-approve
