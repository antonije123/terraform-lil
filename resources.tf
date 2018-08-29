resource "aws_vpc" "enviroment-example-two" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true
    enab
    tags = {
        Name = "terraform-aws-vpc-example-two"
    }
}
