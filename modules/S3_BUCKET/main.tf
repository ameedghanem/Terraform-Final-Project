# create an S3 bucket
resource "aws_s3_bucket" "b" {
  bucket = "fursa-bucket-xyzw"
  acl    = var.access_ctrl_list
}

# create IAM policy
resource "aws_iam_policy" "policy" {
  name        = "bucket-user-policy"
  description = "My IAM policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
            "Sid": "IPALLOW",
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:ListBucket"
            ],
            "Resource": [
                aws_s3_bucket.b.arn,
                "${aws_s3_bucket.b.arn}/*"
            ]
      },
    ]
  })
}
