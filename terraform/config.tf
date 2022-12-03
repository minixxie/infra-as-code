provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"
  s3_use_path_style           = false
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    # needs host entry of localstack.local in /etc/hosts
    apigateway     = "https://localstack.local:4566"
    apigatewayv2   = "https://localstack.local:4566"
    cloudformation = "https://localstack.local:4566"
    cloudwatch     = "https://localstack.local:4566"
    dynamodb       = "https://localstack.local:4566"
    ec2            = "https://localstack.local:4566"
    es             = "https://localstack.local:4566"
    elasticache    = "https://localstack.local:4566"
    firehose       = "https://localstack.local:4566"
    iam            = "https://localstack.local:4566"
    kinesis        = "https://localstack.local:4566"
    lambda         = "https://localstack.local:4566"
    rds            = "https://localstack.local:4566"
    redshift       = "https://localstack.local:4566"
    route53        = "https://localstack.local:4566"
    s3             = "https://localstack.local:4566"
    secretsmanager = "https://localstack.local:4566"
    ses            = "https://localstack.local:4566"
    sns            = "https://localstack.local:4566"
    sqs            = "https://localstack.local:4566"
    ssm            = "https://localstack.local:4566"
    stepfunctions  = "https://localstack.local:4566"
    sts            = "https://localstack.local:4566"
  }
}
