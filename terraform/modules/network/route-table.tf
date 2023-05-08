resource "aws_route_table" "public_a" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.env}-${var.project_name}-route-table-public-a"
  }
}

resource "aws_route_table_association" "public_a" {
  subnet_id      = aws_subnet.public_a.id
  route_table_id = aws_route_table.public_a.id
}

resource "aws_route_table" "public_c" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.env}-${var.project_name}-route-table-public-c"
  }
}

resource "aws_route_table_association" "public_c" {
  subnet_id      = aws_subnet.public_c.id
  route_table_id = aws_route_table.public_c.id
}

resource "aws_route_table" "service_a" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.env}-${var.project_name}-route-table-service-a"
  }
}

resource "aws_route_table_association" "service_a" {
  subnet_id      = aws_subnet.service_a.id
  route_table_id = aws_route_table.service_a.id
}

resource "aws_route_table" "service_c" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.env}-${var.project_name}-route-table-service-c"
  }
}

resource "aws_route_table_association" "service_c" {
  subnet_id      = aws_subnet.service_c.id
  route_table_id = aws_route_table.service_c.id
}


resource "aws_route_table" "private_a" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.env}-${var.project_name}-route-table-private-a"
  }
}

resource "aws_route_table_association" "private_a" {
  subnet_id      = aws_subnet.private_a.id
  route_table_id = aws_route_table.private_a.id
}

resource "aws_route_table" "private_c" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.env}-${var.project_name}-route-table-private-c"
  }
}

resource "aws_route_table_association" "private_c" {
  subnet_id      = aws_subnet.private_c.id
  route_table_id = aws_route_table.private_c.id
}
