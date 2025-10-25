variable "region" {
  description  = "selecting region here"
  type = string
}
variable "ami_id" {
  description = "selecting AMI ID"
  type = string
}
variable "instance_type" {
  description = "selecting instance type"
  type = string
  default = "t2.micro"
}
variable "key_name" {
  description = "selecting key pair"
  type = string 
}
variable "vpc_id" {
  description = "selecting vpc"
  type = string
}
variable "subnet_id"{
  description = "selecting subnet"
  type = string
}

