terraform {
  backend "s3" {
    bucket = "surya-terraform-state-file"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
