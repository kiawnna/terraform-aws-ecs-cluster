# terraform-aws-ecs-cluster

## Instantiation
The simplest instantiation requires only an environment, capacity_provider_names (a list of capacity provider names), and default_capacity_provider.
The default_capacity_provider can be the same as the capacity provider in the list capacity_provider_names.

```
module "ecs_cluster" {
  source = "git@github.com:kiawnna/terraform-aws-ecs-cluster.git"
  capacity_provider_names = ["capacity provider name"]
  default_capacity_provider_name = "capacity provider name"
  environment = "dev"
}
```
> This example will create an ECS cluster that accepts all the provided defaults. Review defaults below under Variables / Customizations.

## Resources Created
* An ECS cluster.

## Outputs
The ECS cluster id is an output.

Reference it as:

> module.ecs_cluster_module_name.cluster_id

## Variables / Customization
The variable below can be customized to fit your needs. The current defaults are:
>  * `capacity_provider_weight` &rarr; 1

See the `variables.tf` file for further information.

## Tags
Tags are automatically added to all resources where possible. Tags will have the following format:

```
tags = {
    Name = "shared-${var.environment}-ecs-cluster"
    Deployment_Method = "terraform"
    Environment = var.environment
}
```

