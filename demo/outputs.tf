output "web-address" {
  value = "${aws_instance.web[0].public_dns}:8080 ${aws_instance.web[1].public_dns}:8080"
}
