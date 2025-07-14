# Azure Hybrid Network Architecture

![Network Diagram](Network-Diagrams/architecture.jpg)

## Overview
This production-grade hybrid architecture combines Microsoft Azure with on-premises infrastructure, demonstrating competencies aligned with:
- **Azure Certifications (AZ-900 → AZ-104 → AZ-400)**
- **Cisco CCNA & CompTIA Network+**

## Key Components

### On-Prem Infrastructure
| Component          | Implementation Details                  | Certification Alignment       |
|--------------------|----------------------------------------|-------------------------------|
| **Core Networking** | Cisco Layer 3 switches/routers (OSPF, VLANs) | CCNA: Routing Concepts        |
| **Security**       | Firewall with IDS/IPS, SIEM monitoring  | Network+: Security            |
| **Core Services**  | AD DS, DHCP, DNS                        | AZ-104: Hybrid Identity       |

### Azure Virtual Network
| Component          | Implementation Details                  | Certification Alignment       |
|--------------------|----------------------------------------|-------------------------------|
| **Subnet Design**  | Web Tier (10.1.1.0/24), DB Tier (10.1.2.0/24) | AZ-104: Network Security Groups |
| **Connectivity**   | VPN Gateway (IKEv2/IPSec) or ExpressRoute | AZ-104: Hybrid Networking     |
| **Operations**     | Azure Monitor, DevOps Pipelines         | AZ-400: Monitoring/CI/CD      |

## Technical Specifications
```bash
# On-Prem ↔ Azure Connection Details
VPN Type: IKEv2 with AES-256
BGP: Enabled for ExpressRoute
Latency: <50ms (tested via Azure Network Watcher)

Use Cases
Enterprise Cloud Migration

Extend on-prem AD to Azure AD Connect

Tiered application deployment (web/db separation)

ISP Services

Secure multi-tenant access via NSG flow logs
