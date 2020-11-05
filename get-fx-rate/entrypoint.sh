#!/bin/sh -l
apk add jq
apk add curl
echo The Base Currency is $INPUT_BASE_CURRENCY
echo The Target Currency is $INPUT_TARGET_CURRENCY

API_RESPONSE=$(curl https://api.exchangeratesapi.io/latest?base=$INPUT_BASE_CURRENCY\&symbols=$INPUT_TARGET_CURRENCY)
FX_RATE=$(echo $API_RESPONSE | jq '.rates.INR')
echo 1 $INPUT_BASE_CURRENCY = $FX_RATE $INPUT_TARGET_CURRENCY