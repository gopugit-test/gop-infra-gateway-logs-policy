# gop-infra-gateway-logs-policy
IAM Policy for Gateway Logs<br>
Keep global configurations in the default folder and symlink them to the environments.<br>
Symlink command:<br>
ln -s ../default/* .
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| environment | Environment being deployed | string | n/a | yes |
| function | Name of the function | string | n/a | yes |
| infrastructure\_version | Used in tags to track infrastructure versions | string | n/a | yes |
| owner | Name of who owns the project | string | n/a | yes |
| service | Name of the service | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | ARN of Gateway Logs Policy |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->