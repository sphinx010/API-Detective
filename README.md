
---
# 🕵️‍♂️ API Detective: Automated Microservice QA Framework
[![Run Newman API Test Suites](https://github.com/sphinx010/API-Detective/actions/workflows/api-tests.yml/badge.svg)](https://github.com/sphinx010/API-Detective/actions/workflows/api-tests.yml)

**API Detective** creates keen observability in microservice communication, delivering an environment agnostic manner to intelligently observe, test and monitor micro service integration, with instant visibility into failures—perfect for keeping service contracts rock‑solid during every deployment. runs seamlessly in CI/CD pipelines via GitHub Actions or Jenkins; producing dynamic detective-style HTML reports for every test run.

---

## 🚀 What It Does

* Runs complete **API test suites** across multiple services automatically.
* Generates rich, **HTML reports** as artifacts, that visualize request/response flows and failures at the end of each run.
* Integrates directly with **GitHub Actions** and **Jenkins** for continuous QA feedback.
* Uses **PowerShell automation** to manage multi-collection execution with clean logging.
* Centralized environment configs for staging, integration, and production.

---

## ❓❓ Why It Matters

API Detective isn't just about running tests; it's about creating observability in microservice communication.
It models how a real QA pipeline should behave: intelligent orchestration, consistent environments, and instant visibility into what's breaking and why.
It also provides a robust regression safety net, ensuring service contracts remain intact across deployments.
---

## ⚙️ Quick Start

1. **Clone the repo**

   ```bash
   git clone https://github.com/sphinx010/API-Detective.git
   cd API-Detective
   ```

2. **Install dependencies**

   ```bash
   npm install -g newman newman-reporter-htmlextra
   ```

3. **Run all tests**

   ```powershell
   ./scripts/run_all_collections.ps1
   ```

4. **View results**
   Open the generated reports in:

   ```
   newman/reports/
   ```
   or download the results as a zip-file at the end of the workflow's run.. 
---

## 🧩 Project Overview

```
API-Detective/
│
├── collections/                # Core microservice contract test suites
├── environments/               # Environment configs
├── newman/reports/             # Generated HTML reports
├── scripts/run_all_collections.ps1
├── .github/workflows/ci.yml    # GitHub Actions workflow
├── jenkins/Jenkinsfile         # Jenkins pipeline config
└── README.md
```

---

## 🧾 CI/CD Pipeline

**GitHub Actions:**
Automatically runs all collections on every push or PR and uploads HTML reports as build artifacts.

**Jenkins:**
Ready-to-deploy pipeline script for scheduled or triggered test runs with post-build reporting.

---

## 🧰 Tech Stack

| Tool                          | Purpose                                                                   |
| ----------------------------- | ----------------------------------------------- |
| **Postman + Newman**  |         API test creation and automation         |
| **HTML-EXTRA**             |      For reports                                                |
| **PowerShell**                | Custom orchestration of multiple collections |
| **newman-reporter-htmlextra** | Visual, rich HTML reporting              |
| **GitHub Actions / Jenkins**  | Continuous integration and execution  |

---

## 👤 Author

**Ayooluwa Paul Obembe**
*QA Automation Engineer*
*Building scalable, autonomous QA pipelines for microservice ecosystems.*

---

### My observation/reflection

API Detective demonstrates how a **QA engineer can design a full automation ecosystem**  and not just test, but harmonize scripting, CI/CD, and intelligent reporting.
It’s the kind of framework that turns manual verification into continuous assurance.

<p align="center">
  <img src="https://img.shields.io/badge/API_Testing-Postman-orange?style=for-the-badge&logo=postman" />
  <img src="https://img.shields.io/badge/Automation-Newman-yellow?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Reporting-htmlextra-pink?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Scripting-PowerShell-blue?style=for-the-badge&logo=powershell" />
  <img src="https://img.shields.io/badge/CI/CD-GitHub_Actions-black?style=for-the-badge&logo=githubactions" />
  <img src="https://img.shields.io/badge/CI/CD-Jenkins-red?style=for-the-badge&logo=jenkins" />
</p>
---
