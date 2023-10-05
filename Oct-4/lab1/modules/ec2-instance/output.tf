output "c1_out_publicip" {
  description = "output variable public ip"
  value       = aws_instance.c1_res_ec2.public_ip
}
