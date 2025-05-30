variable "context" {
  description = "Project context."

  type = object({
    namespace = string
    stage     = string
    name      = string
  })
}

# optional

variable "cidr" {
  description = "CIDR block for VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnets" {
  description = "List of private subnets."

  type = list(string)
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
  ]
}

variable "public_subnets" {
  description = "List of public subnets."

  type = list(string)
  default = [
    "10.0.101.0/24",
    "10.0.102.0/24",
  ]
}

variable "database_subnets" {
  description = "List of database subnets."

  type    = list(string)
  default = []
}

variable "availability_zone_identifiers" {
  description = <<-EOS
    List of availability zone letter identfiers.
    Current region is automatically prepended for AZ ID.
  EOS

  type    = list(string)
  default = ["a", "b"]
}

variable "single_nat_gateway" {
  description = "Use only single NAT gateway to reduce costs."
  type        = bool
  default     = false
}

variable "enable_nat_gateway" {
  description = "Enable NAT gateway."
  type        = bool
  default     = false
}