🔧 Project Overview: Automated EC2 Setup with Terraform & Ansible

🧩 Tools Involved:
Terraform: Infrastructure as Code (IaC) tool to provision EC2 instances.

Ansible: Configuration management tool to install and configure software on EC2.

AWS EC2: Virtual machines where the app or service runs.
------------------------------------------------------------------

🎯 Goal:
Provision an EC2 instance using Terraform, then use Ansible to:

SSH into the instance

Install NGINX

Deploy a sample web page
------------------------------------------------------------------

📁 Project Structure
ec2-terraform-ansible/
├── terraform/       ➜ Terraform code
├── ansible/         ➜ Ansible code
├── ssh-key/         ➜ SSH keys (for server login)
└── README.md        ➜ Project summary
------------------------------------------------------------------

🛠 Step-by-Step Guide:
Step 1: 🔑 Generate SSH Key Pair
    Cmd- ssh-keygen -t rsa -b 4096 -f ssh-key/id_rsa

Step 2: ⚙️ Terraform Configuration

Step 3: ☁️ Deploy EC2 with Terraform
    Cmd-    cd terraform
            terraform init
            terraform apply
    Save the public IP from the output for the Ansible inventory.

Step 4: 📦 Ansible Setup
        hosts.ini
        playbook.yml

Step 5: 🚀 Run Ansible
    Cmd-    cd ansible
            ansible-playbook -i hosts.ini playbook.yml
    Now you should be able to access your EC2 instance's public IP and see the NGINX web page.


