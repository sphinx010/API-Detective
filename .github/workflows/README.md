🕵️‍♂️ API Detective — End-to-End Microservice QA Automation Framework

API Detective is a full-scale QA automation pipeline for API integrated test automation.
It brings together Postman scripting, Newman CLI, PowerShell automation, CI/CD via GitHub Actions and Jenkins, and dynamic HTML reporting to model how real enterprise teams test and validate microservice integrations.

The framework acts like a QA brain that connects four independent API services into one orchestrated system, validates their communication logic, catches inconsistencies in real time, and automatically generates detective-style visual and console reports that tell the story of every run.

## 🚀 Features

* **Postman + Newman Integration:** Run Postman collections via Newman CLI for full API automation.
* **Dynamic PowerShell Runner:** A custom PowerShell script (`scripts/run-collections.ps1`) automates multiple collection runs and report generation.
* **HTML Extra Reports:** Auto-generated test reports with detailed logs, failures, and request/response breakdowns (`newman/reports/`).
* **GitHub Actions CI Pipeline:** Executes all test suites on every push or pull request with result logging and artifact uploads (`.github/workflows/ci.yml`).
* **Jenkins Integration Ready:** Seamless setup for Jenkins pipelines via `jenkins/Jenkinsfile`.
* **Centralized Environments:** Manage environments in `environments/` for easy switch between staging, integration, and production.
* **Enhanced Debugging:** Custom console logs and formatted outputs for quick test insights.

---

## ⚙️ Setup & Installation

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/sphinx010/API-Detective.git
   cd newman-automation-framework
   ```

2. **Install Dependencies:**
   Ensure Node.js and Newman are installed:

   ```bash
   npm install -g newman newman-reporter-htmlextra
   ```

3. **Run Tests Locally (PowerShell):**
   Execute the PowerShell script to run all collections and auto-generate reports:

   ```powershell
   ./scripts/run-collections.ps1
   ```

4. **View Reports:**
   Reports are automatically generated and saved under:

   ```
   newman/reports/
   ```

---

## 🧱Project Structure

```
newman-automation-framework/
│
├── collections/                  # All Postman test collections
├── environments/                 # Environment files (.postman_environment.json)
├── newman/reports/               # Auto-generated HTML reports
├── scripts/run-collections.ps1   # PowerShell automation script
├── .github/workflows/ci.yml      # GitHub Actions CI configuration
├── jenkins/Jenkinsfile           # Jenkins pipeline script
└── README.md                     # You’re here ...
```

example of a run:
newman

Notify-Service Tests

→ ping
  GET https://webhook.site [200 OK, 78.98kB, 6.4s]

→ verify order
  GET https://webhook.site/{{id_path}} [200 OK, 458B, 4.2s]
  √  Check order_confirmation status
  ┌
  │ '🕵️‍♂️ CASE CLOSED: Order confirmed without a hitch!'
  │ '✅ The evidence is clear: status = "success"'
  │ '📦 Package is already en route to alternate dimension... (aka warehouse)'
  │ '🎯 No bugs detected. Criminals remain unemployed.'
  └

┌─────────────────────────┬────────────────────┬───────────────────┐
│                         │           executed │            failed │
├─────────────────────────┼────────────────────┼───────────────────┤
│              iterations │                  1 │                 0 │
├─────────────────────────┼────────────────────┼───────────────────┤
│                requests │                  2 │                 0 │
├─────────────────────────┼────────────────────┼───────────────────┤
│            test-scripts │                  3 │                 0 │
├─────────────────────────┼────────────────────┼───────────────────┤
│      prerequest-scripts │                  2 │                 0 │
├─────────────────────────┼────────────────────┼───────────────────┤
│              assertions │                  1 │                 0 │
├─────────────────────────┴────────────────────┴───────────────────┤
│ total run duration: 11s                                          │
├──────────────────────────────────────────────────────────────────┤
│ total data received: 78.19kB (approx)                            │
├──────────────────────────────────────────────────────────────────┤
│ average response time: 5.3s [min: 4.2s, max: 6.4s, s.d.: 1098ms] │
└──────────────────────────────────────────────────────────────────┘

---

## 🛠️ CI/CD Integrations

### 🔹 GitHub Actions

Automated test execution on every commit or pull request.
To monitor builds and reports:

* Navigate to the **Actions** tab in your GitHub repo.
* Select the latest workflow run to view logs and status.

### 🔹 Jenkins

For Jenkins integration, see `jenkins/Jenkinsfile`.
It defines automated test triggers and post-build HTML report publishing steps.

---

## 🧾 Reports & Logs

* All test executions generate HTML Extra reports with:

  * Detailed request-response views
  * Assertion summaries
  * Failure breakdowns
  * Visual timeline of requests
* Additional console logs (debugging, validation, and request metadata) enhance real-time traceability.

---

## 🧠 Tech Stack

| Tool                              | Purpose                                                        |
| -------------------------| ----------------------------------------------- |
| **Postman**                | API collection creation                                 |
| **Newman**               | Command-line test execution                      |
| **newman-reporter-htmlextra** | Rich HTML reports                    |
| **PowerShell**           | Batch automation for multi-collection runs |  ← automation logic
| **GitHub Actions**    | Continuous Integration pipeline                  |
| **Jenkins**                  | Continuous Deployment integration           | 

---

## 👨‍💻 Author

**Ayooluwa Paul Obembe**
QA Automation Engineer 
🚀 *Focused on creating robust, scalable QA frameworks for modern pipelines.*

---
