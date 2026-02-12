resource "aws_instance" "website_server" {
  ami                    = "ami-03ea746da1a2e36e7"
  instance_type          = "t3.micro"
  key_name               = "webserver1_keypair"
  vpc_security_group_ids = [aws_security_group.website_sg.id]
  iam_instance_profile   = "ECR-EC2-Role"

  tags = {
    Name        = "website-server"
    Provisioned = "Terraform"
  }
}