# ⚙️ Azure ARM Templates – Infrastructure Automation Portfolio

## 🧠 Overview

This folder showcases ARM (Azure Resource Manager) templates used to deploy cloud infrastructure automatically. These templates reflect skills aligned with real-world  diagnostics.

---

## 📦 Project: Windows Server 2022 VM Deployment

### 🌐 Template: `deploy-windows-vm.json`

> Automatically provisions a **Windows Server 2022 Datacenter VM** in the `East US` region using `Standard_D2s_v3`.

### 🔍 Key Specs
- Resource Type: `Microsoft.Compute/virtualMachines`
- API Version: `2023-03-01`
- OS Image: `MicrosoftWindowsServer:windowsserver:2022-datacenter`
- VM Size: `Standard_D2s_v3` (2 vCPUs, 8 GB RAM)
- Location: `East US`
- Parameters:  
  - `vmName`  
  - `adminUsername`  
  - `adminPassword`  
  - `windowsOSVersion`  

### 🚀 Value
- Infrastructure-as-Code (IaC) automation
- Modular, secure deployment via parameters
- Scalable building block for more complex architectures (NSG, Public IP, Monitoring)

---

## 🎯 Certification Alignment

✅ **AZ-900** – Resource types, regions, templates, VM deployment, ARM structure, automation 
✅ **Network+ / CCNA** – Layer 3 logic and IP configuration foundations

---

## 📁 Future Enhancements

- Add networking resources: VNet, NSG, Public IP  
- Attach diagnostics and logging  
- Expand to linked templates and custom script extensions  
- Document integration with WiFi Nanny telemetry or CoolNet+ Pulse alerts

---

## ✍️ Author

**Nhlanhla Mkhithi** – Hybrid Networking Innovator
📧 [Contact Me](https://github.com/MkhithiAzureNet) 
📂 [Azure Projects Home](https://github.com/MkhithiAzureNet/Azure-Projects)
