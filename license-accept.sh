#!/bin/bash

current_timestamp=$(date +%s)

json_data='{
    "Settings": {
        "LicenseAccepted": "604ec27f828456331ebf441826292c49276bd3c1bee1a2f65a6452f505c4061c",
        "GDPRTimeStamp": '"$current_timestamp"'
    }
}'

echo "$json_data"