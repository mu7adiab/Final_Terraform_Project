<p align="center">
  <img src="assets/diagram.jpg" width="700"/>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Terraform-v1.7.5-blueviolet?style=flat-square" />
  <img src="https://img.shields.io/badge/AWS-Deployed-success?style=flat-square&logo=amazonaws" />
  <img src="https://img.shields.io/badge/Project-Sohag%20Infra-orange?style=flat-square" />
</p>

# 🚀 Project Name

🛠️ Built with **Terraform** and **AWS**  
💻 Infrastructure as Code for Cloud Deployment  
🔒 Designed for System Administrators

---

## 📌 Table of Contents

- [📖 Overview](#-overview)
- [📦 Features](#-features)
- [⚙️ Requirements](#️-requirements)
- [🚀 Getting Started](#-getting-started)
- [📁 Project Structure](#-project-structure)
- [🔧 Key Variables](#-key-variables)
- [🧠 Future Improvements](#-future-improvements)
- [🧑‍💻 Author](#-author)


---

## 📖 Overview

This project uses **Terraform** to provision a complete cloud infrastructure on **AWS**, including VPC, subnets, EC2 instances, public/private Load Balancers, and more. The architecture is fully modular for easy maintenance and scalability.

---

## 📦 Features

- ✅ Fully automated infrastructure
- ✅ Public & Private Subnets
- ✅ Organized modular structure
- ✅ Auto-generated IP addresses file
- ✅ Internal and external ALBs

---

## ⚙️ Requirements

| Tool         | Recommended Version |
|--------------|---------------------

.
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── modules/
│   ├── vpc/
│   ├── ec2-public/
│   ├── ec2-private-m/
│   └── alb/
└── all-ips.txt

🔧 Key Variables
Variable	Description
vpc_cidr	CIDR block for the main VPC
public_subnets	List of public subnets
private_subnets	List of private subnets
instance_type	Type of EC2 instances
key_name	


🧑‍💻 Author
Muhammad Diab

GitHub: @mu7adiab
