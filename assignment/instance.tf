resource "aws_instance" "my_new_web_server" {
  ami                         = var.ami_name
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.my_new_key.id
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  associate_public_ip_address = true
  count                       = var.instance_count
  subnet_id                   = aws_subnet.public_subnet.id
  tags = {
    "Name" = "My Webserver"
  }
  user_data = file("./myscript.sh")
}

resource "aws_instance" "existing_web_server" {
  ami = "ami-072ec8f4ea4a6f2cf"
  tags = {
    "Environment" = "dev"
  }
  instance_type = "t2.micro"
}
