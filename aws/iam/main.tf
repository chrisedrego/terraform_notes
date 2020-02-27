provider "aws" {}

resource "aws_iam_user" "hollow_user" {
    name        = "${var.iam_user_name}"
    path        = "${var.path}"
    tags        = {
        name            = "${var.iam_user_name}"
        description     = "${var.description}"
    }
}

resource "aws_iam_access_key" "hollow_user_key" {
    user        = "${aws_iam_user.hollow_user.name}"
}


resource "aws_iam_user_policy" "AmazonEC2ReadOnlyAccess" {
     name       = "AmazonEC2ReadOnlyAccess"
     user       = "${aws_iam_user.hollow_user.name}"

    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "ec2:Describe*",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "elasticloadbalancing:Describe*",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "cloudwatch:ListMetrics",
                "cloudwatch:GetMetricStatistics",
                "cloudwatch:Describe*"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "autoscaling:Describe*",
            "Resource": "*"
        }
    ]
}
EOF
}


resource "aws_iam_user_policy" "AmazonS3HollowDevAccess" {
     name       = "AmazonS3HollowDevAccess"
     user       = "${aws_iam_user.hollow_user.name}"

    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "s3:*",
            "Resource": [
                "arn:aws:s3:::deepintent-hollow",
                "arn:aws:s3:::deepintent-hollow/*"
            ]
        }
    ]
}
EOF
}
