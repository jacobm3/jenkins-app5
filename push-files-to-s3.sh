cd files 
AWS_ACCESS_KEY_ID=`vault kv get -field=AWS_ACCESS_KEY_ID kv/jenkins-creds` \
AWS_SECRET_ACCESS_KEY=`vault kv get -field=AWS_SECRET_ACCESS_KEY kv/jenkins-creds` \
aws s3 cp --recursive * s3://`terraform output -json | /usr/bin/jq -r .bucket_endpoint.value`
