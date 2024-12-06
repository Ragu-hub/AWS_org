terraform {
  backend "s3" {
    bucket         = "terraform-tf-statefile-01"   
    key            = "terraform/terraform.tfstate"      
    region         = "us-west-2"                              
    encrypt        = true                                    
    acl            = "private"                                
  }
}
