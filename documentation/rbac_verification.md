RBAC Verification
az role assignment list \
--resource-group CyberLab-RG \
-o table

Expected roles:

Cloud Engineers → Contributor

Network Admins → Network Contributor

Service Desk → VM Contributor

Security Team → Security Reader

Help Desk Tier1 → Reader

