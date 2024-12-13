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

resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "terraform-state-lock"
  billing_mode   = "PAY_PER_REQUEST" # On-demand capacity mode
  hash_key       = "LockID"
  
  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Environment = "Production"
    Owner       = "Drayboard"
  }
}
