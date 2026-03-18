#!/bin/bash

DOMAIN=$(az ad signed-in-user show --query userPrincipalName -o tsv | cut -d '@' -f2)

echo "Using tenant domain: $DOMAIN"

PASSWORD="Pa55w.rd1234!"

declare -A USERS

USERS["Joseph Price"]="Cloud Engineers"
USERS["Isabel Garcia"]="Help Desk Tier1"
USERS["Dylan Williams"]="Service Desk"
USERS["Maria Chen"]="Security Team"
USERS["David Brown"]="Network Admins"

for USER in "${!USERS[@]}"
do

GROUP=${USERS[$USER]}

USERNAME=$(echo $USER | awk '{print tolower($1)}')

UPN="$USERNAME@$DOMAIN"

echo "Creating user: $USER"

az ad user create \
--display-name "$USER" \
--password "$PASSWORD" \
--user-principal-name "$UPN" \
--force-change-password-next-sign-in true

echo "Getting user ID..."

USER_ID=$(az ad user show --id "$UPN" --query id -o tsv)

echo "Adding $USER to group: $GROUP"

az ad group member add \
--group "$GROUP" \
--member-id $USER_ID

echo "Completed assignment for $USER"

echo "-----------------------------"

done

echo "All users created and added to groups."
