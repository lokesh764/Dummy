# Dummy
Terraform_AWS_Jenkins_Docker

The above Terraform scripts will create infra on AWS

The provider.tf has credentials & region, VPC , subnet , security group info

The script.sh file has user-data script to install jenkins, ansible, aws-cli, python, docker
The instance.tf file contains ec2 instance creation data.

-- execute following commands to achieve to create AWSInfra

terraform plan
terraform apply
