resource "aws_instance" "web" {
  ami                    = "ami-09e67e426f25ce0d7"
  instance_type          = "t2.micro"
  count                  = var.instance_count
  vpc_security_group_ids = [aws_security_group.web-sg.id]

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, Atlantis SRG TEAM" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
  tags = {
    Name = var.instance_name
  }
}
