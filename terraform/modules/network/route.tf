
resource "aws_route" "public_a" {
  destination_cidr_block = "0.0.0.0/0"
  route_table_id         = aws_route_table.public_a.id
  gateway_id             = aws_internet_gateway.main.id
}

resource "aws_route" "public_c" {
  destination_cidr_block = "0.0.0.0/0"
  route_table_id         = aws_route_table.public_c.id
  gateway_id             = aws_internet_gateway.main.id
}

resource "aws_route" "service_a" {
  destination_cidr_block = "0.0.0.0/0"
  route_table_id         = aws_route_table.service_a.id
  nat_gateway_id         = aws_nat_gateway.public_a.id
}

resource "aws_route" "service_c" {
  destination_cidr_block = "0.0.0.0/0"
  route_table_id         = aws_route_table.service_c.id
  nat_gateway_id         = aws_nat_gateway.public_a.id
}
