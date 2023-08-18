/*output "clumsy-bird-url" {
  value = "http://${aws_eip.clumsy_bird.public_dns}:8001"
}

output "clumsy-bird-ip" {
  value = "http://${aws_eip.clumsy_bird.public_ip}:8001"
}*/

output "clumsy-bird-url" {
  value = aws_instance.clumsy_bird.public_dns
}

output "clumsy-bird-ip" {
  value = aws_instance.clumsy_bird.public_ip
}
