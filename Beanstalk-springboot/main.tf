resource "aws_s3_bucket" "s3_bucket_myapp" {
    bucket = "myapp-prod"
    acl ="private"
}

resource "aws_s3_bucket_object" "s3_bucket_object_myapp" {
    bucket =aws_s3_bucket.s3_bucket_myapp.id
    key ="beanstalk/myapp"
    source = "target/myapp-1.0.0.jar"
}