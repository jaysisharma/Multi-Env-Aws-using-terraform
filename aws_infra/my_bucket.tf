resource "aws_s3_bucket" "my-bucket" {
  bucket = "${var.my-env}-buckettemplate"
  tags = {
    Name ="${var.my-env}-buckettemplate"
    environment = "${var.my-env}"
  }
}

