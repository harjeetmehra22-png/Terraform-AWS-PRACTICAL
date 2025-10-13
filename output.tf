output "public_instance_public_ip" {
  description = "Public IP address of the frontend EC2 instance"
  value       = aws_instance.public.public_ip
}

output "public_instance_private_ip" {
  description = "Private IP of the public EC2 instance"
  value       = aws_instance.public.private_ip
}

output "private_instance_private_ip" {
  description = "Private IP address of the backend EC2 instance"
  value       = aws_instance.private.private_ip
}

output "s3_bucket" {
  description = "S3 bucket created for logs"
  value       = aws_s3_bucket.logs.bucket
}

output "nat_gateway_id" {
  description = "NAT Gateway ID"
  value       = aws_nat_gateway.nat.id
}
