resource "aws_internet_gateway" "igw-sohag" {
  vpc_id = var.vpc_id

  tags = {
    Name = "igw-sohag"
  }
}

resource "aws_route_table" "public-rt-sohag" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-sohag.id
  }

  tags = {
    Name = "public-rt-sohag"
  }
}

resource "aws_route_table_association" "public-1-assoc" {
  subnet_id      = var.public_subnet_1_id
  route_table_id = aws_route_table.public-rt-sohag.id
}

resource "aws_route_table_association" "public-2-assoc" {
  subnet_id      = var.public_subnet_2_id
  route_table_id = aws_route_table.public-rt-sohag.id
}
