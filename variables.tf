variable "allowed_cidr" {
  type = "list"

  default = [
    "0.0.0.0/0",
  ]

  description = "A list of CIDR Networks to allow ssh access to."
}

variable "allowed_ipv6_cidr" {
  type = "list"

  default = [
    "::/0",
  ]

  description = "A list of IPv6 CIDR Networks to allow ssh access to."
}

variable "allowed_security_groups" {
  type        = "list"
  default     = []
  description = "A list of Security Group ID's to allow access to."
}

variable "name" {
  default = "bastion"
}

variable "ami" {}

variable "instance_type" {
  default = "t2.micro"
}

variable "iam_instance_profile" {}

variable "user_data_file" {
  default = "user_data.sh"
}

variable "s3_bucket_name" {}

variable "s3_bucket_uri" {
  default = ""
}

variable "ssh_user" {
  default = "ubuntu"
}

variable "enable_hourly_cron_updates" {
  default = "false"
}

variable "keys_update_frequency" {
  default = ""
}

variable "additional_user_data_script" {
  default = ""
}

variable "additional_security_group_ids" {
  type        = "list"
  default     = []
}

variable "region" {
  default = "eu-west-1"
}

variable "vpc_id" {}

variable "subnet_id" {
  default = ""
}
