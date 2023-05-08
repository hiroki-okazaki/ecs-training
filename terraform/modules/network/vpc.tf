resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true // VPC内でDNSによる名前解決を有効化するかを指定
  enable_dns_hostnames = true // ここを有効にしないとVPC内同士の名前解決ができない。VPC内インスタンスがDNSホスト名を取得するかを指定
  tags = {
    Name = "${var.env}-${var.project_name}-vpc"
  }
}
