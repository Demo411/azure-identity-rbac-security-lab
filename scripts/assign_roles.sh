#!/bin/bash

# Resource Group
RG="CyberLab-RG"

# Get subscription ID
SUB=$(az account show --query id -o tsv)

echo "Starting RBAC role assignments..."

declare -A ROLES

ROLES["Cloud Engineers"]="Contributor"
ROLES["Network Admins"]="Network Contributor"
ROLES["Service Desk"]="Virtual Machine Contributor"
ROLES["Security Team"]="Security Reader"
ROLES["Help Desk Tier1"]="Reader"

for GROUP in "${!ROLES[@]}"
do

ROLE=${ROLES[$GROUP]}

echo "Assigning $ROLE to $GROUP"

GROUP_ID=$(az ad group show --group "$GROUP" --query id -o tsv)

az role assignment create \
--assignee $GROUP_ID \
--role "$ROLE" \
--scope /subscriptions/$SUB/resourceGroups/$RG

done

echo "RBAC assignments completed."
