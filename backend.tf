terraform {
  backend "s3" {
    bucket         = "terraform-test-aws"   
    key            = "terraform01/terraform.tfstate"      
    region         = "us-east-2"                              
    encrypt        = true                                    
    acl            = "private"                                
    dynamodb_table = "terraform-state-lock" # DynamoDB table name for state locking
  }
}

