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

variable "ami_id" {
  description = "ID AMI для EC2 інстансу (натисніть Enter для використання значення за замовчуванням)"
  type        = string
}

variable "instance_type" {
  description = "Тип EC2 інстансу (натисніть Enter для використання значення за замовчуванням)"
  type        = string
}
