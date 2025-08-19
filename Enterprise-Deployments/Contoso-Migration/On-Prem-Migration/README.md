# 🐧 Linux & PostgreSQL Migration to Azure

This module documents the migration of a WSL2-hosted Linux environment and PostgreSQL database to Azure Flexible Server. It includes setup specs, sandbox constraints, and diagnostic logic for burst zone detection and HTML summary output.

> ⚠️ Sandbox limitations prevent external connectivity. Migration steps are simulated locally.

---

## 📸 Azure PostgreSQL Setup

![Azure PostgreSQL Flexible Server Setup](screenshots/az-postgres-basics.png)


> *I used Sandbox deployment for cost-free simulation and recruiter-facing documentation.*

---

## 🔧 Configuration Summary

| Parameter            | Value                        |
|----------------------|------------------------------|
| **Server Name**      | `coolnet-postgres-flex`      |
| **Region**           | South Africa North           |
| **PostgreSQL Version** | 15                         |
| **Compute Tier**     | Burstable B1MS (1 vCore, 2 GiB RAM) |
| **Storage**          | 32 GiB                       |
| **Availability Zone**| No preference                |
| **High Availability**| Disabled                     |
| **Geo-Redundancy**   | Disabled                     |
| **Estimated Cost**   | USD 20.52/month *(sandbox only)* |

---

## 🌐 Networking Configuration

- **Connectivity Method**: Private access (VNet integration)
- **Firewall Rules**: Not configurable in sandbox
- **VNet/Subnet**: Auto-assigned by Azure Learn sandbox
- **Public Access**: Disabled
- **Note**: External connectivity (e.g., from WSL2 or pgAdmin) is not supported in sandbox. Migration steps are simulated locally.

*I configured PostgreSQL Flexible Server with private VNet integration in Azure sandbox. Documented sandbox limitations and simulated external connectivity for local migration testing.*

## 🛡️ Security Configuration

![Azure PostgreSQL Flexible Server Setup](screenshots/az-postgres-security.png) 

- **Data Encryption**: Enabled (Service-managed key)
- **Key Management**: Azure-managed encryption at rest
- **Note**: Customer-managed keys require Azure Key Vault integration, which is not supported in sandbox environments.

*Configured service-managed encryption for PostgreSQL Flexible Server in Azure sandbox. Documented key management options and sandbox limitations.*

## 🧩 Resource Tags

![Azure PostgreSQL Flexible Server Setup](screenshots/az-postgres-tags.png)

| Name         | Value                    |
|--------------|--------------------------|
| Project      | CoolNet+ Azure Migration |
| Environment  | Sandbox                  |
| Owner        | Nhlanhla Mkhithi         |
| Workload     | PostgreSQL Dev           |
| Module       | Azure-FlexServer-Setup   |

> Tags applied to PostgreSQL Flexible Server for billing clarity & resource grouping.

*I applied structured resource tags to PostgreSQL Flexible Server for modular tracking and cost analysis. Tags reflect project scope, environment, and ownership.*

