terraform {
  backend "s3" {
    bucket         = "terraform-tf-statefile-01"   
    key            = "terraform01/terraform.tfstate"      
    region         = "us-east-2"                              
    encrypt        = true                                    
    acl            = "private"                                
  }
}
