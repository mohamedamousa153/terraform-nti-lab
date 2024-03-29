terraform {
  backend "s3" {
    bucket = "backend-terraform-nti-lab"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}