export AWS_PROFILE=jenkins
aws cloudformation delete-stack \
  --stack-name $1