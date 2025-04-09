<p align="center">
  <img src="assets/diagram.jpg" width="700"/>
</p>
<h1 align="center">🚀 Terraform AWS Infrastructure – Sohag Project</h1>

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

👨‍💻 Author
Muhammad Diab
Track: System Administration @ ITI – Sohag
