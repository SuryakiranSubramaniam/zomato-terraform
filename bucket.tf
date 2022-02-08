resource "aws_s3_bucket" "state-bucket" {
    
  bucket = "surya-terraform-state-file"
  acl    = "private"
  
  versioning {
     enabled = true
  
  }
    
  tags = {
    Name = "surya-terraform-state-file"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
