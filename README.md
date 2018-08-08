# AWS CLI Docker Image

![Docker Stars](https://img.shields.io/docker/stars/mikesir87/aws-cli.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/mikesir87/aws-cli.svg)
![Docker Automated Builds](http://img.shields.io/docker/automated/mikesir87/aws-cli.svg)

## Supported tags and Dockerfiles

- [1.15.74/latest](https://github.com/mikesir87/aws-cli-docker/blob/1.15.74/Dockerfile)
- [1.14.69/latest](https://github.com/mikesir87/aws-cli-docker/blob/1.14.69/Dockerfile)
- [1.12.1](https://github.com/mikesir87/aws-cli-docker/blob/1.12.1/Dockerfile)
- [1.11.190](https://github.com/mikesir87/aws-cli-docker/blob/1.11.190/Dockerfile) 
- [1.10.65](https://github.com/mikesir87/aws-cli-docker/blob/1.10.65/Dockerfile)

This image provides the AWS CLI and a few other tools, including jq.

I have an IFTT recipe written to notify me of new releases of the AWS CLI, so should be able to keep up-to-date on it.

## Providing Credentials

Credentials can be provided in any of the aws-cli supported formats.

### Using credentials file

If you need to create the credentials file, you can use the aws-cli configure command by using the following command:

```
docker run --rm -v $HOME/.aws:/root/.aws mikesir87/aws-cli aws configure
```

From that point on, simply mount the directory containing your config.

```
docker run --rm -v $HOME/.aws:/root/.aws mikesir87/aws-cli aws s3 ls
```

### Using environment variables

This is supported, although NOT encouraged, as the environment variables can end up in command-line history, available for container inspection, etc.

- AWS_ACCESS_KEY_ID` - specify the access key ID
- AWS_SECRET_ACCESS_KEY` - the secret access key

```
docker run --rm -e AWS_ACCESS_KEY_ID=my-key-id -e AWS_SECRET_ACCESS_KEY=my-secret-access-key -v $(pwd):/aws mikesir87/aws-cli aws s3 ls 
```

## Using the container as a CLI command

You can setup an alias for `aws` to simply start a container, hiding the fact that it's not actually installed on the machine. Then, updating the version simply becomes a `docker pull mikesir87/aws-cli`.

```
alias aws='docker run --rm -tiv $HOME/.aws:/root/.aws -v $(pwd):/aws mikesir87/aws-cli aws'
```

