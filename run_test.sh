#!/bin/bash
opa eval 'data' --bundle bundle.tar.gz -i $1 | jq '.result[].expressions[].value.cars.authz.allow'