terraform  {
    
    backend "s3"{
        bucket = "infrastructure-april-janna"
        region = "us-east-2"
        key = "infra.state"
    }
}   