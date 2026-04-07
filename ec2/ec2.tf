resource "aws_instance" "ec2" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3a.micro"
    vpc_security_group_ids = [aws_security_group.sec-grp-test.id]
    tags  {
        Name = "test-DevOps-ec2"
        Application = "DevOps"
        appgroup = "DevOps"
        DR = "NA"
        ManagedBy = "AwsConsole"
        Environment = "nonProd"
    }
}

resource "aws_security_group" "allow_all" {
  name = "allow-all"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "test-1"
    Application = "DevOps"
    DR          = "NA"
    ManagedBy   = "AwsConsole"
    Environment = "nonProd"
  }
}
