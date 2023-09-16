#!/bin/bash

cluster=$1


password=$(aws ecr get-login-password --region us-west-2)
token=$(echo "AWS:$password" | base64 --wrap=0)
auth_file="{
  \"auths\": {
    \"$cluster\": {
      \"auth\": \"$token\"
    }
  }
}"
auth_file_encoded=$(echo $auth_file | base64 --wrap=0)
echo $auth_file_encoded
