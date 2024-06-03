# Terraform Automation

## Project Teraform and GitHub Actions

Automate the creation and maintenance of the environment software projects.

## Project Assumptions

- Terraform is used for infrastructure as code.
- Kubernetes cluster is created using AWS's Elastic Kubernetes Service (EKS).
- The project should be as simple and reusable as possible.
- The pipeline is executed whenever there's a change in the Terraform code in the main branch.
- There will be only one Kubernetes environment (dev, staging, and production environments are separated by namespace).

## Technologies Used

- [AWS](https://aws.amazon.com)
    - [S3](https://aws.amazon.com/s3)
    - [EKS](https://aws.amazon.com/eks)
- [AWS CLI](https://aws.amazon.com/cli/)
- [Terraform](https://www.terraform.io)
    - [AWS Provider](https://registry.terraform.io/providers/hashicorp/aws)
    - [AWS VPC Terraform module](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws)
    - [AWS EKS Terraform module](https://registry.terraform.io/modules/terraform-aws-modules/eks/aws)
- [GitHub](https://github.com)
    - [GitHub Actions](https://github.com/features/actions)

## Technology Motivations

- **EKS** - Project requirement.
- **S3** - Used to store the current state of the Terraform project. Chosen for being an AWS service and having file versioning control.
- **GitHub Actions** - Project requirement.

## Execution Instructions

The creation or update pipeline is executed whenever the Terraform code in the main branch is changed.

## Configurations 

Project configuration variables are in the terraform.tfvars file, except for sensitive variables which are in the GitHub Actions secrets manager.

**Variables stored in secrets:**

AWS_ACCESS_KEY_ID => Access Key used to configure the AWS CLI.

AWS_SECRET_ACCESS_KEY => Secret access Key used to configure the AWS CLI.

AWS_BUCKET_NAME => Name of the Bucket used to store the Terraform project state.

AWS_BUCKET_FILE => Name of the file used to store the Terraform project state.


## Possible Project Evolutions

Suggested project evolutions:

- Separate dev, staging, and prod environments using Terraform Workspace or Terraform Grunt for creation and management of these environments.
- Use DynamoDB with S3 to prevent parallel execution of Terraform.
