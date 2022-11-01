# Create a 3-Tier-Architecture on Aws using Terraform

## Prerequisites

---

Aws account should be created

1. Generate Security credentials using AWS Managemnt console
- To do this, located aws services in AWS Management console and search for IAM, within IAM create users and assign AdministrationAccess as policy.Once user is created, create an access key through the security tap and copy the detail to the allocated place as shown below.

```
Type 'aws configure' in your terminal and following should appear:

AWS Access Key ID [****************XXXX]:
AWS Secret Access Key [****************XXXX]:
Default region name [us-east-1]:
Default output format [json]:
```
2. Terraform Core Commmands
- Terraform consists of 4 core commmands which allow you to initialize, validate, verify and executes. Navigate to the directory downloaded form `./code/` repo which contains the all the files (modules,resources,providers, varibles etc).

1. `terraform init` : allows you to run the files you have in the directory. This initializes the code in directory and downloads all the required plugins inlustrated in the code.
2. `terraform`