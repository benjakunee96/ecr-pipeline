# /**
#  * Create by : Benja kuneepong
#  * Date : Wed, Aug  7, 2024 10:45:12 AM
#  * Purpose : ประกาศว่าใช้ terraform version อะไรสำหรับ provider
#  */

 terraform {
   required_providers {
     aws = {
       source  = "hashicorp/aws"
       version = "~> 4.67.0"
     }
   }
 }



/**
 * Create by : Benja kuneepong
 * Date : Wed, Aug  7, 2024 10:45:12 AM
 * Purpose : กำหนด provider information
 */
provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region   = var.aws_region
  

  default_tags {
    tags = {
      Createby    = var.create_by_name
    }
  }
}

