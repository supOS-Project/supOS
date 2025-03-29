# supOS: 开源工业物联网 (IIoT) 平台

[English](README.md) | [中文](README_zh.md)

---

## 介绍
supOS 是一个开源的工业物联网 (IIoT) 平台，集成了多个开源项目，如 **Kong**、**Konga**、**Keycloak**、**Node-RED**、**EMQX**、**TDengine**、**TimescaleDB**、**MinIO**、**McpClient** 和 **CopilotKit**。它旨在提供一个全面、模块化的解决方案，以支持现代 IIoT 应用的构建和部署。

## 平台架构

### 核心组件

- **微服务架构**：集成多个容器（如后端、前端、EMQX、Node-RED 等），构建可扩展、模块化的 IIoT 平台。
- **API 网关与管理**：使用 **Kong** 作为 API 管理网关，并通过 **Konga** 提供可视化 UI 进行控制。
- **边缘计算与物联网数据处理**：**EMQX** 处理实时 MQTT 消息，**Node-RED** 用于低代码物联网开发。
- **数据库与时序数据存储**：**PostgreSQL (TimescaleDB)** 和 **TDengine** 提供优化的时序数据存储方案。
- **可观测性与日志管理**：**Elasticsearch、Filebeat 和 Kibana** 进行集中日志管理和可视化。
- **SCADA 及可视化仪表板**：**FUXA** 用于 SCADA 监控，**Grafana** 提供可定制的数据分析面板。
- **安全与认证**：**Keycloak** 负责集中式 SSO 及身份管理。
- **对象存储**：**MinIO** 提供高性能、S3 兼容的存储解决方案。
- **GraphQL 集成**：**Hasura** 提供基于 PostgreSQL/TimescaleDB 的实时 GraphQL API。

---

## 安装指南

### 1. Linux

#### 1.1 运行环境
- **操作系统**：目前已在 Ubuntu Server 24.04 + Docker 进行测试，欢迎对其他发行版的反馈。
- **Docker**：我们假设你已经安装了 Docker（包含 `docker compose` 和 `buildx`），测试版本如下：
  - Docker Engine - Community: 27.4.0
  - Docker Buildx: v0.19.2
  - Docker Compose: v2.31.0
  - containerd: 1.7.24
  
#### 1.2 使用方法
1. **使用 Git Bash 克隆项目**：
   ```bash
   git clone <this repo>
   ```
2. **修改 `.env` 环境变量文件**：
   - 进入 `supos-ce-deploy` 目录，并编辑 `.env` 文件。
   - 修改 `VOLUMES_PATH`（项目数据存储路径）。
   - 修改 `ENTRANCE_DOMAIN`（前端入口域名/IP 地址）。
   - 根据需要修改其他变量。

3. **启动项目**：
   ```bash
   bash bin/startup.sh
   ```
   - 运行后等待容器拉取和初始化，首次启动可能需要几分钟。

如果尚未安装 Docker，我们提供的脚本可以在 Ubuntu Server 24.04 上自动安装。其他操作系统请参考官方 Docker 文档。

### 2. Windows

#### 2.1 运行环境
- 在 Windows 10 或 Windows 11 上安装最新版 **Docker Desktop** 和 **Git**。
- 建议使用 **Git Bash** 进行所有操作。

#### 2.2 使用方法
1. **克隆项目**：
   ```bash
   git clone <this repo>
   ```
2. **编辑 `.env` 文件中的环境变量**：
   - `VOLUMES_PATH`（存放项目数据的目录）
   - `ENTRANCE_DOMAIN`（请勿使用 127.0.0.1）
   - 其他必要的环境变量

3. **启动项目**：
   ```bash
   bash bin/startup.sh
   ```
   - 等待容器拉取并初始化，首次启动可能需要几分钟。

### 3. 访问平台
   - 在浏览器中访问 `http://<YOUR-DOMAIN>:<YOUR-PORT>`（根据 `.env` 文件中的 `ENTRANCE_DOMAIN` 和 `ENTRANCE_PORT` 设置）。

## 许可证
   - 本项目基于 Apache 2.0 许可证发布，详情请参见 LICENSE 文件。

## 联系我们
   - 如果你有任何问题，请提交 issue 或发送邮件与我们联系。
