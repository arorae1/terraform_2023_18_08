## My Clumsy Bird App Development on AWS

<p align="center">
<img src="https://www.dreamsplus.in/wp-content/uploads/2020/05/AWS-Cloud-logo-png-600x450.jpg" alt="AWS" width="120">
<img src="https://www.svgrepo.com/show/376353/terraform.svg" alt="Terraform" width="120">
</p>

**Description:** Deploying a Simple Web Application named **"My_Clumsy_Bird_App_Development_AWS"** on the AWS Cloud using infrastructure as code.

**Prerequisites**
To follow this lab, you will need an AWS account and associated credentials that allow you to create resources.

- To use your IAM credentials to authenticate the Terraform AWS provider, set the AWS environment variables.
  
$ export AWS_ACCESS_KEY_ID=<your_access_key>

$ export AWS_SECRET_ACCESS_KEY=<your_secret_key>

We will provision resources that qualify under the AWS free tier. If your account does not qualify for free tier resources, we are not responsible for any charges that you may incur.

## Table of Contents
1. [Create a Terraform Cloud Workspace](#create-a-terraform-cloud-workspace)
2. [Change Terraform Versions for Workspace](#change-terraform-versions-for-workspace)
3. [Create Terraform Configuration](#create-terraform-configuration)
4. [Deploy Infrastructure using Terraform Cloud Workspaces](#deploy-infrastructure-using-terraform-cloud-workspaces)
5. [Destroy Infrastructure in an Appropriate Workspace](#destroy-infrastructure-in-an-appropriate-workspace)
6. [Conclusion](#conclusion)

### 1. Create a Terraform Cloud Workspace
A workspace naming convention should be as follows:-
- Lowercase letters
- Numbers
- Dashes

The recommended naming convention from HashiCorp is the team name, the cloud the infrastructure will be deployed in, the application or purpose of the infrastructure, and the environment, whether it's dev, staging, prod, etc.

Workspace names are relative to the organization, so they do not have to be globally unique but unique within the organization.

Suggested workspace naming convention, e.g., `devops-aws-myapp-dev`, makes it easier to filter, navigate, and perform automated operations against Terraform Cloud workspaces.

Let's create a new development workspace for your app called `devops-aws-myapp-dev`.

- Select New Workspace and choose the CLI-driven workflow.
- Name your workspace as `devops-aws-myapp-dev`.
- Provide a description: My Clumsy Bird Application - AWS - Development.
- Select Create Workspace.

![Workspace Creation](https://github.com/arorae1/terraform_2023_18_08/blob/main/clumsy_bird/outputs/workspace_creation.PNG)

### 2. Change Terraform Versions for Workspace
Modify the Terraform version for your workspace to use the same version of Terraform that is installed on your workstation. To validate the version you are running, execute `terraform version` on the terminal.

1. Set the Terraform Version to match on the workspace's Settings > General Settings.
2. Change the Execution Mode to Local.

Kindly save your settings by clicking the Save settings button at the bottom of the page! This allows us to run Terraform commands from our workstation with local variables.

![Terraform Settings](https://github.com/arorae1/terraform_2023_18_08/blob/main/clumsy_bird/outputs/execution_mode_local.PNG)

### 3. Create Terraform Configuration
Let's deploy infrastructure using the Terraform Cloud workspace to store remote state.

To deploy the infrastructure for our application, we will be using the Terraform configuration files present at `/home/<USER>/clumsy-bird`.

Add a code block in `backend.tf` to set up the cloud integration. You can find this code on the Overview tab of your Terraform Cloud workspace or use the `backend.tf` file from this Github repo.

### 4. Deploy Infrastructure using Appropriate Terraform Cloud Workspaces
Initialize and apply configuration in the development workspace.

You can view the Terraform State information for your infrastructure deployment on the State tab of your workspace. You can view the Clumsy Bird application by opening the clumsy-bird-url.

Note: The application may take a couple of minutes to load.

Take a look at the `outputs.tf` file in this GitHub repo for the resources created.

### 5. Destroy Infrastructure in an Appropriate Workspace
Clean up and destroy your infrastructure at any time to keep costs down.

### 6. Conclusion
Congratulations! We have successfully completed the deployment of Clumsy Bird Web Application on AWS Cloud using Terraform as Infrastructure as Code (IaC).

![Clumsy Bird Screenshot](https://github.com/arorae1/terraform_2023_18_08/blob/main/clumsy_bird/outputs/clumsy-brid-app.png)
