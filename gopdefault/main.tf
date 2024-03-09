locals {
  tags = {
    service                = var.service
    function               = var.function
    environment            = var.environment
    owner                  = var.owner
    infrastructure_version = var.infrastructure_version
  }
  bucket_arn = "arn:aws:s3:::ax-gateway-${var.environment}-us-west-2-${var.function}"
}

resource "aws_iam_policy" "s3" {
  name        = "${var.service}-${var.environment}-${var.function}-policy"
  path        = "/"
  description = "Gateway Logs Access Policy"
  policy      = data.aws_iam_policy_document.s3.json
}

data "aws_iam_policy_document" "s3" {
  statement {
    sid       = "ListAllBucketsReadOnly"
    effect    = "Allow"
    resources = ["*"]
    actions   = ["s3:List*"]
  }
  statement {
    sid       = "ListObjectsInBucket"
    effect    = "Allow"
    resources = [local.bucket_arn]
    actions   = ["s3:ListBucket"]
  }
  statement {
    sid       = "ReadAccessToObjects"
    effect    = "Allow"
    resources = ["${local.bucket_arn}/*"]
    actions   = ["s3:Get*", "s3:List*"]
  }
}