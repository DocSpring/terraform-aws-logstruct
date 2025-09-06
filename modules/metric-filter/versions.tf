terraform {
  required_version = ">= 1.3.0"
  required_providers {
    logstruct = {
      source  = "DocSpring/logstruct"
      version = ">= 0.1.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}
