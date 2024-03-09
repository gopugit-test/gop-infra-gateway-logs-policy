output "arn" {
  description = "ARN of Gateway Logs Policy"
  value       = aws_iam_policy.s3.arn
}