terraform {
  backend "s3" {
    bucket         = "quantamvector-infra-statefile-backups"
    key            = "quantamvector/2-eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "quantamvector-terraform-locks"
    encrypt        = true
  }
}
