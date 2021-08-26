# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  #   access_key = ""
  #   secret_key = ""
  shared_credentials_file = "/Users/marcocaldera/.aws/creds"
  profile                 = "marcocaldera-profile"
}

# resource "aws_vpc" "first-vpc" {
#   cidr_block = "10.0.0.0/16"
#   tags = {
#     Name = "production"
#   }
# }

# resource "aws_subnet" "subnet1" {
#   vpc_id     = aws_vpc.first-vpc.id
#   cidr_block = "10.0.1.0/24"

#   tags = {
#     Name = "prod-subnet"
#   }
# }

resource "aws_instance" "my-first-server" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  tags = {
    Name = "ubuntu"
  }
}


