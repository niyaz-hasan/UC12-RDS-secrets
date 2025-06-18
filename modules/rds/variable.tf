variable "private_subnets" {
  type = list(string)
}

variable "name" {
  type = string
}

variable "rds_security_group_aurora_id" {
  type = list(string)
}

variable "db_username" {
  type = string
}

variable "db_name" {
}