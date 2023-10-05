# Root Module - main.tf

# resource "aws_instance" "root_res_ec2" {
#   ami           = var.root_var_ami
#   instance_type = "t2.micro"
# }

module "root_mod_ec2" {
  source     = "./modules/ec2-instance"
  c1_var_ami = var.root_var_ami

}
