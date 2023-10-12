resource "aws_s3_bucket" "mybucket" {
    bucket = "sathish-class-bucket"
    tags = {
        Name        = "My bucket"
        Environment = "Dev"
    }
}

resource "aws_s3_bucket" "mybucket2" {
    bucket = "sathish-class-bucket2"
    tags = {
        Name        = "My bucket2"
        Environment = "Dev"
    }
}

resource "aws_s3_bucket_object" "first_object" {
    bucket = aws_s3_bucket.mybucket2.id
    key = "simple-object.txt"
    source = ".\\simple-object.txt"
}