variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}
variable "instance_type" {
    type = string
    default = "t3.micro"
}
variable "instances" {
    default = [ "test-devops-mongodb-ec2", "test-devops-redis-ec2"]
}