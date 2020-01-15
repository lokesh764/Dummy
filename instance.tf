# Defining master inside the public subnet
resource "aws_instance" "node01" {
   ami  = "${var.ami}"
   instance_type = "t2.micro"
   key_name = "mykey"
   subnet_id = "${aws_subnet.subnet1.id}"
   vpc_security_group_ids = ["${aws_security_group.allow_https_only.id}"]
   user_data = "${file("script.sh")}"

  tags {
    Name = "node01"
  }
}

# Defining slave inside the private subnet
resource "aws_instance" "node02" {
   ami  = "${var.ami}"
   instance_type = "t2.micro"
   key_name = "mykey"
   subnet_id = "${aws_subnet.subnet1.id}"
   vpc_security_group_ids = ["${aws_security_group.allow_https_only.id}"]
   user_data = "${file("script.sh")}"

  tags {
    Name = "node02"
  }
}
