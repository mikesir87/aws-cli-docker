# AWS CLI Docker Image

## Supported tags and Dockerfiles

- `1.10.57` `latest` ([Dockerfile](https://github.com/mikesir87/aws-cli-docker/blob/1.10.57/Dockerfile))
- `1.10.56` ([Dockerfile](https://github.com/mikesir87/aws-cli-docker/blob/1.10.56/Dockerfile))
- `1.10.55` ([Dockerfile](https://github.com/mikesir87/aws-cli-docker/blob/1.10.55/Dockerfile))
- `1.10.54` ([Dockerfile](https://github.com/mikesir87/aws-cli-docker/blob/1.10.54/Dockerfile))
- `1.10.53` ([Dockerfile](https://github.com/mikesir87/aws-cli-docker/blob/1.10.53/Dockerfile))
- `1.10.52` ([Dockerfile](https://github.com/mikesir87/aws-cli-docker/blob/1.10.52/Dockerfile))
- `1.10.51` ([Dockerfile](https://github.com/mikesir87/aws-cli-docker/blob/1.10.51/Dockerfile))
- `1.10.50` ([Dockerfile](https://github.com/mikesir87/aws-cli-docker/blob/1.10.50/Dockerfile))
- `1.10.49` ([Dockerfile](https://github.com/mikesir87/aws-cli-docker/blob/1.10.49/Dockerfile))


This image provides the AWS CLI and a few other tools, including jq.

I have an IFTT recipe written to notify me of new releases of the AWS CLI, so should be able to keep up-to-date on it.

## Usage

```
docker run --rm -e AWS_ACESS_KEY_ID=my-key-id -e AWS_SECRET_ACCESS_KEY=my-secret-access-key -v $(pwd):/aws mikesir87/aws-cli aws ecs register-task-definition --cli-input-json file://aws/task-definition.json
```

The sample above uses environment variables to set the access and secret keys and invokes the ECS service to register a task definition.


