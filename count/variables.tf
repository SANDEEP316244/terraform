variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}
variable "instance" {
    type = string
    default = "t3a.micro"
}
variable "instances" {
    default = [ "test-devops-mongodb-ec2", "test-devops-redis-ec2"]
}