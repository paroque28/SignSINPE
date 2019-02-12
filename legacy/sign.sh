#!/bin/bash
# echo "Uso: sh sign.sh resumen.pdf, Nota: usar con certificado a la par"
in_file="$1"  # name of file to be hashed and time-stamped
out_file="${in_file}.tsr"  # name of file to save the time-stamp response
ts_server='http://tsa.sinpe.fi.cr/tsaHttp/'  # URL of time-stamp server

# Use openssl to create the time-stamp request, then use curl to submit the request and save the response.
openssl ts -query -data "$in_file" -sha1 -cert |
curl -o "$out_file" -sSH 'Content-Type: application/timestamp-query' --data-binary @- "$ts_server"

# Verify the response.
openssl ts -verify -data "$in_file" -in "$out_file" -CAfile "CA.pem"

# Print the response in human-readable format for more info.
openssl ts -reply -in "$out_file" -text
