variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
  sensitive   = true
}

variable "ami" {
  description = "AMI ID для EC2 інстансу"
  type        = string
}

variable "instance_type" {
  description = "Тип EC2 інстансу"
  type        = string
}

variable "region" {
  description = "AWS регіон"
  type        = string
}