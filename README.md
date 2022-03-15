# DevOps Internship: Terraform Task 1
## Hometask

* Скачать последнюю версию terraform
* Написать terraform манифест, который с помощью data source сущностей получает из облака информацию о AWS VPC/Azure virtual network, subnets и security groups 
* Вывести в оутпут имена AWS VPC/Azure virtual network, subnets и security groups

## Solution
The task is completely solved with the help of Terraform

Components:

* Azure
    * Resources
    * Subnet

## Terraform Commands
### Azure Authentication

```bash
az login
```

### Output data
```bash
terraform init
terraform plan -var "resource_group_name=my_group_name"
```