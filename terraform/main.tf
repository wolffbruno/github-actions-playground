resource "aws_s3_bucket" "distribution_origin_bucket" {
    bucket = "${terraform.workspace}-distribution-origin-bucket"
    
    tags = {
        workspace = terraform.workspace
    }
}