# Copilot Instructions for restaurant-app-terraform-code

## Project Overview
This repository contains Terraform code for provisioning Google Cloud Platform (GCP) infrastructure for a restaurant application. The main components managed include VPC networking and Google Cloud Storage (GCS) buckets.

## Architecture & Major Components
- **VPC Configuration**: Defined in `vpc.tf`, this sets up the network boundaries for the application.
- **GCS Buckets**: Managed in `gcs.tf`, e.g., `google_storage_bucket` resources for storing app data.
- **Provider Setup**: `provider.tf` configures the GCP provider and authentication.
- **Backend State**: `backend.tf` configures remote state storage, typically in GCS.
- **Variables & Inputs**: `variables.tf` defines input variables; `terraform.auto.tfvars` provides default values.

## Developer Workflows
- **Initialize Terraform**: Run `terraform init` in the project root to set up providers and backend.
- **Plan Infrastructure**: Use `terraform plan` to preview changes.
- **Apply Changes**: Deploy infrastructure with `terraform apply`.
- **State Management**: State is managed remotely (see `backend.tf`). Ensure you have access to the configured GCS bucket.

## Project-Specific Conventions
- **Resource Naming**: GCS buckets and other resources use a suffix (e.g., `gcs-rest-1209876`) for uniqueness. Update names as needed for new environments.
- **File Structure**: Each major GCP component has a dedicated `.tf` file. Avoid mixing unrelated resources in the same file.
- **Variable Usage**: Prefer referencing variables from `variables.tf` for resource properties to support environment flexibility.

## Integration Points & Dependencies
- **GCP Authentication**: Ensure your local environment is authenticated with GCP (e.g., via `gcloud auth application-default login`).
- **Remote State**: The backend configuration requires access to a GCS bucket for state locking and sharing.

## Examples
- To add a new GCS bucket, duplicate the resource block in `gcs.tf` and update the `name` property and resource label.
- To add a new variable, define it in `variables.tf` and reference it in the relevant resource file.

## Key Files
- `backend.tf`: Remote state configuration
- `provider.tf`: GCP provider setup
- `vpc.tf`: VPC network resources
- `gcs.tf`: GCS bucket resources
- `variables.tf`: Input variable definitions
- `terraform.auto.tfvars`: Default variable values

---
For questions or unclear conventions, review the referenced files or ask for clarification. Please provide feedback if any section is incomplete or unclear.
