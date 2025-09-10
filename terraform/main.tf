terraform {
  backend "s3" {
    bucket  = "salodoxerabucket"
    key     = "terraform.tfstate"
    region  = "eu-north-1"
    encrypt = true
  }
}
provider "aws" {
  # В access_key і secret_key вказуємо нашого user якого ми створили в aws 
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region # Це регіон AWS, де створюватимуться ресурси
}
