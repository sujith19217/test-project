provider "aws" {

}

resource "aws_instance" "one" {
ami = "ami-0d92749d46e71c34c"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.test-sg.id]
key_name = "aws"
tags = {
Name = "worker-node"
environment = "dev"
}
}


