# RSA key of size 4096 bits
resource "tls_private_key" "my_new_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "my_key_file" {
  filename = "my_new_key.pem"
  content  = tls_private_key.my_new_key.private_key_pem
}

data "local_file" "local_key" {
  filename = local_file.my_key_file.filename
  depends_on = [
    tls_private_key.my_new_key
  ]
}

resource "aws_key_pair" "my_new_key" {
  key_name   = "my_new_key"
  public_key = tls_private_key.my_new_key.public_key_openssh
}