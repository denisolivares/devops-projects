provider "aws" {
  region = "us-west-2"
}

module "ec2_instance" {
  source = "../modules/ec2"

  instance_name      = "jenkins-agent"
  ami_id             = "ami-< id >"
  instance_type      = "t2.small"
  key_name           = "jenquinho"
  subnet_ids         = ["subnet-981546e1", "subnet-95bfc2de", "subnet-07290b5d"]
  instance_count     = 1
}
