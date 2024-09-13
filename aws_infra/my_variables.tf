variable "my-env" {
  type        = string
  description = "This is the environment for infra"
}

variable "ami_id" {
  type        = string
  description = "This is the ami_id of the instance"
}

variable "instance_type" {
  type        = string
  description = "This is the type of the instance"
}


variable "table_name" {
  type        = string
  description = "This is the name of the table"
}

variable "instance_count" {
  type        = number
  description = "Instance count for the aws"
  default     = 1
}
variable "instance_name" {
  type        = string
  description = "Name of the instance"
  default     = "terra-instance"
}
