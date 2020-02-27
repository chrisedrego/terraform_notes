provider "aws" {

}

resource "aws_s3_bucket" "aws_bucket" {
    bucket = "${var.bucket_name}"
    acl    = "${var.acl}"
    
    force_destroy = "${var.force_destroy}"
    versioning {
        enabled = "${var.versioning}"
    }
    acceleration_status  = "${var.accceleration_mode}"
    region = "${var.region}"

    tags = {
        Name = "${var.bucket_name}"
        Description = "${var.description}"
    }

    lifecycle_rule {
        enabled = "${var.lifecycle_rule}"
        transition {
            days = 30
            storage_class = "STANDARD_IA"
        }
        transition {
            days = 60
            storage_class = "GLACIER"
        }
    }
}
