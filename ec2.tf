resource "aws_instance" "test" {
    ami = "ami-0697ab5ca1042eb48"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = {
        Name = "test-1"
        Application = "DevOps"
        DR = "NA"
        ManagedBy = "AwsConsole"
        Environment = "nonProd"
    }
}

resource "aws_security_group" "allow_all" {
  name   = "allow-all"

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
        Name = "test-1"
        Application = "DevOps"
        DR = "NA"
        ManagedBy = "AwsConsole"
        Environment = "nonProd"
    }

}