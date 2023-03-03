variable "region_name" {
  description = "Region for the Instances to launch"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr_block" {
  description = "Provider the CIDR block for EKS VPC"
  type        = string
  default     = "10.10.0.0/16"
}

variable "environment" {
  description = "Provide the Env Name"
  type        = string
  default     = "dev"
}

variable "public_subnets" {
  description = "Provide the CIDR block for Public subnet"
  type        = list(string)
  default     = ["10.10.0.0/24", "10.10.2.0/24"]
}

variable "private_subnets" {
  description = "Provide the CIDR block for Private subnet"
  type        = list(string)
  default     = ["10.10.1.0/24", "10.10.3.0/24"]
}

variable "public_azs" {
  description = "Provide the AZ for public subnets"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}

variable "private_azs" {
  description = "Provide the AZ for private subnets"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}