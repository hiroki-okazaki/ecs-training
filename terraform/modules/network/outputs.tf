output "vpc" {
  value = aws_vpc.main
}

output "subnet_public_a" {
  value = aws_subnet.public_a
}

output "subnet_public_c" {
  value = aws_subnet.public_c
}
