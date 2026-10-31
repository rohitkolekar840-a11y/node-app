# Node.js Microservice (`node-app`) - DevOps CI/CD & EKS Deployment

A containerized Node.js & Express microservice built to demonstrate a modern, automated GitOps and cloud-native deployment pipeline using Docker, Jenkins, Amazon EKS, and Prometheus/Grafana monitoring.

---

## 🏗️ Architecture & Tech Stack

* **Application:** Node.js, Express.js
* **Containerization:** Docker, Docker Hub / AWS ECR
* **Orchestration:** Kubernetes (Amazon EKS) provisioned via `eksctl`
* **CI/CD Automation:** Jenkins Pipeline (`Jenkinsfile`)
* **Infrastructure as Code (IaC):** AWS CloudFormation / YAML Manifests
* **Observability:** Prometheus & Grafana

---

## 📂 Project Structure

```text
node-app/
├── app.js               # Express application entry point & health endpoints
├── package.json         # Node.js dependencies and scripts
├── Dockerfile           # Multi-stage/Optimized container build instructions
├── Jenkinsfile          # Automated CI/CD pipeline definition
└── k8s/                 # Kubernetes manifests (Deployment, Service, Probes)
    ├── deployment.yaml
    └── service.yaml
