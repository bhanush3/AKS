# Deploy AKS Cluster using Hashicorp Terraform

This folder contains the assets needed to deploy an AKS Cluster in a Microsoft Azure subscription. 
The deployment steps are documented in the Bash scripts contained in the [scripts](scripts) folder. The scripts in this folder are not designed to be standalone assets, but rather to show a step-by-step process to demonstrate the processes for deploying a more complex AKS cluster solution.

The entire solution is designed to be deployed using [Hashicorp Terraform](https://www.terraform.io/). The solution will deploy:

- an Azure Resource Group
- a Virtual Network
- a Log Analytics workspace
- an Azure AD service principal and RBAC assignment
- an AKS cluster configured with monitoring addon
- Azure Container registry
- Azure Keyvault

The solution uses a [Terraform backend](https://www.terraform.io/docs/backends/types/azurerm.html) supported by an Azure Storage Account. This is deployed using the steps documented in the Bash script [createTfRemoteState.sh](scripts/createTfRemoteState.sh)