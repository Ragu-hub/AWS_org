terraform {
  backend "s3" {
    bucket         = "terraform-test-aws"   
    key            = "terraform01/terraform.tfstate"      
    region         = "us-east-2"                              
    encrypt        = true                                    
    acl            = "private"                                
  }
}
