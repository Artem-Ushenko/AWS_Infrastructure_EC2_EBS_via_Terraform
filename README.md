# Terraform AWS Infrastructure - EC2, EBS, VPC

This Terraform project sets up an AWS EC2 instance with an attached EBS volume, installs Docker, and runs an Nginx container. It demonstrates the power of Infrastructure as Code (IaC) for automating the deployment of a simple web server.

## Prerequisites

- Terraform installed on your local machine.
- An AWS account with the necessary permissions to create EC2 instances, EBS volumes, and key pairs.
- An SSH key pair for AWS EC2 with commands:
  - ```$ ssh-keygen -t rsa -b 4096 -C "aws_key" -f "aws_key"```
  - ```$ chmod 644 aws_key.pub && chmod 400 aws_key```
- Ensure your SSH keys are available at current directory.
## Usage

1. **Clone the Repository**: Clone this repository to your local machine or download the files.

   ```sh
   git clone https://github.com/Artem-Ushenko/aws_ec2_ebs_iac_by_terraform.git
   ```

2. **Navigate to the Project Directory**: Change into the project directory.

   ```sh
   cd aws_ec2_ebs_iac_by_terraform
   ```

3. **Initialize Terraform**: Initialize the Terraform project to install necessary plugins.

   ```sh
   terraform init
   ```

4. **Create a Terraform Plan**: Generate an execution plan for Terraform.

   ```sh
   terraform plan
   ```

5. **Apply the Terraform Configuration**: Apply the configuration to start the provisioning process. You will be prompted to confirm the action.

   ```sh
   terraform apply
   ```

   To automatically approve the plan, you can use:

   ```sh
   terraform apply -auto-approve
   ```

6. **Access Your Instance**:
   - After the provisioning process is complete, your EC2 instance will be running with Docker installed and an Nginx container serving a simple webpage. 
   - You can access this page via the instance's public IP address what you can find in ouptuts after the provisioning process. 
   - Command to check availability of the public IP address:
   
     ```$ curl -s http://<public_ip_address>```

## Project Structure

- **Modules**: Modular resources for EC2 instances and EBS volumes are defined in the `./modules` directory.
- **Main Configuration**: The main Terraform configuration is defined in the root directory, setting up the infrastructure, including key pairs, EC2 instance, EBS volume, and the Docker+Nginx setup.

## Additional Notes

- Ensure your AWS CLI is configured with the correct credentials before running Terraform commands.
- Modify the paths to the SSH keys in the Terraform files if they are located differently in your environment.
- The default instance type is `t2.micro`, which falls under the AWS Free Tier. However, check the current AWS pricing and the Free Tier eligibility.

## Clean Up

To destroy the Terraform-managed infrastructure (to avoid unnecessary charges), run:

```sh
terraform destroy
```

---

Make sure to adjust paths, instance types, and any other configurations as necessary to match your setup and requirements.
