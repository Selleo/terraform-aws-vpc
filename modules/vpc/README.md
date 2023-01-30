## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_info"></a> [info](#module\_info) | Selleo/context/null | 0.3.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone_identifiers"></a> [availability\_zone\_identifiers](#input\_availability\_zone\_identifiers) | List of availability zone letter identfiers.<br>Current region is automatically prepended for AZ ID. | `list(string)` | <pre>[<br>  "a",<br>  "b",<br>  "c"<br>]</pre> | no |
| <a name="input_cidr"></a> [cidr](#input\_cidr) | CIDR block for VPC. | `string` | `"10.0.0.0/16"` | no |
| <a name="input_context"></a> [context](#input\_context) | Project context. | <pre>object({<br>    namespace = string<br>    stage     = string<br>    name      = string<br>  })</pre> | n/a | yes |
| <a name="input_database_subnets"></a> [database\_subnets](#input\_database\_subnets) | List of database subnets. | `list(string)` | `[]` | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | List of private subnets. | `list(string)` | <pre>[<br>  "10.0.1.0/24",<br>  "10.0.2.0/24",<br>  "10.0.3.0/24"<br>]</pre> | no |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | List of public subnets. | `list(string)` | <pre>[<br>  "10.0.101.0/24",<br>  "10.0.102.0/24",<br>  "10.0.103.0/24"<br>]</pre> | no |
| <a name="input_single_nat_gateway"></a> [single\_nat\_gateway](#input\_single\_nat\_gateway) | Use only single NAT gateway to reduce costs. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azs"></a> [azs](#output\_azs) | List of Availability Zones. |
| <a name="output_cidr_block"></a> [cidr\_block](#output\_cidr\_block) | The CIDR block of the VPC. |
| <a name="output_database_subnets"></a> [database\_subnets](#output\_database\_subnets) | List of database subnet IDs. |
| <a name="output_id"></a> [id](#output\_id) | VPC ID. |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | List of private subnet IDs. |
| <a name="output_private_subnets_cidr_blocks"></a> [private\_subnets\_cidr\_blocks](#output\_private\_subnets\_cidr\_blocks) | List of cidr\_blocks of private subnets. |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | List of public subnet IDs. |
| <a name="output_public_subnets_cidr_blocks"></a> [public\_subnets\_cidr\_blocks](#output\_public\_subnets\_cidr\_blocks) | List of cidr\_blocks of public subnets. |
