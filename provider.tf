terraform {
  required_providers {
    aws= {
        source = "hashicorp/aws"
        version = "~> 5.66"
    }
  }
}
provider "aws" {
  profile = "default"
   
   region = "ap-south-1"
  
}