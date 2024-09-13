module "dev-app" {
  source = "./aws_infra"
  my-env = "development"
  instance_type = "t2.micro"
  ami_id = "ami-0522ab6e1ddcc7055"
  table_name = "Development"
  instance_name = "Development"
}

module "stg-app" {
  source = "./aws_infra"
  my-env = "stagging"
  instance_type = "t2.micro"
  ami_id = "ami-0522ab6e1ddcc7055"
  table_name = "Stagging"
  instance_name = "Stagging"

}
module "prod-app" {
  source = "./aws_infra"
  my-env = "production"
  instance_type = "t2.micro"
  ami_id = "ami-0522ab6e1ddcc7055"
  table_name = "Production"
  instance_count = 2
  instance_name = "Production"
}