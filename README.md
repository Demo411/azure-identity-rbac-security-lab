Azure Identity & RBAC Security Lab
📌 Overview

This project demonstrates the implementation of secure Identity and Access Management (IAM) in Microsoft Azure using:

Microsoft Entra ID

Role-Based Access Control (RBAC)

Least Privilege Principle

Azure CLI automation

Activity Log monitoring

Security incident simulation

🎯 Objectives

Create users and security groups

Assign RBAC roles using least privilege

Automate identity and role management using CLI

Monitor activity logs

Simulate and analyze a security incident

🏗️ Architecture
Users → Groups → RBAC Roles → Resource Group
User	Group	Role
Joseph Price	Cloud Engineers	Contributor
Isabel Garcia	Help Desk Tier1	Reader
Dylan Williams	Service Desk	VM Contributor
Maria Chen	Security Team	Security Reader
David Brown	Network Admins	Network Contributor
⚙️ Technologies Used

Microsoft Azure

Microsoft Entra ID

Azure CLI

RBAC

Azure Monitor

🔐 Security Controls Implemented

Role-Based Access Control (RBAC)

Least Privilege Access

Group-Based Role Assignment

Activity Log Monitoring

Security Incident Simulation

🚨 Security Incident Simulation

A Service Desk user attempted to create a resource group without sufficient permissions.

Result:

AuthorizationFailed

This confirms RBAC enforcement and proper access control.

📊 Logging & Monitoring

Used Azure Activity Logs to track:

Role assignments

Resource creation

Failed actions

💰 Cost

This lab was completed using Azure Free Tier ($200 credit) with no billable resources deployed.

👨🏽‍💻 Author

Ademola Aderibigbe
Cybersecurity Graduate Student – Nova Southeastern University
