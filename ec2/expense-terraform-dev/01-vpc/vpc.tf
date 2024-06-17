module "vpc" {
    source = "../../terraform-aws-vpc"
    #source = "https://github.com/MANISHANU/terraform/tree/47e970301c7a1075a4182b4d5a4117f351d22d03/ec2/terraform-aws-vpc"
    project_name = var.project_name
    common_tags = var.common_tags
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    is_peering_required = var.is_peering_required
}