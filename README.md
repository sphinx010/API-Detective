
---
# 🕵️‍♂️ API Detective: Automated Microservice QA Framework

**API Detective** is an end-to-end API testing framework that orchestrates and validates the communication between multiple microservices.
It automates Postman collections with Newman, wraps them in PowerShell for smart execution, and runs seamlessly in CI/CD pipelines via GitHub Actions or Jenkins; producing dynamic detective-style HTML reports for every test run.

---

## 🚀 What It Does

* Runs complete **API test suites** across multiple services automatically.
* Generates rich, **HTML reports** that visualize request/response flows and failures.
* Integrates directly with **GitHub Actions** and **Jenkins** for continuous QA feedback.
* Uses **PowerShell automation** to manage multi-collection execution with clean logging.
* Centralized environment configs for staging, integration, and production.

---

## ❓❓ Why It Matters

API Detective isn’t just about running tests; it’s about creating *observability* in microservice communication.
It models how a real QA pipeline should behave: intelligent orchestration, consistent environments, and instant visibility into what’s breaking and why.

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

---

## 🧩 Project Overview

```
API-Detective/
│
├── collections/                # Postman test suites
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

API Detective demonstrates how a **QA engineer can design a full automation ecosystem**  and just test,  but harmonize scripting, CI/CD, and intelligent reporting.
It’s the kind of framework that turns manual verification into continuous assurance.

---
