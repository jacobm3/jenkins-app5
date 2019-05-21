terraform init -no-color

terraform apply -auto-approve -no-color \
-var "AWS_ACCESS_KEY_ID=`vault kv get -field=AWS_ACCESS_KEY_ID kv/jenkins-creds`" \
-var "AWS_SECRET_ACCESS_KEY=`vault kv get -field=AWS_SECRET_ACCESS_KEY kv/jenkins-creds`"


