<p align="center">
  <img src="assets/diagram.jpg" width="700"/>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Terraform-v1.7.5-blueviolet?style=flat-square" />
  <img src="https://img.shields.io/badge/AWS-Deployed-success?style=flat-square&logo=amazonaws" />
  <img src="https://img.shields.io/badge/Project-Sohag%20Infra-orange?style=flat-square" />
</p>

# 🚀 اسم المشروع

🛠️ مبني باستخدام **Terraform** و **AWS**  
💻 مشروع للبنية التحتية ككود  
🔒 خاص بـ System Administrators

---

## 📌 جدول المحتويات

- [📖 مقدمة](#-مقدمة)
- [📦 المميزات](#-المميزات)
- [⚙️ المتطلبات](#️-المتطلبات)
- [🚀 خطوات التشغيل](#-خطوات-التشغيل)
- [📁 هيكل الملفات](#-هيكل-الملفات)
- [📌 المتغيرات المهمة](#-المتغيرات-المهمة)
- [🧠 أفكار مستقبلية](#-أفكار-مستقبلية)
- [🧑‍💻 المؤلف](#-المؤلف)
- [📄 الرخصة](#-الرخصة)

---

## 📖 مقدمة

مشروع يستخدم Terraform لإنشاء بنية تحتية سحابية متكاملة على AWS. يشمل إنشاء VPC، Subnets، EC2، و Load Balancer وغيرها، مع تنظيم باستخدام Modules.

---

## 📦 المميزات

- 🔹 بنية تحتية كاملة
- 🔹 Subnets عامة وخاصة
- 🔹 تنظيم باستخدام Modules
- 🔹 ملف يحتوي على جميع الـ IPs
- 🔹 ALB داخلي وخارجي

---

## ⚙️ المتطلبات

| الأداة        | الإصدار المقترح |
|---------------|-----------------|
| Terraform     | >= 1.5          |
| AWS CLI       | >= 2.0          |
| Linux أو macOS| مفضل            |
| حساب AWS      | مفعل            |

---

## 🚀 خطوات التشغيل

```bash
# استنساخ المشروع
git clone https://github.com/username/project-name.git
cd project-name

# تهيئة Terraform
terraform init

# مراجعة الخطة
terraform plan

# تنفيذ الإنشاء
terraform apply

