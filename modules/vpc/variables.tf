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
    "10.0.3.0/24"
  ]
}

variable "public_subnets" {
  description = "List of public subnets."

  type = list(string)
  default = [
    "10.0.101.0/24",
    "10.0.102.0/24",
    "10.0.103.0/24"
  ]
}

variable "availability_zone_identifiers" {
  description = <<-EOS
    List of availability zone letter identfiers.
    Current region is automatically prepended for VPC.
  EOS

  type    = list(string)
  default = ["a", "b", "c"]
}

variable "single_nat_gateway" {
  description = "Use only single NAT gateway to reduce costs."
  type        = bool
  default     = true
}

