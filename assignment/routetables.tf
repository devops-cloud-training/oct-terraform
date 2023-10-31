resource "aws_route_table" "my-public-route-table" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw.id
  }

  tags = {
    Name = "my-public-route-table"
  }
}

resource "aws_route_table" "my-private-route-table" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "my-private-route-table"
  }
}
