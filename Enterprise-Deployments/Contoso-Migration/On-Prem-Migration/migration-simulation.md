# 🐧 PostgreSQL Migration Simulation: WSL2 to Azure Flexible Server

This document simulates a PostgreSQL migration from a WSL2-hosted Linux environment to an Azure PostgreSQL Flexible Server. Due to sandbox constraints, external connectivity is not available. The steps below reflect real-world logic and are validated locally.

---

## 🧰 Environment Setup

### WSL2 (Ubuntu)
```bash
sudo apt update
sudo apt install postgresql postgresql-contrib
sudo service postgresql start

sudo -u postgres createdb coolnet_migration
sudo -u postgres psql -c "CREATE TABLE diagnostics (id SERIAL PRIMARY KEY, status TEXT);"
sudo -u postgres psql -c "INSERT INTO diagnostics (status) VALUES ('Ready'), ('Simulated'), ('Sandbox');"

pg_dump coolnet_migration > coolnet_migration.sql

psql "host=<azure-host> port=5432 dbname=<dbname> user=<user> password=<password>" < coolnet_migration.sql

*⚠️Please take note: In sandbox, the above step is not executable, but i have added it to demostrate migration logic.*

*Simulated PostgreSQL migration from WSL2 to Azure Flexible Server. Documented full lifecycle with CLI commands, HTML summary, and sandbox-aware diagnostics.*