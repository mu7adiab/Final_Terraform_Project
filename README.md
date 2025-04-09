<p align="center">
  <img src="assets/diagram.jpg" width="700"/>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Terraform-v1.7.5-blueviolet?style=flat-square" />
  <img src="https://img.shields.io/badge/AWS-Deployed-success?style=flat-square&logo=amazonaws" />
  <img src="https://img.shields.io/badge/Project-Sohag%20Infra-orange?style=flat-square" />
</p>
🔸 This Terraform project creates a full AWS infrastructure including:

- ✅ VPC + Subnets (Public & Private)
- ✅ Internet Gateway & NAT Gateway
- ✅ Public EC2 instances with Apache (using remote-exec)
- ✅ Private EC2 backend (No internet)
- ✅ Public & Private ALBs
- ✅ Remote state saved in **S3**
- ✅ Auto-generated `all-ips.txt` file
- ✅ Data source for latest Amazon Linux 2023 AMI

## 📁 Project Structureterraform-sohag/
│
├── main.tf
├── backend.tf
├── variables.tf
├── outputs.tf
├── README.md
├── all-ips.txt
│
└── modules/
    ├── vpc-m/
    ├── subnet-m/
    ├── sg-m/
    ├── nat-gw-m/
    ├── ec2-public-m/
    ├── ec2-private-m/
    ├── alb-public-m/
    └── alb-private-m/

📦 Requirements
Terraform >= 1.7.5

AWS CLI installed and configured

AWS credentials with full access (for testing in Learner Lab)

🧾 Outputs
A file named all-ips.txt will be generated automatically with the public IPs of the EC2 instances in this format:

cpp
Copy
Edit
public-ip1 3.90.x.x
public-ip2 18.210.x.x

📡 EC2 Public Output Example
Each public EC2 instance installs Apache and serves this HTML:

rust
Copy
Edit
Hi, I'M Muhammad Diab... EC2 Public 1 is Working

📌 How to Use
Clone the repo

Create your keyy.pem key and upload it

Run:

bash
Copy
Edit
terraform init
terraform apply
👨‍💻 Author
Muhammad Diab
Track: System Administration @ ITI – Sohag
