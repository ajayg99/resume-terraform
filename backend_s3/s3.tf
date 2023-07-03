resource "aws_s3_bucket" "tfresume" {
    bucket = "s3-ajay-terrform-locking"
}

resource "aws_s3_bucket_ownership_controls" "tfs3aclowner" {
  bucket = aws_s3_bucket.tfresume.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
resource "aws_s3_bucket_acl" "tfresumeACL" {
  bucket = aws_s3_bucket.tfresume.id
  acl    = "private"
}
