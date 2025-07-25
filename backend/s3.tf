resource "aws_s3_bucket" "this" {

  bucket = var.remote_backend.bucket
  tags = var.tags

}

resource "aws_s3_bucket_versioning" "this" {
  
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = "Enabled"
  }
}