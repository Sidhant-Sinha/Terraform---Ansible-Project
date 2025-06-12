provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("../ssh-key/id_rsa.pub")
}

resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (adjust as needed)
  instance_type = "t2.micro"
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    Name = "AnsibleManagedInstance"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}



#commands-
# cd terraform
# terraform init
# terraform apply
