resource "aws_ram_resource_share" "vpc_share" {
  provider = aws.admin
  name     = "AdminVPCShare"
  tags = {
    Name = "admin-vpc-share"
  }
}

resource "aws_ram_principal_association" "qa_principal" {
  provider          = aws.admin
  resource_share_arn = aws_ram_resource_share.vpc_share.arn
  principal          = var.qa_account_id
}

resource "aws_ram_resource_association" "vpc_association" {
  provider          = aws.admin
  resource_share_arn = aws_ram_resource_share.vpc_share.arn
  resource_arn       = aws_vpc.admin_vpc.arn
}
