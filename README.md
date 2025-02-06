#  Deploying an EC2 Instance with Terraform

##  Overview
This project shows step by step how to create and manage an **AWS EC2 instance** using **Terraform**.Instead of manually provisioning resources via the AWS console, Terraform allows us to automate the process efficiently.

##  Prerequisites
- **Visual Studio Code** (or any preferred code editor)
- **Terraform** installed on your machine
- **An AWS Account** with necessary permissions

##  Project Structure
```
 terraform-ec2
 ├── provider.tf   # AWS provider configuration
 ├── ec2.tf        # EC2 instance configuration
 └── README.md      # Project documentation
```

## ⚙️ Setup and Deployment

### 1️⃣ **Initialize Terraform**
First, create a `provider.tf` file and define the AWS provider:
```hcl
provider "aws" {
  region = "us-east-1"
}
```
Now, run the following command to initialize Terraform:
```sh
tf init
```

### 2️⃣ **Define an EC2 Instance**
Create an `ec2.tf` file and add the following code:
```hcl
resource "aws_instance" "example" {
  ami           = " # Replace with a valid AMI ID"
  instance_type = "t2.micro"
}
```
Validate your code before execution:
```sh
tf validate
```

### 3️⃣ **Plan and Apply Changes**
To preview the resources Terraform will create, run:
```sh
tf plan
```
Then, apply the changes to deploy the instance:
```sh
tf apply
```
Confirm the action when prompted, and Terraform will create your EC2 instance. 🎉

### 4️⃣ **Creating Multiple Instances**
To spin up multiple instances, modify your `ec2.tf` file:
```hcl
resource "aws_instance" "example" {
  count         = 3
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
```
Run the commands again:
```sh
tf plan
```
```sh
tf apply
```
Terraform will now provision **3 instances** instead of one.

### 5️⃣ **Destroying the Infrastructure**
When you're done, clean up the resources by running:
```sh
tf destroy
```
This will **terminate all instances** created via Terraform. No need for manual deletion! 🧹


- [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
- [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/index.html)

---
🚀 **First time using Terraform?** Don't worry! This project is a great way to start. If you have any questions, feel free to reach out. Happy coding! 😊

