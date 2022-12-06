resource "aws_instance" "ec2_vm" {
 ami		= "ami-02384a901b5df8024"
 instance_type  = "t3.micro"
 key_name       = "yanis-arslen-djouadi-key"

 tags = {
   Name = "yanis-arslen.djouadi@etu.u-pec.fr"
 }

 vpc_security_group_ids = ["${aws_security_group.default.id}"]
}

