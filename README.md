# 🛡️ Cloud Guardian

![Build Status](https://github.com/dhiraj1104s/cloud-guardian/actions/workflows/lint.yml/badge.svg)

## 🌟 Overview
**Cloud Guardian** is a DevOps governance tool designed to enforce schema standards for cloud infrastructure. By utilizing **Infrastructure-as-Code (IaC)** patterns, it ensures that cloud resources—including AWS EC2 instances, S3 buckets, and VPCs—are modeled and validated correctly before deployment.

---

## 🛠️ Tech Stack
* **Operating System:** Linux (WSL2 / Ubuntu 22.04+)
* **Version Control:** Git & GitHub
* **CI/CD:** GitHub Actions (Automated Linting & Schema Validation)
* **ORM/IaC:** Prisma 7 (Schema Modeling)
* **Runtime:** Node.js (v22.12.1+)

---

## 🚀 Technical Achievements (SRE Milestone)
This project demonstrates a production-ready development lifecycle:
* **Automated Governance:** Integrated a CI/CD pipeline that triggers on every `push` to validate infrastructure schemas, ensuring zero configuration drift.
* **Environment Parity:** Managed complex dependency migrations, including Node.js v22 upgrades and Prisma 7 ESM configurations in a Linux environment.
* **Secure Configuration:** Implemented a decoupled database connection logic using `prisma.config.ts` and environment variables to follow SRE security best practices.

---

## ⚙️ How to Run Locally

To validate the infrastructure schema on your machine:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/dhiraj1104s/cloud-guardian.git
   cd cloud-guardian
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Set the Environment Variable:**
   ```bash
   export DATABASE_URL="file:./dev.db"
   ```

4. **Run Validation:**
   ```bash
   npx prisma validate
   ```

## 📂 Project Structure
* `.github/workflows/`: Automation logic for GitHub Actions.
* `prisma/`: Contains `schema.prisma` (The Cloud Infrastructure Model).
* `scripts/`: Utility Bash scripts for environment health checks.
* `prisma.config.ts`: Externalized configuration for Prisma 7 compliance.