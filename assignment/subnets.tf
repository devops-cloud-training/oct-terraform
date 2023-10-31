resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "192.168.0.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "192.168.1.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "private-subnet"
  }
}