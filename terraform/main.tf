resource "aws_s3_bucket" "distribution_origin_bucket" {
    bucket = "${terraform.workspace}-assets-pack"
    
    tags = {
        workspace = terraform.workspace
    }
}