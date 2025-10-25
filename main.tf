#creating security Group
resource "aws_security_group" "terra" {
 name = "terra"
 description = "creating SG group"
 vpc_id = var.vpc_id

 ingress {
   description = "allowing ports"
   from_port = 22
   to_port = 22
   protocol = "tcp"
   cidr = ["0.0.0.0/0"]
 }
 ingress {
  description = "allowing ports"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  cidr = ["0.0.0.0/0"]
 }
 egress {
  from_port = 0
  to_port   = 0
  protocol = "-1"
  cidr = ["0.0.0.0"]
 }
 tags = {
  name = "terra"
 }
}

#creating ec2 instance
resource "aws_instance" "web" {
 ami_id = var.ami_id
 instance_type = var.instance_type
 key_name = var.key_name
 subnet_id = "var.subnet_id
 
 
 
