module "vpc" {
  source = "../../modules/vpc"

  name = "development-vpc"
  cidr = "10.180.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.180.1.0/24", "10.180.2.0/24"]
  public_subnets  = ["10.180.101.0/24", "10.180.102.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true
  one_nat_gateway_per_az = false  

  tags = {
    Terraform = "true"
    Environment = "development"
  }
}