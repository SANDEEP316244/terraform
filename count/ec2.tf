resource "aws_instance" "ec2" {
    count = length(var.instance)
    ami = var.ami_id
    instance_type = var.instance
    vpc_security_group_ids = [aws_security_group.allow.id]
    tags = {
            Name        = var.instance[count.index]
            Application = "DevOps"
            DR          = "NA"
            ManagedBy   = "AwsConsole"
            Environment = "nonProd"
    }
}
resource "aws_security_group" "allow" {
    name = "temp_sc_grp"
    egress{
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress{
        from_port = 443
        to_port = 443
        protocol = "tcp"
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