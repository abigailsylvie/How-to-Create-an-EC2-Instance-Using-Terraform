resource "aws_instance" "web" {
  ami           = "ami-0c614dee691cbbf37"
  instance_type = "t2.micro"
  count = 4

  tags = {
    Name = "HelloWorld"
  }
}