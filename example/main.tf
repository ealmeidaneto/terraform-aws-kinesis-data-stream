provider "aws" { 
  region = "eu-central-1"
}

module name {
  source = "../"
  stream_name = "terraform-stream" 
  shard_count = 1 

  tags = {
    tags = {
    "Name": "terraform-kinesis",
    "Created-by": "Terraform",
    "Owner": "Elson"
  }
  }
}
