Security Incident Simulation
Scenario

A Service Desk user attempted to create a resource group.

Command
az group create --name UnauthorizedRG --location eastus
Result
AuthorizationFailed
Explanation

The user has the Virtual Machine Contributor role, which does not allow resource group creation.

Security Control

RBAC

Least Privilege

Conclusion

The system successfully blocked unauthorized access.

