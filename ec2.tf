resource "aws_key_pair" "my_key" {
  key_name = "my-key"
  public_key = var.public_key
}

resource "aws_instance" "web" {
  # Ubuntu Server 20.04 LTS (HVM), SSD Volume Type in us-east-1
  ami = "ami-0dd76f917833aac4b"
  instance_type = "t3a.nano"
  key_name = aws_key_pair.my_key.key_name
  vpc_security "$ {aws_security_group.web_sg.id}"]
  
  tags = {
    Name = "web"
  }

  user_data = << - EOF
            #! / bin / bash
            echo "<h1> Say hello to Atlantis! SRG TEAM! </h1>"> index.html
            nohup busybox httpd -f -p 8080 &
            EOF
}
