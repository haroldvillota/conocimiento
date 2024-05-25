# AWS setup environment

## show identity

aws sts get-caller-identity

## Config

Config files:

.aws/config
.aws/credentials

```bash
aws configure
aws configure --profile MYPROFILENAME
```

Change default profile:

```bash
export AWS_PROFILE=MYPROFILENAME
```
