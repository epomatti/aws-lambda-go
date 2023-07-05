# AWS Lambda with Go

The `Makefile` and `template.yaml` have been set to avoid `GLIBC` conflicts.

Build it:

```sh
make
```

Run it locally:

```sh
sam local invoke
```

To run it in the cloud, create an S3 bucket and deploy:

```sh
sam deploy --guided
```
