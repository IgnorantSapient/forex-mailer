#!/bin/sh -l

sh -c "echo The Base Currency is $INPUT_BASE_CURRENCY"
API_RESPONSE=$(curl https://api.exchangeratesapi.io/latest?base=$INPUT_BASE_CURRENCY\&symbols=INR)
#sh -c "curl https://api.exchangeratesapi.io/latest?base=$INPUT_BASE_CURRENCY\&symbols=INR"
sh -c "echo $API_RESPONSE"