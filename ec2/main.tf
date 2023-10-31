resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name = aws_key_pair.deployer.id
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  associate_public_ip_address = true

  tags = {
    Name = "HelloWorld"
    Env = "HelloWorld123"
  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.web.public_ip} >> ip.txt"
  }

  provisioner "file" {
    source      = "conf/myapp.conf"
    destination = "/etc/myapp.conf"
  }

  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = ""
    private_key = data.local_file.pvt_key.content
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo ./script.sh"
    ]
  }

}

resource "tls_private_key" "mykey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "private_key" {
  filename = "mykeyfile.pem"
  content = tls_private_key.mykey.private_key_pem
}

resource "aws_key_pair" "deployer" {
  key_name   = "my-ec2-instance-key"
  public_key = tls_private_key.mykey.public_key_openssh
}

data "local_file" "pvt_key" {
  filename = local_file.private_key.filename
}
