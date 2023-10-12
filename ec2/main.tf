resource "aws_instance" "web" {
  ami           = "ami-041feb57c611358bd"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}