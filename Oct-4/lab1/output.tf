output "root_out_publicip" {
    description = "output variable public ip"
    value = aws_instance.root_res_ec2.public_ip
}