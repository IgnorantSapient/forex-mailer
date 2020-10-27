#!/bin/sh -l

#Executing with sh -c helps in catching errors inside Github Actions,
#If one runs commnds without it, errors arent spit out.
#sh -c "echo The Base Currency is $INPUT_BASE_CURRENCY"
# sh -c "apt-get update"
# sh -c "apt-get install -y jq"
# sh -c "apt-get install -y curl"

# sh -c "apk add curl"
# sh -c "apk add jq" 
# sh -c "curl https://api.exchangeratesapi.io/latest?base=$INPUT_BASE_CURRENCY > resp.json"
# sh -c "cat resp.json | jq '.rates.INR' > fxRate.json"
# sh -c "cat fxRate.json"
# sh -c 'FX_RATE=`cat fxRate.json`;echo 1 CAD = $FX_RATE INR'

#apk add curl
#apk add jq
#sh -c "apt-get update"
#sh -c "apt-get install -y jq"
#sh -c "apt-get install -y curl"

# curl https://api.exchangeratesapi.io/latest?base=$INPUT_BASE_CURRENCY
# sh -c "curl https://api.exchangeratesapi.io/latest?base=$INPUT_BASE_CURRENCY > resp.json"
# cat resp.json | jq '.rates.INR' > fxRate.json
# cat fxRate.json
# FX_RATE=`cat fxRate.json`;echo 1 CAD = $FX_RATE INR
# if [ $? -eq 0 ]; then
#    echo OK
# else
#    echo FAIL
#    exit 1;
# fi

#!/bin/sh -l
apt-get update
apt-get install -y jq
apt-get install -y curl
echo The Base Currency is $INPUT_BASE_CURRENCY
API_RESPONSE=$(curl https://api.exchangeratesapi.io/latest?base=$INPUT_BASE_CURRENCY\&symbols=INR)

echo $API_RESPONSE
#curl https://api.exchangeratesapi.io/latest?base=$INPUT_BASE_CURRENCY&symbols=INR
#sh -c "echo $API_RESPONSE"