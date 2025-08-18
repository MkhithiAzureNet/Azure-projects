# 🐧 Linux & PostgreSQL Migration to Azure

This module documents the migration of a WSL2-hosted Linux environment and PostgreSQL database to Azure Flexible Server. It includes setup specs, sandbox constraints, and diagnostic logic for burst zone detection and HTML summary output.

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

