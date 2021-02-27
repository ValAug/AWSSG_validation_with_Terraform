# AWSSG_validation_with_Terraform

###### Cloud - :cloud:
![AWS](https://img.shields.io/badge/-AWS-000000?style=flat&logo=Amazon%20AWS&logoColor=FF9900)

###### IaaC
![Terraform](https://img.shields.io/badge/-Terraform-000000?style=flat&logo=Terraform)

# AWS SG and architecture diagram 


## Note

module ./security will be creating resource such AWS VPC and SG.


# Purpose

Shows how to use AWS with Terraform to accomplish the following tasks:

* Build an AWS VPC 
* Build an AWS SG
* Validate AWS-SG configuration using Terraform variable validation


# Prerequisites

* You must have an AWS account, and have your default credentials and AWS Region
  configured
* You must have Terraform installed


# Cautions

* As an AWS best practice, grant this code least privilege, or only the 
  permissions required to perform a task. For more information, see 
  [Grant Least Privilege](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#grant-least-privilege) 
  in the *AWS Identity and Access Management 
  User Guide*.
* This code has been tested in us-west-1 AWS Regions only. However it should work in any other region. 
* Running this code might result in charges to your AWS account.

# How to run this code

* Clone this repo
* cd to AWS_SG_validation_with_Terraform folder
* terraform init
* terraform validate
* terraform plan
* test changing AWS SG configuration and see result
* terraform apply
* Alternate command : terraform apply -auto-approve
* terraform destroy
* Alternate command : terraform destroy -auto-approve
* terraform fmt # A way to format the terraform code
