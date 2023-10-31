resource "aws_route_table_association" "public-routa-table" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.my-public-route-table.id
}

resource "aws_route_table_association" "private-routa-table" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.my-private-route-table.id
}