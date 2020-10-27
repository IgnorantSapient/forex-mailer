#!/bin/sh -l
apt-get update
apt-get install -y jq
apt-get install -y curl
echo The Base Currency is $INPUT_BASE_CURRENCY
API_RESPONSE=$(curl https://api.exchangeratesapi.io/latest?base=$INPUT_BASE_CURRENCY\&symbols=INR)
FX_RATE=$(echo $API_RESPONSE | jq '.rates.INR')
echo 1 $INPUT_BASE_CURRENCY = $FX_RATE INR