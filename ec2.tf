provider "aws" {
  region = "us-east-1" # Singapore region
  access_key = "AKIA25RDU3IFVFRKQJGV"
  secret_key = "UTpBb3koqik2NXhbhj44yu34fvrQ4CxWrzjzBPK8"
}

 

resource "aws_instance" "example" {
  ami           = "ami-03a6eaae9938c858c" # Replace with the SUSE Linux AMI ID
  instance_type = "t2.micro"
}

 

output "public_ip" {
  value = aws_instance.example.public_ip
}