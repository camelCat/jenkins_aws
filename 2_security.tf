resource "aws_security_group" "ssh" {
  name = "${var.environment}-ssh"
  description = "a Security Group that allows connection through port443"
#   vpc_id = "${data.aws_vpc.default.id}"

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [ var.ssh_ingress_cidr ]
  } 
  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  } 
  egress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  } 
  egress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  } 
  egress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  } 
  
  tags = {
      Name = var.environment
  }
}
