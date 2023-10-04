# Create EC2 Instance - Amazon2 Linux
resource "aws_instance" "my-ec2-vm" {
    ami           = data.aws_ami.amzlinux.id 
    instance_type = var.instance_type
    key_name      = "tech_key_east2"
       
    user_data = file("apache-install.sh")  
    vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
    tags = {
      "Name" = "vm-${terraform.workspace}-0"
    }

    connection {
      type = "ssh"
      host = self.public_ip # Understand what is "self"
      user = "ec2-user"
      password = ""
      private_key = file("private-key/tech_key_east2.pem")
    }  
   
}







