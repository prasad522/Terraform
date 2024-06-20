variable "ami_id" {
  
}
variable "instance_type" {
  
}
variable "public_key" {
  
}
variable "subnet_id" {
  
}
variable "sg_for_jenkins" {
  
}

variable "enable_public_ip_address" {
  
}
variable "user_data_install_jenkins" {
  
}
variable "organisation" {
  
}

variable "environment" {
  
}

output "jenkins_ec2_instance_ip" {
    value = aws_instance.Jenkins_Instance.ip.id
}

output "jenkins_instance_public_ip" {
  value = aws_instance.Jenkins_Instance.public_ip.id
}

output "ssh_connection_string_for_ec2" {
  value = forma
}
resource "aws_instance" "Jenkins_Instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = {
      Name = "${var.organisation}+_+${var.environment}+_+jenkins"
    }
    
    subnet_id = var.subnet_id
    security_groups = var.sg_for_jenkins
  
}