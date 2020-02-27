variable "create_bucket" {
    description = "Defines boolean expression to define wether the bucket should be created"
    default     = true
}

variable "description" {
    description = "S3 Bucket is to store data"
    default     = true
}

variable "bucket_name" {
    description = "Defines the name of the S3 Bucket"
    default = "chrisedego-s3-bucket"
}

variable "acl" {
  default   =   "private"
}


variable "region" {
  default   =   "us-east-1"
}

variable "force_destroy" {
  description = "indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable."
  default     = false
}

variable "versioning" {
    default = true
}

variable "accceleration_mode" {
    default = "Suspended"
    description = "data is routed to Amazon S3 over an optimized network path, but additional cost is charged"
}

variable "lifecycle_rule" {
    default = false
}
