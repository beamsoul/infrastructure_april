Name               = "Wordpress"
Env                = "Dev"
Created_by         = "Janna"
Dept               = "IT"
ami                = "ami-0d8f6eb4f641ef691"
instance_type      = "t2.micro"
key_name           = "winkey-terraf"
region             = "us-east-2"  
appname                     = "wordpress"
min_app_size                = 6
max_app_size                = 128
desired_app_capacity        = 6


min_db_size                = 6
max_db_size                = 128
desired_db_capacity        = 6