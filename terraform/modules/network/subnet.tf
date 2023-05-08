resource "aws_subnet" "public_a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_public_a_cidr_block
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true // サブネットに起動したインスタンスにパブリックIPアドレスを割り当てる必要があることを示すには、trueを指定します。デフォルトはfalseです。
  tags = {
    Name = "${var.env}-${var.project_name}-subnet-public-a"
  }
}

resource "aws_subnet" "service_a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_service_a_cidr_block
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.env}-${var.project_name}-subnet-service-a"
  }
}

resource "aws_subnet" "private_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_private_a_cidr_block
  availability_zone = "${var.region}a"
  tags = {
    Name = "${var.env}-${var.project_name}-subnet-private-a"
  }
}

resource "aws_subnet" "public_c" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_public_c_cidr_block
  availability_zone       = "${var.region}c"
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.env}-${var.project_name}-subnet-public-c"
  }
}

resource "aws_subnet" "service_c" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_service_c_cidr_block
  availability_zone       = "${var.region}c"
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.env}-${var.project_name}-subnet-service-c"
  }
}

resource "aws_subnet" "private_c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_private_c_cidr_block
  availability_zone = "${var.region}c"
  tags = {
    Name = "${var.env}-${var.project_name}-subnet-private-c"
  }
}
