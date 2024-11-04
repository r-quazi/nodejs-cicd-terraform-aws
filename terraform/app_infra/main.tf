# app_infra/main.tf

data "terraform_remote_state" "base_infra" {
  backend = "local"
  config = {
    path = "../base_infra/terraform.tfstate"
  }
}

locals {
  vpc_id = data.terraform_remote_state.base_infra.outputs.default_vpc_id
  subnet_a_id = data.terraform_remote_state.base_infra.outputs.default_subnet_a_id
  subnet_b_id = data.terraform_remote_state.base_infra.outputs.default_subnet_b_id
  ecr_repository_uri = data.terraform_remote_state.base_infra.outputs.ecr_repository_uri  # Added this line

}