resource "aws_instance" "nonprod-devops-poc-ec2" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"

  tags = {
    Name = "nonprod-devops-poc-ec2"
    Application = "DevOps"
    DR = "NA"
    ManagedBy = "AwsConsole"
    Environment = "nonProd"
    appgroup = "DevOps"
  }
}
resource "aws_security_group" "test-poc" {
  name   = "test-poc"

  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  ingress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  tags = {
    Name = "nonprod-devops-poc-secgrp"
    Application = "DevOps"
    DR = "NA"
    ManagedBy = "AwsConsole"
    Environment = "nonProd"
    appgroup = "DevOps"
  }