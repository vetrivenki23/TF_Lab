# Root Module - main.tf

resource "aws_instance" "c1_res_ec2" {
  ami           = var.c1_var_ami
  instance_type = "t2.micro"
}
