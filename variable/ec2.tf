resource "aws_instance" "ec2" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_secrity_group.allow.id]
    tags = var.ec2_tags
}
resource "aws_secrity_group" "allow" {
    name = var.sg_name
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