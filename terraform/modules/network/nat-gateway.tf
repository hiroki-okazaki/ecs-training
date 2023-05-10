resource "aws_nat_gateway" "public_a" {
  allocation_id = aws_eip.nat_eip_a.id
  subnet_id     = aws_subnet.public_a.id
  tags = {
    Name = "${terraform.workspace}-${var.project_name}-ngw-a"
  }
}

// 料金節約のためNatGatewayは1つだけ作成する
# resource "aws_nat_gateway" "public_c" {
#   allocation_id = aws_eip.nat_eip_c.id
#   subnet_id     = aws_subnet.public_c.id
#   tags = {
#     Name = "${terraform.workspace}-${var.project_name}-ngw-c"
#   }
# }
