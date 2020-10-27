#!/bin/sh -l
apk add jq
apk add curl
echo The Base Currency is $INPUT_BASE_CURRENCY
API_RESPONSE=$(curl https://api.exchangeratesapi.io/latest?base=$INPUT_BASE_CURRENCY\&symbols=INR)
FX_RATE=$(echo $API_RESPONSE | jq '.rates.INR')
echo 1 $INPUT_BASE_CURRENCY = $FX_RATE INR