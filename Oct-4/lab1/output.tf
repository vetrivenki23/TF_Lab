output "root_out_publicip" {
  description = "output variable public ip"
  value       = module.root_mod_ec2.c1_out_publicip
}
