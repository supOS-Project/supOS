# supOS: An Open-Source IIoT Platform

[English](README.md) | [中文](README_zh.md)

---

## Introduction
supOS is an open-source Industrial Internet of Things (IIoT) platform that integrates multiple open-source projects such as **Kong**, **Konga**, **Keycloak**, **Node-RED**, **EMQX**, **TDengine**, **TimescaleDB**, **MinIO**, **McpClient**, and **CopilotKit**. It aims to provide a comprehensive and modular solution for building and deploying modern IIoT applications.

## Platform Architecture

### Core Components

- Microservices Architecture: Integrates various containers (e.g., backend, frontend, EMQX, Node-RED) to form a scalable and modular IIoT platform.
- API Gateway & Management: Uses **Kong** for API management and **Konga** for UI-based control.
- Edge & IoT Data Handling: **EMQX** for real-time MQTT messaging, **Node-RED** for low-code IoT development.
- Database & Time-Series Storage: **PostgreSQL (TimescaleDB)** and **TDengine** for optimized time-series data handling.
- Observability & Logging: **Elasticsearch, Filebeat, and Kibana** for centralized logging and visualization.
- SCADA & Dashboards: **FUXA** for SCADA-like monitoring, **Grafana** for customizable analytics.
- Security & Authentication: **Keycloak** for centralized SSO and identity management.
- Object Storage: **MinIO** as a high-performance, S3-compatible storage solution.
- GraphQL Integration: **Hasura** for real-time GraphQL APIs on PostgreSQL/TimescaleDB.

---

## Installation

### 1.Linux

#### 1.1 Operating Environment
- **Operating System**: Currently tested on Ubuntu Server 24.04 with Docker. We welcome feedback on other OS distributions.
- **Docker**: We assume you have Docker (with `docker compose` and `buildx`) installed. Our tested versions:
  - Docker Engine - Community: 27.4.0
  - Docker Buildx: v0.19.2
  - Docker Compose: v2.31.0
  - containerd: 1.7.24
    
#### 1.2 Usage
1. **Clone the project using Git Bash**:
   ```bash
   git clone <this repo>
   ```
2. **Modify the environment variables in the `.env` file**:
   - Navigate to the `supos-ce-deploy` directory and edit the `.env` file.
   - Update `VOLUMES_PATH` (directory for storing project data).
   - Update `ENTRANCE_DOMAIN` (frontend entry domain/IP address).
   - Modify other variables as needed.

3. **Start the project**:
   ```bash
   bash bin/startup.sh
   ```
   - Wait for containers to pull and initialize. The first run may take a few minutes.
     
   If you don’t have Docker installed yet, our scripts can help set it up for Ubuntu Server 24.04. For other operating systems, please refer to the official Docker documentation.

### 2.Windows

#### 2.1 Operating Environment
- Install the latest version of **Docker Desktop** and **Git** on Windows 10 or Windows 11.
- It is recommended to perform all operations in **Git Bash**.

#### 2.2 Usage
1. **Clone the project**:
   ```bash
   git clone <this repo>
   ```
2. **Edit environment variables in the .env file**:
   - VOLUMES_PATH (directory for storing project data)
   - ENTRANCE_DOMAIN (Do not use 127.0.0.1)
   - Any other required variables per your environment

3. **Start the project**:
   ```bash
   bash bin/startup.sh
   ```
   - Wait for containers to pull and initialize. This may take a few minutes on first run.

### 3.Access the Platform
   - Visit `http://<YOUR-DOMAIN>:<YOUR-PORT>` in your browser (based on ENTRANCE_DOMAIN and ENTRANCE_PORT in `.env`).

## License
   - This project is distributed under Apache 2.0. See LICENSE for details.

## Contact
   - If you have questions, open an issue or email us.
     
# Contributors

We gratefully acknowledge the following individuals for their contributions to this project:

- **Wenhao Yu** – Architecture  
- **Liebo** – UNS  
- **Weipeng Dong** – FUXA  
- **Kangxi & Lifang Sun** – Backend  
- **Minghe Zhuang** – Node-RED  
- **Wangji Xin** – Grafana  
- **Fayue Zheng & Yue Yang** – Frontend, Generative UI  
- **Yanqiu Liu** – McpClient  

