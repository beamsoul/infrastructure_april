terraform  {
    backend "s3" {
        bucket = "infrastructure-himss-2020"
        region = "us-east-1"
        key = "infra.state"
    }
}   