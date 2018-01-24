### psql-client
PostgreSQL client with AWS CLI - Based on alpine image.

### Build the image

```
# Make sure you have login docker account
$ docker login -u newsnowio

# Build and push the image (Currently tag is 1.0)
$ ./build.sh
```

### Available variables.

- aws_config_storage - aws s3 path to download the sql script if required. 
- pghost - database fqdn
- pgdatabase - database name
- pguser - database master username
- pgpassword - database password

### Use case.

With this image, I can 

1) download the sql script from s3 bucket via environment variable `aws_config_storage`
2) I can run psql client easily

