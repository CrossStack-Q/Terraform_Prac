provider "aws" {
    region = "us-east-2"
    access_key = "AKIA374DZORJU7KROL4Z"
    secret_key = "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"
}


resource "aws_vpc" "development-vpc" {
  cidr_block = "10.0.0.0/16"
}



data "aws_vpc" "existing_vpc" {
   default = true
}


resource "aws_subnet" "dev-subnet-2" {
  vpc_id = data.aws_vpc.existing_vpc.id
  cidr_block = "172.31.48.0/20"
  availability_zone = "us-east-2a"
}
