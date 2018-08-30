resource "aws_subnet" "subnet1" {
  cidr_block        = "${cidrsubnet(aws_vpc.enviroment-example-two.cidr_block,3,1)}"
  vpc_id            = "${aws_vpc.enviroment-example-two.id}"
  availability_zone = "eu-central-1a"
}

resource "aws_subnet" "subnet2" {
  cidr_block        = "${cidrsubnet(aws_vpc.enviroment-example-two.cidr_block,2,2)}"
  vpc_id            = "${aws_vpc.enviroment-example-two.id}"
  availability_zone = "eu-central-1b"
}

resource "aws_security_group" "subnetsecurity" {
  vpc_id = "${aws_vpc.enviroment-example-two.id}"

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"

    cidr_blocks = [
      "${aws_vpc.enviroment-example-two.cidr_block}",
    ]
  }
}
