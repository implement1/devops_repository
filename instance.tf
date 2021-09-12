resource "aws_instance" "carre" {
  ami = "ami-2757f631"
  instance_type = "t2.micro"
}
output "id" {
  value = "${aws_instance.carre.id}"
}
