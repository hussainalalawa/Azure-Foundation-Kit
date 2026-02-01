# Azure Foundation Kit v1.0
### Secure & Cost-Effective Cloud Landing Zone

## 📝 Project Overview
This repository contains a **Production-Ready Landing Zone** for startups and small-to-medium businesses. The goal is to provide a secure starting point on Microsoft Azure using **Infrastructure as Code (Bicep)** to ensure consistency, security, and cost control.

## 🛡️ Key Features
* **Zero-Trust Networking:** Implements a Virtual Network (VNet) with isolated subnets.
* **Security Hardening:** Includes a Network Security Group (NSG) pre-configured with the "Principle of Least Privilege."
* **Automated Deployment:** 100% Bicep-based deployment to eliminate manual configuration errors.
* **Cost Management:** Architecture designed to stay within the Azure Free/Trial tier limits for testing.

## 📐 Architecture Components
1.  **VNet:** `10.0.0.0/16` address space for scalability.
2.  **Subnet:** `10.0.1.0/24` dedicated for Web Tier workloads.
3.  **NSG Rules:** * `AllowHTTP`: Port 80 (Inbound)
    * `DenyAll`: All other ports blocked by default for maximum security.

## 🚀 How to Use
1.  **Prerequisites:** Azure CLI and Bicep installed.
2.  **Login:** `az login`
3.  **Deploy:**
    ```bash
    az deployment group create \
      --resource-group YourResourceGroup \
      --template-file infra/main.bicep
    ```

## 🛠️ Skills Demonstrated
* Cloud Infrastructure (Azure)
* Infrastructure as Code (Bicep)
* Network Security & RBAC
* Git/GitHub Version Control

---
**Available for Azure Cloud Consultations & Freelance Projects!**
